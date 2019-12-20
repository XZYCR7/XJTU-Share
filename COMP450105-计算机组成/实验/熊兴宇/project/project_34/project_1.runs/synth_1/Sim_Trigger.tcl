# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z030sbg485-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/PC/Desktop/组成实验/project_3/project_1.cache/wt [current_project]
set_property parent.project_path C:/Users/PC/Desktop/组成实验/project_3/project_1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:picozed_7030_fmc2:part0:1.1 [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/PC/Desktop/组成实验/project_3/project_1.srcs/sources_1/new/Trigger.v
  C:/Users/PC/Desktop/组成实验/project_3/project_1.srcs/sources_1/new/Sim_Trigger.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top Sim_Trigger -part xc7z030sbg485-1


write_checkpoint -force -noxdef Sim_Trigger.dcp

catch { report_utilization -file Sim_Trigger_utilization_synth.rpt -pb Sim_Trigger_utilization_synth.pb }
