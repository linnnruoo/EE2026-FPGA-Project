# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {C:/Users/Lynn Mkka/Desktop/7_APR_2259/7_APR_2336/7_APR_2336.cache/wt} [current_project]
set_property parent.project_path {C:/Users/Lynn Mkka/Desktop/7_APR_2259/7_APR_2336/7_APR_2336.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib {
  {C:/Users/Lynn Mkka/Desktop/7_APR_2259/7_APR_2336/7_APR_2336.srcs/sources_1/imports/new/note_gen.v}
  {C:/Users/Lynn Mkka/Desktop/7_APR_2259/7_APR_2336/7_APR_2336.srcs/sources_1/new/get_clock_2Hz.v}
  {C:/Users/Lynn Mkka/Desktop/7_APR_2259/7_APR_2336/7_APR_2336.srcs/sources_1/new/gen_delay3.v}
  {C:/Users/Lynn Mkka/Desktop/7_APR_2259/7_APR_2336/7_APR_2336.srcs/sources_1/new/gen_delay2.v}
  {C:/Users/Lynn Mkka/Desktop/7_APR_2259/7_APR_2336/7_APR_2336.srcs/sources_1/new/vga_sync.v}
  {C:/Users/Lynn Mkka/Desktop/7_APR_2259/7_APR_2336/7_APR_2336.srcs/sources_1/imports/new/music_instrument.v}
  {C:/Users/Lynn Mkka/Desktop/7_APR_2259/7_APR_2336/7_APR_2336.srcs/sources_1/new/vga_pong.v}
  {C:/Users/Lynn Mkka/Desktop/7_APR_2259/7_APR_2336/7_APR_2336.srcs/sources_1/imports/new/SSD.v}
  {C:/Users/Lynn Mkka/Desktop/7_APR_2259/7_APR_2336/7_APR_2336.srcs/sources_1/new/A_delay.v}
  {C:/Users/Lynn Mkka/Desktop/7_APR_2259/7_APR_2336/7_APR_2336.srcs/sources_1/new/SPI.v}
  {C:/Users/Lynn Mkka/Desktop/7_APR_2259/7_APR_2336/7_APR_2336.srcs/sources_1/new/get_clock_50M.v}
  {C:/Users/Lynn Mkka/Desktop/7_APR_2259/7_APR_2336/7_APR_2336.srcs/sources_1/new/get_clock_20k.v}
  {C:/Users/Lynn Mkka/Desktop/7_APR_2259/7_APR_2336/7_APR_2336.srcs/sources_1/new/AUDIO_FX_TOP.v}
}
read_vhdl -library xil_defaultlib {{C:/Users/Lynn Mkka/Desktop/7_APR_2259/7_APR_2336/7_APR_2336.srcs/sources_1/imports/audio_effects.srcs/DA2CompRef.vhd}}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc {{C:/Users/Lynn Mkka/Desktop/7_APR_2259/7_APR_2336/7_APR_2336.srcs/constrs_1/imports/Learn/Basys3_Master.xdc}}
set_property used_in_implementation false [get_files {{C:/Users/Lynn Mkka/Desktop/7_APR_2259/7_APR_2336/7_APR_2336.srcs/constrs_1/imports/Learn/Basys3_Master.xdc}}]


synth_design -top AUDIO_FX_TOP -part xc7a35tcpg236-1


write_checkpoint -force -noxdef AUDIO_FX_TOP.dcp

catch { report_utilization -file AUDIO_FX_TOP_utilization_synth.rpt -pb AUDIO_FX_TOP_utilization_synth.pb }
