# Run with Vivado HLS 2019.2:
#   vivado_hls -f build/rebuild_hls.tcl
# Optional original-source export only, as requested by the user.
# The 12 archived HLS sources are byte-identical to original/hls.
# The existing working bitstream is not updated or replaced by this script.

set port_root [file normalize [file join [file dirname [info script]] ..]]
set hls_root [file join $port_root src hls]
set output_root [file join $port_root build hls]
file mkdir $output_root
set part xc7z020clg484-2
if {[info exists ::env(FPGA_PART)]} { set part $::env(FPGA_PART) }
set period 5.0
if {[info exists ::env(HLS_CLOCK_NS)]} { set period $::env(HLS_CLOCK_NS) }

foreach top {conv pwdwconv fc shortcut} {
    if {$top eq "fc"} { set module avgpool_fc } else { set module $top }
    open_project -reset [file join $output_root $top]
    set_top $top
    switch $top {
        conv { set sources {conv.cpp} }
        pwdwconv { set sources {pwdwconv.cpp pwconv.cpp dwconv.cpp} }
        fc { set sources {fc.cpp} }
        shortcut { set sources {shortcut.cpp} }
    }
    foreach source $sources {
        add_files [file join $hls_root $module $source] -cflags "-I[file join $hls_root $module]"
    }
    open_solution -reset solution1
    set_part $part
    create_clock -period $period -name default
    csynth_design
    export_design -format ip_catalog -rtl verilog -vendor xilinx.com -library hls -version 0.0
    close_project
}
puts "Original HLS sources exported as version 0.0. Existing working bit/hwh remain unchanged."
exit
