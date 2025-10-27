onerror {exit -code 1}
vlib work
vcom -work work ergasia2h.vho
vcom -work work Waveform_AND_OR.vwf.vht
vsim -novopt -c -t 1ps -L maxv -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.proto2h_vhd_vec_tst
vcd file -direction ergasia2h.msim.vcd
vcd add -internal proto2h_vhd_vec_tst/*
vcd add -internal proto2h_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
