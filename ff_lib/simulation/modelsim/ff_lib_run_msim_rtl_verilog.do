transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Erdem/Desktop/all-projects-ws/verilog-quartus-tutorials/ff_lib {C:/Users/Erdem/Desktop/all-projects-ws/verilog-quartus-tutorials/ff_lib/ff_lib.v}

