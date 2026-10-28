param(
    [string]$Installer = 'D:\software\FPGAs_AdaptiveSoCs_Unified_SDI_2025.2_1114_2157_Win64.exe',
    [string]$Client = 'D:\software\amd_2025_2_installer',
    [string]$InstallRoot = 'D:\software\AMDDesignTools'
)

# Read-only system checks. Does not launch an installer, prompt for elevation,
# inspect authentication tokens, or accept license agreements.
$ErrorActionPreference = 'Stop'
$identity = [Security.Principal.WindowsIdentity]::GetCurrent()
$principal = [Security.Principal.WindowsPrincipal]::new($identity)
$isAdmin = $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
$signature = Get-AuthenticodeSignature -LiteralPath $Installer
$file = Get-Item -LiteralPath $Installer
$vivado = Join-Path $InstallRoot '2025.2\Vivado\bin\vivado.bat'
$record = [ordered]@{
    installer = $file.FullName
    installer_bytes = $file.Length
    installer_sha256 = (Get-FileHash -LiteralPath $Installer -Algorithm SHA256).Hash.ToLowerInvariant()
    authenticode = $signature.Status.ToString()
    signer = $signature.SignerCertificate.Subject
    client_extracted = (Test-Path -LiteralPath (Join-Path $Client 'bin\xsetup.bat'))
    client = $Client
    install_root = $InstallRoot
    current_process_is_admin = $isAdmin
    vivado_2025_2_present = (Test-Path -LiteralPath $vivado)
    disk_free_bytes = @{}
    installer_authentication = 'not inspected; browser login does not establish client-token state'
    license_acceptance = 'not performed by this check'
    foreground_actions = 'none'
}
foreach ($letter in @('D','E')) {
    $drive = Get-PSDrive -Name $letter
    $record.disk_free_bytes[$letter] = $drive.Free
}
$portRoot = Split-Path (Split-Path $PSScriptRoot -Parent) -Parent
$report = Join-Path $portRoot 'report\installer_readiness.json'
$json = $record | ConvertTo-Json -Depth 4
[IO.File]::WriteAllText($report, $json + [Environment]::NewLine, [Text.UTF8Encoding]::new($false))
$json
