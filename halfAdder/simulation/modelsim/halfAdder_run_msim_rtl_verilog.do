transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Erdem/Desktop/all-projects-ws/verilog-quartus-tutorials/halfAdder {C:/Users/Erdem/Desktop/all-projects-ws/verilog-quartus-tutorials/halfAdder/halfAdder.v}

