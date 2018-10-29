set projDir "G:/Github/Mojo/1DALU-master/work/planAhead"
set projName "alu16bit"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "G:/Github/Mojo/1DALU-master/work/verilog/mojo_top_0.v" "G:/Github/Mojo/1DALU-master/work/verilog/reset_conditioner_1.v" "G:/Github/Mojo/1DALU-master/work/verilog/multi_seven_se_2.v" "G:/Github/Mojo/1DALU-master/work/verilog/alu16_3.v" "G:/Github/Mojo/1DALU-master/work/verilog/storeab_4.v" "G:/Github/Mojo/1DALU-master/work/verilog/tester16_5.v" "G:/Github/Mojo/1DALU-master/work/verilog/counter_6.v" "G:/Github/Mojo/1DALU-master/work/verilog/seven_seg_7.v" "G:/Github/Mojo/1DALU-master/work/verilog/decoder_8.v" "G:/Github/Mojo/1DALU-master/work/verilog/adder16_9.v" "G:/Github/Mojo/1DALU-master/work/verilog/boole16_10.v" "G:/Github/Mojo/1DALU-master/work/verilog/comparator16_11.v" "G:/Github/Mojo/1DALU-master/work/verilog/shift16_12.v" "G:/Github/Mojo/1DALU-master/work/verilog/edge_detector_13.v" "G:/Github/Mojo/1DALU-master/work/verilog/edge_detector_13.v" "G:/Github/Mojo/1DALU-master/work/verilog/button_conditioner_15.v" "G:/Github/Mojo/1DALU-master/work/verilog/button_conditioner_15.v" "G:/Github/Mojo/1DALU-master/work/verilog/edge_detector_13.v" "G:/Github/Mojo/1DALU-master/work/verilog/pipeline_18.v" "G:/Github/Mojo/1DALU-master/work/verilog/pipeline_18.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "G:/Github/Mojo/1DALU-master/constraint/overrideclk.ucf" "C:/Program\ Files/Mojo\ IDE/library/components/io_shield.ucf" "C:/Program\ Files/Mojo\ IDE/library/components/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
