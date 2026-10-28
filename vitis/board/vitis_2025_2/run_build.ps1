param([ValidateSet('platform','app','all')][string]$Stage = 'all')
$ErrorActionPreference = 'Stop'
$vitisExecutable = 'D:\AMD\2025.2\Vitis\bin\vitis.bat'
$buildRoot = $PSScriptRoot
if (-not (Test-Path -LiteralPath $vitisExecutable)) { throw 'Vitis 2025.2 is not installed at the configured path.' }
$steps = if ($Stage -eq 'all') { @('platform','app') } else { @($Stage) }
Push-Location -LiteralPath $buildRoot
try {
    foreach ($step in $steps) {
        $scriptName = if ($step -eq 'platform') { 'create_platform.py' } else { 'build_app.py' }
        $logPath = Join-Path $buildRoot "build_$step.log"
        & $vitisExecutable -s (Join-Path $buildRoot $scriptName) *> $logPath
        $nativeExitCode = $LASTEXITCODE
        $buildLog = Get-Content -LiteralPath $logPath -Raw
        # Vitis 2025.2 on Windows may leave its child Java server alive after
        # dispose(). Only terminate the server identified in this run's log.
        $portMatch = [regex]::Match($buildLog, "Vitis Server started on port '(\d+)'")
        if ($portMatch.Success) {
            $serverPort = [int]$portMatch.Groups[1].Value
            $connection = Get-NetTCPConnection -LocalPort $serverPort -State Listen -ErrorAction SilentlyContinue | Select-Object -First 1
            if ($null -ne $connection) {
                $serverProcess = Get-CimInstance Win32_Process -Filter "ProcessId=$($connection.OwningProcess)"
                if ($serverProcess.CommandLine -like '*D:/AMD/2025.2/Vitis*com.xilinx.rigel.app.RigelApp*') {
                    Stop-Process -Id $serverProcess.ProcessId -ErrorAction Stop
                }
            }
        }
        Get-Content -LiteralPath $logPath -Tail 35
        $marker = if ($step -eq 'platform') { 'PLATFORM_BUILD_COMPLETED' } else { 'APPLICATION_BUILD_COMPLETED' }
        if ($nativeExitCode -ne 0 -or $buildLog -match 'Traceback \(most recent call last\)|\[ERROR\]|build failed\.|FAILED:' -or $buildLog -notmatch $marker) {
            throw "The $step build failed. See $logPath"
        }
    }
} finally { Pop-Location }
