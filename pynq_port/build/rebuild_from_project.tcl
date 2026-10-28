# Run prepare_vivado.py first. Original BD, IP, RTL and XDC stay unchanged.
# Usage: vivado -mode batch -source build/rebuild_from_project.tcl \
#          -tclargs build/work/prepared build/work/vivado_result
# This creates a NEW project from source, not cached runs or DCPs. The prepared
# inputs stay unchanged: all Vivado writes use output_dir/workspace instead.
# 2025.2 mode upgrades ONLY built-in xilinx.com:ip cells; HLS RTL is retained.
if {$argc != 2} { error "Expected prepared input directory and NEW output directory" }
set prepared [file normalize [lindex $argv 0]]
set output_dir [file normalize [lindex $argv 1]]
if {![file isfile [file join $prepared prepare_config.tcl]]} {
    error "Run prepare_vivado.py first; input must be its self-contained output directory"
}
if {[file exists $output_dir]} { error "Use a new output directory to preserve prior results" }
proc path_is_within {candidate parent} {
    set candidate_parts [file split [file normalize $candidate]]
    set parent_parts [file split [file normalize $parent]]
    if {[llength $candidate_parts] < [llength $parent_parts]} { return 0 }
    for {set index 0} {$index < [llength $parent_parts]} {incr index} {
        if {![string equal -nocase [lindex $candidate_parts $index] [lindex $parent_parts $index]]} {
            return 0
        }
    }
    return 1
}
if {[path_is_within $output_dir $prepared] || [path_is_within $prepared $output_dir]} {
    error "Prepared input and output trees must not overlap"
}
foreach entry {inputs ip_repo prepare_config.tcl prepare_manifest.json} {
    if {![file exists [file join $prepared $entry]]} {
        error "Incomplete prepared input: missing $entry"
    }
}
file mkdir $output_dir
set workspace [file join $output_dir workspace]
file mkdir $workspace
foreach entry {inputs ip_repo prepare_config.tcl prepare_manifest.json} {
    file copy [file join $prepared $entry] [file join $workspace $entry]
}
# prepare_config.tcl resolves every path relative to its own info script.
# Source ONLY the copied configuration; upgrade/save/generate must never point
# back into the hash-checked prepared directory.
source [file join $workspace prepare_config.tcl]
foreach input [concat [list $prepare_root $prepare_bd $prepare_rtl] $prepare_xdc $prepare_ip_dirs] {
    if {![path_is_within $input $workspace]} {
        error "Copied configuration references a path outside the build workspace: $input"
    }
}
set actual_version [version -short]
if {![info exists prepare_target_version]} { set prepare_target_version $prepare_source_version }
if {$actual_version ne $prepare_target_version} {
    error "Prepared target is Vivado $prepare_target_version; actual tool is $actual_version. Do not downgrade to 2018.3."
}
create_project leaf_build [file join $output_dir project] -part $prepare_part
set_property target_language Verilog [current_project]
set_property ip_repo_paths $prepare_ip_dirs [current_project]
update_ip_catalog
foreach name {conv fc pwdwconv shortcut} {
    if {![llength [get_ipdefs -all -quiet xilinx.com:hls:${name}:0.0]]} {
        error "Packaged HLS IP not discovered: $name"
    }
}
add_files -norecurse $prepare_rtl
add_files -fileset constrs_1 -norecurse $prepare_xdc
add_files -norecurse $prepare_bd
set bd_file [get_files design_1.bd]
open_bd_design $bd_file
report_ip_status -file [file join $output_dir ip_status_before.rpt]
proc save_ip_snapshot {path} {
    set channel [open $path w]
    puts $channel "cell\tvlnv"
    foreach cell [lsort [get_bd_cells -hierarchical -quiet]] {
        set identity [get_property -quiet VLNV $cell]
        if {$identity ne ""} { puts $channel "$cell\t$identity" }
    }
    close $channel
}
proc save_address_snapshot {path} {
    set channel [open $path w]
    puts $channel "segment\toffset\trange"
    foreach segment [lsort [get_bd_addr_segs -hierarchical -quiet]] {
        puts $channel "$segment\t[get_property -quiet OFFSET $segment]\t[get_property -quiet RANGE $segment]"
    }
    close $channel
}
save_ip_snapshot [file join $output_dir ip_before.tsv]
save_address_snapshot [file join $output_dir address_before.tsv]
if {$prepare_target_version eq "2025.2"} {
    # UG835 2025.2 permits upgrade_ip on bd_cell objects. Do not upgrade HLS
    # cells, do not run HLS synthesis and do not change user algorithm sources.
    set system_cells [get_bd_cells -hierarchical -quiet -filter {VLNV =~ xilinx.com:ip:*}]
    if {[llength $system_cells]} {
        upgrade_ip -log [file join $output_dir system_ip_upgrade.log] $system_cells
    }
}
foreach name {conv fc pwdwconv shortcut} {
    set identity [get_property VLNV [get_bd_cells /${name}_0]]
    if {$identity ne "xilinx.com:hls:${name}:0.0"} {
        error "HLS identity changed unexpectedly: $name -> $identity"
    }
}
validate_bd_design
save_bd_design
save_ip_snapshot [file join $output_dir ip_after.tsv]
save_address_snapshot [file join $output_dir address_after.tsv]
report_ip_status -file [file join $output_dir ip_status_after.rpt]
write_bd_tcl -force [file join $output_dir design_upgraded.tcl]
generate_target all $bd_file
set wrapper [make_wrapper -files $bd_file -top]
add_files -norecurse $wrapper
set_property top design_1_wrapper [current_fileset]
update_compile_order -fileset sources_1
report_ip_status -file [file join $output_dir ip_status.rpt]
launch_runs synth_1 -jobs 4
wait_on_run synth_1
if {![string match "*Complete*" [get_property STATUS [get_runs synth_1]]]} {
    error "Synthesis failed; inspect new project logs"
}
launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1
if {![string match "*Complete*" [get_property STATUS [get_runs impl_1]]]} {
    error "Implementation/bitstream failed; inspect new project logs"
}
open_run impl_1
report_utilization -file [file join $output_dir utilization.rpt]
report_timing_summary -report_unconstrained -file [file join $output_dir timing_summary.rpt]
check_timing -verbose -file [file join $output_dir check_timing.rpt]
report_drc -file [file join $output_dir drc.rpt]
report_methodology -file [file join $output_dir methodology.rpt]
report_cdc -file [file join $output_dir cdc.rpt]
write_hw_platform -fixed -include_bit -force -file [file join $output_dir leaf.xsa]
close_project
puts "Fresh XSA generated. Preserve reports and review timing coverage; bit generation does not prove board operation."
