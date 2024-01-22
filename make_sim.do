vlib work

vlog -sv rca.sv
vlog -sv rca_tb.sv

vsim rca_tb

add log -r /*
add wave -r *
run -all
