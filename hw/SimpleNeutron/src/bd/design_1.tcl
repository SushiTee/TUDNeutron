
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

set bCheckIPsPassed 1
##################################################################
# CHECK IPs
##################################################################
set bCheckIPs 1
if { $bCheckIPs == 1 } {
   set list_check_ips "\ 
xilinx.com:ip:axi_dma:7.1\
xilinx.com:ip:axi_gpio:2.0\
user.org:user:enable_splitter:1.0\
xilinx.com:ip:fifo_generator:13.2\
user.org:user:hold_signal:1.0\
user.org:user:input_selector:1.0\
user.org:user:input_trigger:1.0\
user.org:user:ip_8_to_1_and_7:1.0\
user.org:user:or:1.0\
xilinx.com:ip:processing_system7:5.5\
xilinx.com:ip:proc_sys_reset:5.0\
akr.neutron:user:signal_detector:1.0\
user.org:user:signal_generator:1.0\
user.org:user:signal_input:1.0\
xilinx.com:ip:util_vector_logic:2.0\
xilinx.com:ip:xlconcat:2.1\
"

   set list_ips_missing ""
   common::send_msg_id "BD_TCL-006" "INFO" "Checking if the following IPs exist in the project's IP catalog: $list_check_ips ."

   foreach ip_vlnv $list_check_ips {
      set ip_obj [get_ipdefs -all $ip_vlnv]
      if { $ip_obj eq "" } {
         lappend list_ips_missing $ip_vlnv
      }
   }

   if { $list_ips_missing ne "" } {
      catch {common::send_msg_id "BD_TCL-115" "ERROR" "The following IPs are not found in the IP Catalog:\n  $list_ips_missing\n\nResolution: Please add the repository containing the IP(s) to the project." }
      set bCheckIPsPassed 0
   }

}

if { $bCheckIPsPassed != 1 } {
  common::send_msg_id "BD_TCL-1003" "WARNING" "Will not continue with creation of design due to the error(s) above."
  return 3
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]

  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]


  # Create ports
  set btnc [ create_bd_port -dir I -from 0 -to 0 btnc ]
  set leds_8bits1 [ create_bd_port -dir O -from 7 -to 0 leds_8bits1 ]
  set pmod_input [ create_bd_port -dir I -from 7 -to 0 pmod_input ]
  set sws_8bits [ create_bd_port -dir I -from 7 -to 0 sws_8bits ]
  set trigger_input [ create_bd_port -dir I trigger_input ]
  set trigger_out [ create_bd_port -dir O trigger_out ]

  # Create instance: axi_dma_0, and set properties
  set axi_dma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0 ]
  set_property -dict [ list \
   CONFIG.c_include_mm2s {0} \
   CONFIG.c_include_sg {0} \
   CONFIG.c_s2mm_burst_size {64} \
   CONFIG.c_sg_include_stscntrl_strm {0} \
   CONFIG.c_sg_length_width {16} \
 ] $axi_dma_0

  # Create instance: axi_dma_1, and set properties
  set axi_dma_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_1 ]
  set_property -dict [ list \
   CONFIG.c_include_mm2s {0} \
   CONFIG.c_include_sg {0} \
   CONFIG.c_s2mm_burst_size {64} \
   CONFIG.c_sg_include_stscntrl_strm {0} \
   CONFIG.c_sg_length_width {16} \
 ] $axi_dma_1

  # Create instance: axi_dma_2, and set properties
  set axi_dma_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_2 ]
  set_property -dict [ list \
   CONFIG.c_include_mm2s {0} \
   CONFIG.c_include_sg {0} \
   CONFIG.c_s2mm_burst_size {64} \
   CONFIG.c_sg_include_stscntrl_strm {0} \
   CONFIG.c_sg_length_width {16} \
 ] $axi_dma_2

  # Create instance: axi_dma_3, and set properties
  set axi_dma_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_3 ]
  set_property -dict [ list \
   CONFIG.c_include_mm2s {0} \
   CONFIG.c_include_sg {0} \
   CONFIG.c_s2mm_burst_size {64} \
   CONFIG.c_sg_include_stscntrl_strm {0} \
   CONFIG.c_sg_length_width {16} \
 ] $axi_dma_3

  # Create instance: axi_dma_4, and set properties
  set axi_dma_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_4 ]
  set_property -dict [ list \
   CONFIG.c_include_mm2s {0} \
   CONFIG.c_include_sg {0} \
   CONFIG.c_s2mm_burst_size {64} \
   CONFIG.c_sg_include_stscntrl_strm {0} \
   CONFIG.c_sg_length_width {16} \
 ] $axi_dma_4

  # Create instance: axi_dma_5, and set properties
  set axi_dma_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_5 ]
  set_property -dict [ list \
   CONFIG.c_include_mm2s {0} \
   CONFIG.c_include_sg {0} \
   CONFIG.c_s2mm_burst_size {64} \
   CONFIG.c_sg_include_stscntrl_strm {0} \
   CONFIG.c_sg_length_width {16} \
 ] $axi_dma_5

  # Create instance: axi_dma_6, and set properties
  set axi_dma_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_6 ]
  set_property -dict [ list \
   CONFIG.c_include_mm2s {0} \
   CONFIG.c_include_sg {0} \
   CONFIG.c_s2mm_burst_size {32} \
   CONFIG.c_sg_include_stscntrl_strm {0} \
   CONFIG.c_sg_length_width {16} \
 ] $axi_dma_6

  # Create instance: axi_dma_7, and set properties
  set axi_dma_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_7 ]
  set_property -dict [ list \
   CONFIG.c_include_mm2s {0} \
   CONFIG.c_include_sg {0} \
   CONFIG.c_s2mm_burst_size {64} \
   CONFIG.c_sg_include_stscntrl_strm {0} \
   CONFIG.c_sg_length_width {16} \
 ] $axi_dma_7

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {8} \
 ] $axi_gpio_0

  # Create instance: axi_gpio_1, and set properties
  set axi_gpio_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_1 ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_DOUT_DEFAULT {0x00000020} \
   CONFIG.C_GPIO_WIDTH {16} \
 ] $axi_gpio_1

  # Create instance: axi_gpio_2, and set properties
  set axi_gpio_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_2 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {8} \
 ] $axi_gpio_2

  # Create instance: axi_gpio_3, and set properties
  set axi_gpio_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_3 ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_ALL_OUTPUTS_2 {1} \
   CONFIG.C_GPIO_WIDTH {29} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_3

  # Create instance: axi_gpio_4, and set properties
  set axi_gpio_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_4 ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {1} \
 ] $axi_gpio_4

  # Create instance: axi_mem_intercon, and set properties
  set axi_mem_intercon [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {8} \
 ] $axi_mem_intercon

  # Create instance: enable_splitter_0, and set properties
  set enable_splitter_0 [ create_bd_cell -type ip -vlnv user.org:user:enable_splitter:1.0 enable_splitter_0 ]

  # Create instance: fifo_generator_0, and set properties
  set fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_0 ]
  set_property -dict [ list \
   CONFIG.Empty_Threshold_Assert_Value_axis {16382} \
   CONFIG.Empty_Threshold_Assert_Value_rach {14} \
   CONFIG.Empty_Threshold_Assert_Value_wach {14} \
   CONFIG.Empty_Threshold_Assert_Value_wrch {14} \
   CONFIG.Enable_Data_Counts_axis {false} \
   CONFIG.Enable_ECC_axis {false} \
   CONFIG.Enable_Safety_Circuit {true} \
   CONFIG.Enable_TLAST {true} \
   CONFIG.FIFO_Implementation_rach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wrch {Common_Clock_Distributed_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value_axis {16383} \
   CONFIG.Full_Threshold_Assert_Value_rach {15} \
   CONFIG.Full_Threshold_Assert_Value_wach {15} \
   CONFIG.Full_Threshold_Assert_Value_wrch {15} \
   CONFIG.HAS_ACLKEN {false} \
   CONFIG.HAS_TKEEP {true} \
   CONFIG.INTERFACE_TYPE {AXI_STREAM} \
   CONFIG.Input_Depth_axis {16384} \
   CONFIG.Overflow_Flag_AXI {true} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.TDATA_NUM_BYTES {4} \
   CONFIG.TKEEP_WIDTH {4} \
   CONFIG.TSTRB_WIDTH {4} \
   CONFIG.TUSER_WIDTH {0} \
 ] $fifo_generator_0

  # Create instance: fifo_generator_1, and set properties
  set fifo_generator_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_1 ]
  set_property -dict [ list \
   CONFIG.Empty_Threshold_Assert_Value_axis {16382} \
   CONFIG.Empty_Threshold_Assert_Value_rach {14} \
   CONFIG.Empty_Threshold_Assert_Value_wach {14} \
   CONFIG.Empty_Threshold_Assert_Value_wrch {14} \
   CONFIG.Enable_Data_Counts_axis {false} \
   CONFIG.Enable_ECC_axis {false} \
   CONFIG.Enable_Safety_Circuit {true} \
   CONFIG.Enable_TLAST {true} \
   CONFIG.FIFO_Implementation_rach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wrch {Common_Clock_Distributed_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value_axis {16383} \
   CONFIG.Full_Threshold_Assert_Value_rach {15} \
   CONFIG.Full_Threshold_Assert_Value_wach {15} \
   CONFIG.Full_Threshold_Assert_Value_wrch {15} \
   CONFIG.HAS_ACLKEN {false} \
   CONFIG.HAS_TKEEP {true} \
   CONFIG.INTERFACE_TYPE {AXI_STREAM} \
   CONFIG.Input_Depth_axis {16384} \
   CONFIG.Overflow_Flag_AXI {true} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.TDATA_NUM_BYTES {4} \
   CONFIG.TKEEP_WIDTH {4} \
   CONFIG.TSTRB_WIDTH {4} \
   CONFIG.TUSER_WIDTH {0} \
 ] $fifo_generator_1

  # Create instance: fifo_generator_2, and set properties
  set fifo_generator_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_2 ]
  set_property -dict [ list \
   CONFIG.Empty_Threshold_Assert_Value_axis {16382} \
   CONFIG.Empty_Threshold_Assert_Value_rach {14} \
   CONFIG.Empty_Threshold_Assert_Value_wach {14} \
   CONFIG.Empty_Threshold_Assert_Value_wrch {14} \
   CONFIG.Enable_Data_Counts_axis {false} \
   CONFIG.Enable_ECC_axis {false} \
   CONFIG.Enable_Safety_Circuit {true} \
   CONFIG.Enable_TLAST {true} \
   CONFIG.FIFO_Implementation_rach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wrch {Common_Clock_Distributed_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value_axis {16383} \
   CONFIG.Full_Threshold_Assert_Value_rach {15} \
   CONFIG.Full_Threshold_Assert_Value_wach {15} \
   CONFIG.Full_Threshold_Assert_Value_wrch {15} \
   CONFIG.HAS_ACLKEN {false} \
   CONFIG.HAS_TKEEP {true} \
   CONFIG.INTERFACE_TYPE {AXI_STREAM} \
   CONFIG.Input_Depth_axis {16384} \
   CONFIG.Overflow_Flag_AXI {true} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.TDATA_NUM_BYTES {4} \
   CONFIG.TKEEP_WIDTH {4} \
   CONFIG.TSTRB_WIDTH {4} \
   CONFIG.TUSER_WIDTH {0} \
 ] $fifo_generator_2

  # Create instance: fifo_generator_3, and set properties
  set fifo_generator_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_3 ]
  set_property -dict [ list \
   CONFIG.Empty_Threshold_Assert_Value_axis {16382} \
   CONFIG.Empty_Threshold_Assert_Value_rach {14} \
   CONFIG.Empty_Threshold_Assert_Value_wach {14} \
   CONFIG.Empty_Threshold_Assert_Value_wrch {14} \
   CONFIG.Enable_Data_Counts_axis {false} \
   CONFIG.Enable_ECC_axis {false} \
   CONFIG.Enable_Safety_Circuit {true} \
   CONFIG.Enable_TLAST {true} \
   CONFIG.FIFO_Implementation_rach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wrch {Common_Clock_Distributed_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value_axis {16383} \
   CONFIG.Full_Threshold_Assert_Value_rach {15} \
   CONFIG.Full_Threshold_Assert_Value_wach {15} \
   CONFIG.Full_Threshold_Assert_Value_wrch {15} \
   CONFIG.HAS_ACLKEN {false} \
   CONFIG.HAS_TKEEP {true} \
   CONFIG.INTERFACE_TYPE {AXI_STREAM} \
   CONFIG.Input_Depth_axis {16384} \
   CONFIG.Overflow_Flag_AXI {true} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.TDATA_NUM_BYTES {4} \
   CONFIG.TKEEP_WIDTH {4} \
   CONFIG.TSTRB_WIDTH {4} \
   CONFIG.TUSER_WIDTH {0} \
 ] $fifo_generator_3

  # Create instance: fifo_generator_4, and set properties
  set fifo_generator_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_4 ]
  set_property -dict [ list \
   CONFIG.Empty_Threshold_Assert_Value_axis {16382} \
   CONFIG.Empty_Threshold_Assert_Value_rach {14} \
   CONFIG.Empty_Threshold_Assert_Value_wach {14} \
   CONFIG.Empty_Threshold_Assert_Value_wrch {14} \
   CONFIG.Enable_Data_Counts_axis {false} \
   CONFIG.Enable_ECC_axis {false} \
   CONFIG.Enable_Safety_Circuit {true} \
   CONFIG.Enable_TLAST {true} \
   CONFIG.FIFO_Implementation_rach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wrch {Common_Clock_Distributed_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value_axis {16383} \
   CONFIG.Full_Threshold_Assert_Value_rach {15} \
   CONFIG.Full_Threshold_Assert_Value_wach {15} \
   CONFIG.Full_Threshold_Assert_Value_wrch {15} \
   CONFIG.HAS_ACLKEN {false} \
   CONFIG.HAS_TKEEP {true} \
   CONFIG.INTERFACE_TYPE {AXI_STREAM} \
   CONFIG.Input_Depth_axis {16384} \
   CONFIG.Overflow_Flag_AXI {true} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.TDATA_NUM_BYTES {4} \
   CONFIG.TKEEP_WIDTH {4} \
   CONFIG.TSTRB_WIDTH {4} \
   CONFIG.TUSER_WIDTH {0} \
 ] $fifo_generator_4

  # Create instance: fifo_generator_5, and set properties
  set fifo_generator_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_5 ]
  set_property -dict [ list \
   CONFIG.Empty_Threshold_Assert_Value_axis {16382} \
   CONFIG.Empty_Threshold_Assert_Value_rach {14} \
   CONFIG.Empty_Threshold_Assert_Value_wach {14} \
   CONFIG.Empty_Threshold_Assert_Value_wrch {14} \
   CONFIG.Enable_Data_Counts_axis {false} \
   CONFIG.Enable_ECC_axis {false} \
   CONFIG.Enable_Safety_Circuit {true} \
   CONFIG.Enable_TLAST {true} \
   CONFIG.FIFO_Implementation_rach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wrch {Common_Clock_Distributed_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value_axis {16383} \
   CONFIG.Full_Threshold_Assert_Value_rach {15} \
   CONFIG.Full_Threshold_Assert_Value_wach {15} \
   CONFIG.Full_Threshold_Assert_Value_wrch {15} \
   CONFIG.HAS_ACLKEN {false} \
   CONFIG.HAS_TKEEP {true} \
   CONFIG.INTERFACE_TYPE {AXI_STREAM} \
   CONFIG.Input_Depth_axis {16384} \
   CONFIG.Overflow_Flag_AXI {true} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.TDATA_NUM_BYTES {4} \
   CONFIG.TKEEP_WIDTH {4} \
   CONFIG.TSTRB_WIDTH {4} \
   CONFIG.TUSER_WIDTH {0} \
 ] $fifo_generator_5

  # Create instance: fifo_generator_6, and set properties
  set fifo_generator_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_6 ]
  set_property -dict [ list \
   CONFIG.Empty_Threshold_Assert_Value_axis {16382} \
   CONFIG.Empty_Threshold_Assert_Value_rach {14} \
   CONFIG.Empty_Threshold_Assert_Value_wach {14} \
   CONFIG.Empty_Threshold_Assert_Value_wrch {14} \
   CONFIG.Enable_Data_Counts_axis {false} \
   CONFIG.Enable_ECC_axis {false} \
   CONFIG.Enable_Safety_Circuit {true} \
   CONFIG.Enable_TLAST {true} \
   CONFIG.FIFO_Implementation_rach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wrch {Common_Clock_Distributed_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value_axis {16383} \
   CONFIG.Full_Threshold_Assert_Value_rach {15} \
   CONFIG.Full_Threshold_Assert_Value_wach {15} \
   CONFIG.Full_Threshold_Assert_Value_wrch {15} \
   CONFIG.HAS_ACLKEN {false} \
   CONFIG.HAS_TKEEP {true} \
   CONFIG.INTERFACE_TYPE {AXI_STREAM} \
   CONFIG.Input_Depth_axis {16384} \
   CONFIG.Overflow_Flag_AXI {true} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.TDATA_NUM_BYTES {4} \
   CONFIG.TKEEP_WIDTH {4} \
   CONFIG.TSTRB_WIDTH {4} \
   CONFIG.TUSER_WIDTH {0} \
 ] $fifo_generator_6

  # Create instance: fifo_generator_7, and set properties
  set fifo_generator_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_7 ]
  set_property -dict [ list \
   CONFIG.Empty_Threshold_Assert_Value_axis {16382} \
   CONFIG.Empty_Threshold_Assert_Value_rach {14} \
   CONFIG.Empty_Threshold_Assert_Value_wach {14} \
   CONFIG.Empty_Threshold_Assert_Value_wrch {14} \
   CONFIG.Enable_Data_Counts_axis {false} \
   CONFIG.Enable_ECC_axis {false} \
   CONFIG.Enable_Safety_Circuit {true} \
   CONFIG.Enable_TLAST {true} \
   CONFIG.FIFO_Implementation_rach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wrch {Common_Clock_Distributed_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value_axis {16383} \
   CONFIG.Full_Threshold_Assert_Value_rach {15} \
   CONFIG.Full_Threshold_Assert_Value_wach {15} \
   CONFIG.Full_Threshold_Assert_Value_wrch {15} \
   CONFIG.HAS_ACLKEN {false} \
   CONFIG.HAS_TKEEP {true} \
   CONFIG.INTERFACE_TYPE {AXI_STREAM} \
   CONFIG.Input_Depth_axis {16384} \
   CONFIG.Overflow_Flag_AXI {true} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.TDATA_NUM_BYTES {4} \
   CONFIG.TKEEP_WIDTH {4} \
   CONFIG.TSTRB_WIDTH {4} \
   CONFIG.TUSER_WIDTH {0} \
 ] $fifo_generator_7

  # Create instance: hold_signal_0, and set properties
  set hold_signal_0 [ create_bd_cell -type ip -vlnv user.org:user:hold_signal:1.0 hold_signal_0 ]

  # Create instance: hold_signal_1, and set properties
  set hold_signal_1 [ create_bd_cell -type ip -vlnv user.org:user:hold_signal:1.0 hold_signal_1 ]

  # Create instance: hold_signal_2, and set properties
  set hold_signal_2 [ create_bd_cell -type ip -vlnv user.org:user:hold_signal:1.0 hold_signal_2 ]

  # Create instance: hold_signal_3, and set properties
  set hold_signal_3 [ create_bd_cell -type ip -vlnv user.org:user:hold_signal:1.0 hold_signal_3 ]

  # Create instance: hold_signal_4, and set properties
  set hold_signal_4 [ create_bd_cell -type ip -vlnv user.org:user:hold_signal:1.0 hold_signal_4 ]

  # Create instance: hold_signal_5, and set properties
  set hold_signal_5 [ create_bd_cell -type ip -vlnv user.org:user:hold_signal:1.0 hold_signal_5 ]

  # Create instance: hold_signal_6, and set properties
  set hold_signal_6 [ create_bd_cell -type ip -vlnv user.org:user:hold_signal:1.0 hold_signal_6 ]

  # Create instance: hold_signal_7, and set properties
  set hold_signal_7 [ create_bd_cell -type ip -vlnv user.org:user:hold_signal:1.0 hold_signal_7 ]

  # Create instance: input_selector_0, and set properties
  set input_selector_0 [ create_bd_cell -type ip -vlnv user.org:user:input_selector:1.0 input_selector_0 ]

  # Create instance: input_trigger_0, and set properties
  set input_trigger_0 [ create_bd_cell -type ip -vlnv user.org:user:input_trigger:1.0 input_trigger_0 ]

  # Create instance: ip_8_to_1_and_7_0, and set properties
  set ip_8_to_1_and_7_0 [ create_bd_cell -type ip -vlnv user.org:user:ip_8_to_1_and_7:1.0 ip_8_to_1_and_7_0 ]

  # Create instance: or_0, and set properties
  set or_0 [ create_bd_cell -type ip -vlnv user.org:user:or:1.0 or_0 ]

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
   CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ {666.666687} \
   CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {10.158730} \
   CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {125.000000} \
   CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {50.000000} \
   CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_TTC0_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {50.000000} \
   CONFIG.PCW_ACT_WDT_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_APU_PERIPHERAL_FREQMHZ {666.666667} \
   CONFIG.PCW_ARMPLL_CTRL_FBDIV {40} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_CLK0_FREQ {100000000} \
   CONFIG.PCW_CLK1_FREQ {10000000} \
   CONFIG.PCW_CLK2_FREQ {10000000} \
   CONFIG.PCW_CLK3_FREQ {10000000} \
   CONFIG.PCW_CPU_CPU_PLL_FREQMHZ {1333.333} \
   CONFIG.PCW_CPU_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR0 {15} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR1 {7} \
   CONFIG.PCW_DDRPLL_CTRL_FBDIV {32} \
   CONFIG.PCW_DDR_DDR_PLL_FREQMHZ {1066.667} \
   CONFIG.PCW_DDR_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DDR_RAM_HIGHADDR {0x1FFFFFFF} \
   CONFIG.PCW_ENET0_ENET0_IO {MIO 16 .. 27} \
   CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} \
   CONFIG.PCW_ENET0_GRP_MDIO_IO {MIO 52 .. 53} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR0 {8} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_FREQMHZ {1000 Mbps} \
   CONFIG.PCW_ENET0_RESET_ENABLE {0} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET1_RESET_ENABLE {0} \
   CONFIG.PCW_ENET_RESET_ENABLE {1} \
   CONFIG.PCW_ENET_RESET_SELECT {Share reset pin} \
   CONFIG.PCW_EN_EMIO_TTC0 {1} \
   CONFIG.PCW_EN_ENET0 {1} \
   CONFIG.PCW_EN_GPIO {1} \
   CONFIG.PCW_EN_QSPI {1} \
   CONFIG.PCW_EN_SDIO0 {1} \
   CONFIG.PCW_EN_TTC0 {1} \
   CONFIG.PCW_EN_UART1 {1} \
   CONFIG.PCW_EN_USB0 {1} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR1 {2} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {150.000000} \
   CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK1_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK2_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK3_ENABLE {0} \
   CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
   CONFIG.PCW_GPIO_MIO_GPIO_IO {MIO} \
   CONFIG.PCW_I2C0_GRP_INT_ENABLE {0} \
   CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_I2C0_RESET_ENABLE {0} \
   CONFIG.PCW_I2C1_RESET_ENABLE {0} \
   CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {25} \
   CONFIG.PCW_I2C_RESET_ENABLE {1} \
   CONFIG.PCW_IOPLL_CTRL_FBDIV {30} \
   CONFIG.PCW_IO_IO_PLL_FREQMHZ {1000.000} \
   CONFIG.PCW_IRQ_F2P_INTR {1} \
   CONFIG.PCW_MIO_0_DIRECTION {inout} \
   CONFIG.PCW_MIO_0_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_0_PULLUP {disabled} \
   CONFIG.PCW_MIO_0_SLEW {slow} \
   CONFIG.PCW_MIO_10_DIRECTION {inout} \
   CONFIG.PCW_MIO_10_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_10_PULLUP {disabled} \
   CONFIG.PCW_MIO_10_SLEW {slow} \
   CONFIG.PCW_MIO_11_DIRECTION {inout} \
   CONFIG.PCW_MIO_11_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_11_PULLUP {disabled} \
   CONFIG.PCW_MIO_11_SLEW {slow} \
   CONFIG.PCW_MIO_12_DIRECTION {inout} \
   CONFIG.PCW_MIO_12_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_12_PULLUP {disabled} \
   CONFIG.PCW_MIO_12_SLEW {slow} \
   CONFIG.PCW_MIO_13_DIRECTION {inout} \
   CONFIG.PCW_MIO_13_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_13_PULLUP {disabled} \
   CONFIG.PCW_MIO_13_SLEW {slow} \
   CONFIG.PCW_MIO_14_DIRECTION {inout} \
   CONFIG.PCW_MIO_14_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_14_PULLUP {disabled} \
   CONFIG.PCW_MIO_14_SLEW {slow} \
   CONFIG.PCW_MIO_15_DIRECTION {inout} \
   CONFIG.PCW_MIO_15_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_15_PULLUP {disabled} \
   CONFIG.PCW_MIO_15_SLEW {slow} \
   CONFIG.PCW_MIO_16_DIRECTION {out} \
   CONFIG.PCW_MIO_16_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_16_PULLUP {disabled} \
   CONFIG.PCW_MIO_16_SLEW {fast} \
   CONFIG.PCW_MIO_17_DIRECTION {out} \
   CONFIG.PCW_MIO_17_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_17_PULLUP {disabled} \
   CONFIG.PCW_MIO_17_SLEW {fast} \
   CONFIG.PCW_MIO_18_DIRECTION {out} \
   CONFIG.PCW_MIO_18_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_18_PULLUP {disabled} \
   CONFIG.PCW_MIO_18_SLEW {fast} \
   CONFIG.PCW_MIO_19_DIRECTION {out} \
   CONFIG.PCW_MIO_19_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_19_PULLUP {disabled} \
   CONFIG.PCW_MIO_19_SLEW {fast} \
   CONFIG.PCW_MIO_1_DIRECTION {out} \
   CONFIG.PCW_MIO_1_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_1_PULLUP {disabled} \
   CONFIG.PCW_MIO_1_SLEW {fast} \
   CONFIG.PCW_MIO_20_DIRECTION {out} \
   CONFIG.PCW_MIO_20_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_20_PULLUP {disabled} \
   CONFIG.PCW_MIO_20_SLEW {fast} \
   CONFIG.PCW_MIO_21_DIRECTION {out} \
   CONFIG.PCW_MIO_21_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_21_PULLUP {disabled} \
   CONFIG.PCW_MIO_21_SLEW {fast} \
   CONFIG.PCW_MIO_22_DIRECTION {in} \
   CONFIG.PCW_MIO_22_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_22_PULLUP {disabled} \
   CONFIG.PCW_MIO_22_SLEW {fast} \
   CONFIG.PCW_MIO_23_DIRECTION {in} \
   CONFIG.PCW_MIO_23_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_23_PULLUP {disabled} \
   CONFIG.PCW_MIO_23_SLEW {fast} \
   CONFIG.PCW_MIO_24_DIRECTION {in} \
   CONFIG.PCW_MIO_24_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_24_PULLUP {disabled} \
   CONFIG.PCW_MIO_24_SLEW {fast} \
   CONFIG.PCW_MIO_25_DIRECTION {in} \
   CONFIG.PCW_MIO_25_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_25_PULLUP {disabled} \
   CONFIG.PCW_MIO_25_SLEW {fast} \
   CONFIG.PCW_MIO_26_DIRECTION {in} \
   CONFIG.PCW_MIO_26_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_26_PULLUP {disabled} \
   CONFIG.PCW_MIO_26_SLEW {fast} \
   CONFIG.PCW_MIO_27_DIRECTION {in} \
   CONFIG.PCW_MIO_27_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_27_PULLUP {disabled} \
   CONFIG.PCW_MIO_27_SLEW {fast} \
   CONFIG.PCW_MIO_28_DIRECTION {inout} \
   CONFIG.PCW_MIO_28_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_28_PULLUP {disabled} \
   CONFIG.PCW_MIO_28_SLEW {fast} \
   CONFIG.PCW_MIO_29_DIRECTION {in} \
   CONFIG.PCW_MIO_29_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_29_PULLUP {disabled} \
   CONFIG.PCW_MIO_29_SLEW {fast} \
   CONFIG.PCW_MIO_2_DIRECTION {inout} \
   CONFIG.PCW_MIO_2_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_2_PULLUP {disabled} \
   CONFIG.PCW_MIO_2_SLEW {fast} \
   CONFIG.PCW_MIO_30_DIRECTION {out} \
   CONFIG.PCW_MIO_30_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_30_PULLUP {disabled} \
   CONFIG.PCW_MIO_30_SLEW {fast} \
   CONFIG.PCW_MIO_31_DIRECTION {in} \
   CONFIG.PCW_MIO_31_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_31_PULLUP {disabled} \
   CONFIG.PCW_MIO_31_SLEW {fast} \
   CONFIG.PCW_MIO_32_DIRECTION {inout} \
   CONFIG.PCW_MIO_32_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_32_PULLUP {disabled} \
   CONFIG.PCW_MIO_32_SLEW {fast} \
   CONFIG.PCW_MIO_33_DIRECTION {inout} \
   CONFIG.PCW_MIO_33_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_33_PULLUP {disabled} \
   CONFIG.PCW_MIO_33_SLEW {fast} \
   CONFIG.PCW_MIO_34_DIRECTION {inout} \
   CONFIG.PCW_MIO_34_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_34_PULLUP {disabled} \
   CONFIG.PCW_MIO_34_SLEW {fast} \
   CONFIG.PCW_MIO_35_DIRECTION {inout} \
   CONFIG.PCW_MIO_35_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_35_PULLUP {disabled} \
   CONFIG.PCW_MIO_35_SLEW {fast} \
   CONFIG.PCW_MIO_36_DIRECTION {in} \
   CONFIG.PCW_MIO_36_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_36_PULLUP {disabled} \
   CONFIG.PCW_MIO_36_SLEW {fast} \
   CONFIG.PCW_MIO_37_DIRECTION {inout} \
   CONFIG.PCW_MIO_37_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_37_PULLUP {disabled} \
   CONFIG.PCW_MIO_37_SLEW {fast} \
   CONFIG.PCW_MIO_38_DIRECTION {inout} \
   CONFIG.PCW_MIO_38_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_38_PULLUP {disabled} \
   CONFIG.PCW_MIO_38_SLEW {fast} \
   CONFIG.PCW_MIO_39_DIRECTION {inout} \
   CONFIG.PCW_MIO_39_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_39_PULLUP {disabled} \
   CONFIG.PCW_MIO_39_SLEW {fast} \
   CONFIG.PCW_MIO_3_DIRECTION {inout} \
   CONFIG.PCW_MIO_3_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_3_PULLUP {disabled} \
   CONFIG.PCW_MIO_3_SLEW {fast} \
   CONFIG.PCW_MIO_40_DIRECTION {inout} \
   CONFIG.PCW_MIO_40_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_40_PULLUP {disabled} \
   CONFIG.PCW_MIO_40_SLEW {fast} \
   CONFIG.PCW_MIO_41_DIRECTION {inout} \
   CONFIG.PCW_MIO_41_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_41_PULLUP {disabled} \
   CONFIG.PCW_MIO_41_SLEW {fast} \
   CONFIG.PCW_MIO_42_DIRECTION {inout} \
   CONFIG.PCW_MIO_42_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_42_PULLUP {disabled} \
   CONFIG.PCW_MIO_42_SLEW {fast} \
   CONFIG.PCW_MIO_43_DIRECTION {inout} \
   CONFIG.PCW_MIO_43_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_43_PULLUP {disabled} \
   CONFIG.PCW_MIO_43_SLEW {fast} \
   CONFIG.PCW_MIO_44_DIRECTION {inout} \
   CONFIG.PCW_MIO_44_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_44_PULLUP {disabled} \
   CONFIG.PCW_MIO_44_SLEW {fast} \
   CONFIG.PCW_MIO_45_DIRECTION {inout} \
   CONFIG.PCW_MIO_45_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_45_PULLUP {disabled} \
   CONFIG.PCW_MIO_45_SLEW {fast} \
   CONFIG.PCW_MIO_46_DIRECTION {in} \
   CONFIG.PCW_MIO_46_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_46_PULLUP {disabled} \
   CONFIG.PCW_MIO_46_SLEW {slow} \
   CONFIG.PCW_MIO_47_DIRECTION {in} \
   CONFIG.PCW_MIO_47_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_47_PULLUP {disabled} \
   CONFIG.PCW_MIO_47_SLEW {slow} \
   CONFIG.PCW_MIO_48_DIRECTION {out} \
   CONFIG.PCW_MIO_48_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_48_PULLUP {disabled} \
   CONFIG.PCW_MIO_48_SLEW {slow} \
   CONFIG.PCW_MIO_49_DIRECTION {in} \
   CONFIG.PCW_MIO_49_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_49_PULLUP {disabled} \
   CONFIG.PCW_MIO_49_SLEW {slow} \
   CONFIG.PCW_MIO_4_DIRECTION {inout} \
   CONFIG.PCW_MIO_4_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_4_PULLUP {disabled} \
   CONFIG.PCW_MIO_4_SLEW {fast} \
   CONFIG.PCW_MIO_50_DIRECTION {inout} \
   CONFIG.PCW_MIO_50_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_50_PULLUP {disabled} \
   CONFIG.PCW_MIO_50_SLEW {slow} \
   CONFIG.PCW_MIO_51_DIRECTION {inout} \
   CONFIG.PCW_MIO_51_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_51_PULLUP {disabled} \
   CONFIG.PCW_MIO_51_SLEW {slow} \
   CONFIG.PCW_MIO_52_DIRECTION {out} \
   CONFIG.PCW_MIO_52_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_52_PULLUP {disabled} \
   CONFIG.PCW_MIO_52_SLEW {slow} \
   CONFIG.PCW_MIO_53_DIRECTION {inout} \
   CONFIG.PCW_MIO_53_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_53_PULLUP {disabled} \
   CONFIG.PCW_MIO_53_SLEW {slow} \
   CONFIG.PCW_MIO_5_DIRECTION {inout} \
   CONFIG.PCW_MIO_5_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_5_PULLUP {disabled} \
   CONFIG.PCW_MIO_5_SLEW {fast} \
   CONFIG.PCW_MIO_6_DIRECTION {out} \
   CONFIG.PCW_MIO_6_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_6_PULLUP {disabled} \
   CONFIG.PCW_MIO_6_SLEW {fast} \
   CONFIG.PCW_MIO_7_DIRECTION {out} \
   CONFIG.PCW_MIO_7_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_7_PULLUP {disabled} \
   CONFIG.PCW_MIO_7_SLEW {slow} \
   CONFIG.PCW_MIO_8_DIRECTION {out} \
   CONFIG.PCW_MIO_8_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_8_PULLUP {disabled} \
   CONFIG.PCW_MIO_8_SLEW {fast} \
   CONFIG.PCW_MIO_9_DIRECTION {inout} \
   CONFIG.PCW_MIO_9_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_9_PULLUP {disabled} \
   CONFIG.PCW_MIO_9_SLEW {slow} \
   CONFIG.PCW_MIO_TREE_PERIPHERALS {GPIO#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#UART 1#UART 1#GPIO#GPIO#Enet 0#Enet 0} \
   CONFIG.PCW_MIO_TREE_SIGNALS {gpio[0]#qspi0_ss_b#qspi0_io[0]#qspi0_io[1]#qspi0_io[2]#qspi0_io[3]/HOLD_B#qspi0_sclk#gpio[7]#gpio[8]#gpio[9]#gpio[10]#gpio[11]#gpio[12]#gpio[13]#gpio[14]#gpio[15]#tx_clk#txd[0]#txd[1]#txd[2]#txd[3]#tx_ctl#rx_clk#rxd[0]#rxd[1]#rxd[2]#rxd[3]#rx_ctl#data[4]#dir#stp#nxt#data[0]#data[1]#data[2]#data[3]#clk#data[5]#data[6]#data[7]#clk#cmd#data[0]#data[1]#data[2]#data[3]#wp#cd#tx#rx#gpio[50]#gpio[51]#mdc#mdio} \
   CONFIG.PCW_NAND_GRP_D8_ENABLE {0} \
   CONFIG.PCW_NAND_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_A25_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_INT_ENABLE {0} \
   CONFIG.PCW_NOR_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_PCAP_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_PJTAG_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_PRESET_BANK0_VOLTAGE {LVCMOS 3.3V} \
   CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
   CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_IO1_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_IO {MIO 1 .. 6} \
   CONFIG.PCW_QSPI_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_QSPI_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_QSPI_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_QSPI_QSPI_IO {MIO 1 .. 6} \
   CONFIG.PCW_SD0_GRP_CD_ENABLE {1} \
   CONFIG.PCW_SD0_GRP_CD_IO {MIO 47} \
   CONFIG.PCW_SD0_GRP_POW_ENABLE {0} \
   CONFIG.PCW_SD0_GRP_WP_ENABLE {1} \
   CONFIG.PCW_SD0_GRP_WP_IO {MIO 46} \
   CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_SD0_SD0_IO {MIO 40 .. 45} \
   CONFIG.PCW_SDIO_PERIPHERAL_DIVISOR0 {20} \
   CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_SDIO_PERIPHERAL_VALID {1} \
   CONFIG.PCW_SINGLE_QSPI_DATA_MODE {x4} \
   CONFIG.PCW_SMC_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SPI_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TPIU_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_TTC0_TTC0_IO {EMIO} \
   CONFIG.PCW_TTC_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_UART1_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_UART1_UART1_IO {MIO 48 .. 49} \
   CONFIG.PCW_UART_PERIPHERAL_DIVISOR0 {20} \
   CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_UART_PERIPHERAL_VALID {1} \
   CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ {533.333374} \
   CONFIG.PCW_UIPARAM_DDR_BANK_ADDR_COUNT {3} \
   CONFIG.PCW_UIPARAM_DDR_BL {8} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.41} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.411} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.341} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.358} \
   CONFIG.PCW_UIPARAM_DDR_CL {7} \
   CONFIG.PCW_UIPARAM_DDR_COL_ADDR_COUNT {10} \
   CONFIG.PCW_UIPARAM_DDR_CWL {6} \
   CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY {2048 MBits} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 {0.025} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 {0.028} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 {0.001} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 {0.001} \
   CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH {16 Bits} \
   CONFIG.PCW_UIPARAM_DDR_FREQ_MHZ {533.333313} \
   CONFIG.PCW_UIPARAM_DDR_MEMORY_TYPE {DDR 3} \
   CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41J128M16 HA-15E} \
   CONFIG.PCW_UIPARAM_DDR_ROW_ADDR_COUNT {14} \
   CONFIG.PCW_UIPARAM_DDR_SPEED_BIN {DDR3_1066F} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_DATA_EYE {1} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_READ_GATE {1} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_WRITE_LEVEL {1} \
   CONFIG.PCW_UIPARAM_DDR_T_FAW {45.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {36.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RC {49.5} \
   CONFIG.PCW_UIPARAM_DDR_T_RCD {7} \
   CONFIG.PCW_UIPARAM_DDR_T_RP {7} \
   CONFIG.PCW_UIPARAM_DDR_USE_INTERNAL_VREF {1} \
   CONFIG.PCW_USB0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_USB0_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_USB0_RESET_ENABLE {0} \
   CONFIG.PCW_USB0_USB0_IO {MIO 28 .. 39} \
   CONFIG.PCW_USB1_RESET_ENABLE {0} \
   CONFIG.PCW_USB_RESET_ENABLE {1} \
   CONFIG.PCW_USB_RESET_SELECT {Share reset pin} \
   CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
   CONFIG.PCW_USE_S_AXI_HP0 {1} \
   CONFIG.preset {ZedBoard} \
 ] $processing_system7_0

  # Create instance: ps7_0_axi_periph, and set properties
  set ps7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ps7_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {13} \
 ] $ps7_0_axi_periph

  # Create instance: rst_ps7_0_100M, and set properties
  set rst_ps7_0_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps7_0_100M ]

  # Create instance: signal_detector_0, and set properties
  set signal_detector_0 [ create_bd_cell -type ip -vlnv akr.neutron:user:signal_detector:1.0 signal_detector_0 ]

  # Create instance: signal_detector_1, and set properties
  set signal_detector_1 [ create_bd_cell -type ip -vlnv akr.neutron:user:signal_detector:1.0 signal_detector_1 ]

  # Create instance: signal_detector_2, and set properties
  set signal_detector_2 [ create_bd_cell -type ip -vlnv akr.neutron:user:signal_detector:1.0 signal_detector_2 ]

  # Create instance: signal_detector_3, and set properties
  set signal_detector_3 [ create_bd_cell -type ip -vlnv akr.neutron:user:signal_detector:1.0 signal_detector_3 ]

  # Create instance: signal_detector_4, and set properties
  set signal_detector_4 [ create_bd_cell -type ip -vlnv akr.neutron:user:signal_detector:1.0 signal_detector_4 ]

  # Create instance: signal_detector_5, and set properties
  set signal_detector_5 [ create_bd_cell -type ip -vlnv akr.neutron:user:signal_detector:1.0 signal_detector_5 ]

  # Create instance: signal_detector_6, and set properties
  set signal_detector_6 [ create_bd_cell -type ip -vlnv akr.neutron:user:signal_detector:1.0 signal_detector_6 ]

  # Create instance: signal_detector_7, and set properties
  set signal_detector_7 [ create_bd_cell -type ip -vlnv akr.neutron:user:signal_detector:1.0 signal_detector_7 ]

  # Create instance: signal_generator_0, and set properties
  set signal_generator_0 [ create_bd_cell -type ip -vlnv user.org:user:signal_generator:1.0 signal_generator_0 ]

  # Create instance: signal_input_0, and set properties
  set signal_input_0 [ create_bd_cell -type ip -vlnv user.org:user:signal_input:1.0 signal_input_0 ]

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_3

  # Create instance: util_vector_logic_4, and set properties
  set util_vector_logic_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_4 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_4

  # Create instance: util_vector_logic_5, and set properties
  set util_vector_logic_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_5 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_5

  # Create instance: util_vector_logic_6, and set properties
  set util_vector_logic_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_6 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_6

  # Create instance: util_vector_logic_7, and set properties
  set util_vector_logic_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_7 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_7

  # Create instance: util_vector_logic_8, and set properties
  set util_vector_logic_8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_8 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_8

  # Create instance: util_vector_logic_9, and set properties
  set util_vector_logic_9 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_9 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_9

  # Create instance: util_vector_logic_10, and set properties
  set util_vector_logic_10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_10 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_10

  # Create instance: util_vector_logic_11, and set properties
  set util_vector_logic_11 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_11 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_11

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {16} \
 ] $xlconcat_0

  # Create instance: xlconcat_1, and set properties
  set xlconcat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_1 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {8} \
 ] $xlconcat_1

  # Create interface connections
  connect_bd_intf_net -intf_net axi_dma_0_M_AXI_S2MM [get_bd_intf_pins axi_dma_0/M_AXI_S2MM] [get_bd_intf_pins axi_mem_intercon/S00_AXI]
  connect_bd_intf_net -intf_net axi_dma_1_M_AXI_S2MM [get_bd_intf_pins axi_dma_1/M_AXI_S2MM] [get_bd_intf_pins axi_mem_intercon/S01_AXI]
  connect_bd_intf_net -intf_net axi_dma_2_M_AXI_S2MM [get_bd_intf_pins axi_dma_2/M_AXI_S2MM] [get_bd_intf_pins axi_mem_intercon/S02_AXI]
  connect_bd_intf_net -intf_net axi_dma_3_M_AXI_S2MM [get_bd_intf_pins axi_dma_3/M_AXI_S2MM] [get_bd_intf_pins axi_mem_intercon/S03_AXI]
  connect_bd_intf_net -intf_net axi_dma_4_M_AXI_S2MM [get_bd_intf_pins axi_dma_4/M_AXI_S2MM] [get_bd_intf_pins axi_mem_intercon/S04_AXI]
  connect_bd_intf_net -intf_net axi_dma_5_M_AXI_S2MM [get_bd_intf_pins axi_dma_5/M_AXI_S2MM] [get_bd_intf_pins axi_mem_intercon/S05_AXI]
  connect_bd_intf_net -intf_net axi_dma_6_M_AXI_S2MM [get_bd_intf_pins axi_dma_6/M_AXI_S2MM] [get_bd_intf_pins axi_mem_intercon/S06_AXI]
  connect_bd_intf_net -intf_net axi_dma_7_M_AXI_S2MM [get_bd_intf_pins axi_dma_7/M_AXI_S2MM] [get_bd_intf_pins axi_mem_intercon/S07_AXI]
  connect_bd_intf_net -intf_net axi_mem_intercon_M00_AXI [get_bd_intf_pins axi_mem_intercon/M00_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]
  connect_bd_intf_net -intf_net fifo_generator_0_M_AXIS [get_bd_intf_pins axi_dma_0/S_AXIS_S2MM] [get_bd_intf_pins fifo_generator_0/M_AXIS]
  connect_bd_intf_net -intf_net fifo_generator_1_M_AXIS [get_bd_intf_pins axi_dma_1/S_AXIS_S2MM] [get_bd_intf_pins fifo_generator_1/M_AXIS]
  connect_bd_intf_net -intf_net fifo_generator_2_M_AXIS [get_bd_intf_pins axi_dma_2/S_AXIS_S2MM] [get_bd_intf_pins fifo_generator_2/M_AXIS]
  connect_bd_intf_net -intf_net fifo_generator_3_M_AXIS [get_bd_intf_pins axi_dma_3/S_AXIS_S2MM] [get_bd_intf_pins fifo_generator_3/M_AXIS]
  connect_bd_intf_net -intf_net fifo_generator_4_M_AXIS [get_bd_intf_pins axi_dma_4/S_AXIS_S2MM] [get_bd_intf_pins fifo_generator_4/M_AXIS]
  connect_bd_intf_net -intf_net fifo_generator_5_M_AXIS [get_bd_intf_pins axi_dma_5/S_AXIS_S2MM] [get_bd_intf_pins fifo_generator_5/M_AXIS]
  connect_bd_intf_net -intf_net fifo_generator_6_M_AXIS [get_bd_intf_pins axi_dma_6/S_AXIS_S2MM] [get_bd_intf_pins fifo_generator_6/M_AXIS]
  connect_bd_intf_net -intf_net fifo_generator_7_M_AXIS [get_bd_intf_pins axi_dma_7/S_AXIS_S2MM] [get_bd_intf_pins fifo_generator_7/M_AXIS]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins ps7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M00_AXI [get_bd_intf_pins axi_dma_0/S_AXI_LITE] [get_bd_intf_pins ps7_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M01_AXI [get_bd_intf_pins axi_dma_1/S_AXI_LITE] [get_bd_intf_pins ps7_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M02_AXI [get_bd_intf_pins axi_dma_2/S_AXI_LITE] [get_bd_intf_pins ps7_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M03_AXI [get_bd_intf_pins axi_dma_3/S_AXI_LITE] [get_bd_intf_pins ps7_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M04_AXI [get_bd_intf_pins axi_dma_4/S_AXI_LITE] [get_bd_intf_pins ps7_0_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M05_AXI [get_bd_intf_pins axi_dma_5/S_AXI_LITE] [get_bd_intf_pins ps7_0_axi_periph/M05_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M06_AXI [get_bd_intf_pins axi_dma_6/S_AXI_LITE] [get_bd_intf_pins ps7_0_axi_periph/M06_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M07_AXI [get_bd_intf_pins axi_dma_7/S_AXI_LITE] [get_bd_intf_pins ps7_0_axi_periph/M07_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M08_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M08_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M09_AXI [get_bd_intf_pins axi_gpio_1/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M09_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M10_AXI [get_bd_intf_pins axi_gpio_2/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M10_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M11_AXI [get_bd_intf_pins axi_gpio_3/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M11_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M12_AXI [get_bd_intf_pins axi_gpio_4/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M12_AXI]
  connect_bd_intf_net -intf_net signal_detector_0_M00_AXIS [get_bd_intf_pins fifo_generator_0/S_AXIS] [get_bd_intf_pins signal_detector_0/M00_AXIS]
  connect_bd_intf_net -intf_net signal_detector_1_M00_AXIS [get_bd_intf_pins fifo_generator_1/S_AXIS] [get_bd_intf_pins signal_detector_1/M00_AXIS]
  connect_bd_intf_net -intf_net signal_detector_2_M00_AXIS [get_bd_intf_pins fifo_generator_2/S_AXIS] [get_bd_intf_pins signal_detector_2/M00_AXIS]
  connect_bd_intf_net -intf_net signal_detector_3_M00_AXIS [get_bd_intf_pins fifo_generator_3/S_AXIS] [get_bd_intf_pins signal_detector_3/M00_AXIS]
  connect_bd_intf_net -intf_net signal_detector_4_M00_AXIS [get_bd_intf_pins fifo_generator_4/S_AXIS] [get_bd_intf_pins signal_detector_4/M00_AXIS]
  connect_bd_intf_net -intf_net signal_detector_5_M00_AXIS [get_bd_intf_pins fifo_generator_5/S_AXIS] [get_bd_intf_pins signal_detector_5/M00_AXIS]
  connect_bd_intf_net -intf_net signal_detector_6_M00_AXIS [get_bd_intf_pins fifo_generator_6/S_AXIS] [get_bd_intf_pins signal_detector_6/M00_AXIS]

  # Create port connections
  connect_bd_net -net axi_dma_0_s2mm_introut [get_bd_pins axi_dma_0/s2mm_introut] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net axi_dma_1_s2mm_introut [get_bd_pins axi_dma_1/s2mm_introut] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net axi_dma_2_s2mm_introut [get_bd_pins axi_dma_2/s2mm_introut] [get_bd_pins xlconcat_0/In2]
  connect_bd_net -net axi_dma_3_s2mm_introut [get_bd_pins axi_dma_3/s2mm_introut] [get_bd_pins xlconcat_0/In3]
  connect_bd_net -net axi_dma_4_s2mm_introut [get_bd_pins axi_dma_4/s2mm_introut] [get_bd_pins xlconcat_0/In4]
  connect_bd_net -net axi_dma_5_s2mm_introut [get_bd_pins axi_dma_5/s2mm_introut] [get_bd_pins xlconcat_0/In5]
  connect_bd_net -net axi_dma_6_s2mm_introut [get_bd_pins axi_dma_6/s2mm_introut] [get_bd_pins xlconcat_0/In6]
  connect_bd_net -net axi_dma_7_s2mm_introut [get_bd_pins axi_dma_7/s2mm_introut] [get_bd_pins xlconcat_0/In7]
  connect_bd_net -net axi_gpio_0_gpio_io_o [get_bd_pins axi_gpio_0/gpio_io_o] [get_bd_pins enable_splitter_0/gpio_input]
  connect_bd_net -net axi_gpio_1_gpio_io_o [get_bd_pins axi_gpio_1/gpio_io_o] [get_bd_pins signal_detector_0/number_words] [get_bd_pins signal_detector_1/number_words] [get_bd_pins signal_detector_2/number_words] [get_bd_pins signal_detector_3/number_words] [get_bd_pins signal_detector_4/number_words] [get_bd_pins signal_detector_5/number_words] [get_bd_pins signal_detector_6/number_words] [get_bd_pins signal_detector_7/number_words] [get_bd_pins signal_generator_0/number_words]
  connect_bd_net -net axi_gpio_3_gpio2_io_o [get_bd_pins axi_gpio_3/gpio2_io_o] [get_bd_pins signal_generator_0/signal_count]
  connect_bd_net -net axi_gpio_3_gpio_io_o [get_bd_pins axi_gpio_3/gpio_io_o] [get_bd_pins ip_8_to_1_and_7_0/in0]
  connect_bd_net -net axi_gpio_4_gpio_io_o [get_bd_pins axi_gpio_4/gpio_io_o] [get_bd_pins input_trigger_0/enabled]
  connect_bd_net -net btnc_1 [get_bd_ports btnc] [get_bd_pins util_vector_logic_0/Op2] [get_bd_pins util_vector_logic_10/Op2]
  connect_bd_net -net enable_splitter_0_out0 [get_bd_pins enable_splitter_0/out0] [get_bd_pins signal_detector_0/enabled]
  connect_bd_net -net enable_splitter_0_out1 [get_bd_pins enable_splitter_0/out1] [get_bd_pins signal_detector_1/enabled]
  connect_bd_net -net enable_splitter_0_out2 [get_bd_pins enable_splitter_0/out2] [get_bd_pins signal_detector_2/enabled]
  connect_bd_net -net enable_splitter_0_out3 [get_bd_pins enable_splitter_0/out3] [get_bd_pins signal_detector_3/enabled]
  connect_bd_net -net enable_splitter_0_out4 [get_bd_pins enable_splitter_0/out4] [get_bd_pins signal_detector_4/enabled]
  connect_bd_net -net enable_splitter_0_out5 [get_bd_pins enable_splitter_0/out5] [get_bd_pins signal_detector_5/enabled]
  connect_bd_net -net enable_splitter_0_out6 [get_bd_pins enable_splitter_0/out6] [get_bd_pins signal_detector_6/enabled]
  connect_bd_net -net enable_splitter_0_out7 [get_bd_pins enable_splitter_0/out7] [get_bd_pins signal_detector_7/enabled] [get_bd_pins util_vector_logic_9/Op2]
  connect_bd_net -net fifo_generator_0_axis_overflow [get_bd_pins fifo_generator_0/axis_overflow] [get_bd_pins hold_signal_0/signal_in]
  connect_bd_net -net fifo_generator_1_axis_overflow [get_bd_pins fifo_generator_1/axis_overflow] [get_bd_pins hold_signal_1/signal_in]
  connect_bd_net -net fifo_generator_2_axis_overflow [get_bd_pins fifo_generator_2/axis_overflow] [get_bd_pins hold_signal_2/signal_in]
  connect_bd_net -net fifo_generator_3_axis_overflow [get_bd_pins fifo_generator_3/axis_overflow] [get_bd_pins hold_signal_3/signal_in]
  connect_bd_net -net fifo_generator_4_axis_overflow [get_bd_pins fifo_generator_4/axis_overflow] [get_bd_pins hold_signal_4/signal_in]
  connect_bd_net -net fifo_generator_5_axis_overflow [get_bd_pins fifo_generator_5/axis_overflow] [get_bd_pins hold_signal_5/signal_in]
  connect_bd_net -net fifo_generator_6_axis_overflow [get_bd_pins fifo_generator_6/axis_overflow] [get_bd_pins hold_signal_6/signal_in]
  connect_bd_net -net fifo_generator_7_axis_overflow [get_bd_pins fifo_generator_7/axis_overflow] [get_bd_pins hold_signal_7/signal_in]
  connect_bd_net -net fifo_generator_7_s_axis_tready [get_bd_pins fifo_generator_7/s_axis_tready] [get_bd_pins input_selector_0/m00_axis_tready]
  connect_bd_net -net hold_signal_0_signal_out [get_bd_pins hold_signal_0/signal_out] [get_bd_pins xlconcat_0/In8]
  connect_bd_net -net hold_signal_1_signal_out [get_bd_pins hold_signal_1/signal_out] [get_bd_pins xlconcat_0/In9]
  connect_bd_net -net hold_signal_2_signal_out [get_bd_pins hold_signal_2/signal_out] [get_bd_pins xlconcat_0/In10]
  connect_bd_net -net hold_signal_3_signal_out [get_bd_pins hold_signal_3/signal_out] [get_bd_pins xlconcat_0/In11]
  connect_bd_net -net hold_signal_4_signal_out [get_bd_pins hold_signal_4/signal_out] [get_bd_pins xlconcat_0/In12]
  connect_bd_net -net hold_signal_5_signal_out [get_bd_pins hold_signal_5/signal_out] [get_bd_pins xlconcat_0/In13]
  connect_bd_net -net hold_signal_6_signal_out [get_bd_pins hold_signal_6/signal_out] [get_bd_pins xlconcat_0/In14]
  connect_bd_net -net hold_signal_7_signal_out [get_bd_pins hold_signal_7/signal_out] [get_bd_pins xlconcat_0/In15]
  connect_bd_net -net input_selector_0_fifo_reset [get_bd_pins input_selector_0/fifo_reset] [get_bd_pins util_vector_logic_8/Op2]
  connect_bd_net -net input_selector_0_m00_axis_tdata [get_bd_pins fifo_generator_7/s_axis_tdata] [get_bd_pins input_selector_0/m00_axis_tdata]
  connect_bd_net -net input_selector_0_m00_axis_tkeep [get_bd_pins fifo_generator_7/s_axis_tkeep] [get_bd_pins input_selector_0/m00_axis_tkeep]
  connect_bd_net -net input_selector_0_m00_axis_tlast [get_bd_pins fifo_generator_7/s_axis_tlast] [get_bd_pins input_selector_0/m00_axis_tlast]
  connect_bd_net -net input_selector_0_m00_axis_tvalid [get_bd_pins fifo_generator_7/s_axis_tvalid] [get_bd_pins input_selector_0/m00_axis_tvalid]
  connect_bd_net -net input_selector_0_s00_axis_tready [get_bd_pins input_selector_0/s00_axis_tready] [get_bd_pins signal_generator_0/m00_axis_tready]
  connect_bd_net -net input_selector_0_s01_axis_tready [get_bd_pins input_selector_0/s01_axis_tready] [get_bd_pins signal_detector_7/m00_axis_tready]
  connect_bd_net -net input_selector_0_signal_state [get_bd_pins input_selector_0/signal_state] [get_bd_pins or_0/in7] [get_bd_pins xlconcat_1/In7]
  connect_bd_net -net input_trigger_0_trigger_out0 [get_bd_pins input_trigger_0/trigger_out0] [get_bd_pins signal_detector_0/trigger_input]
  connect_bd_net -net input_trigger_0_trigger_out1 [get_bd_pins input_trigger_0/trigger_out1] [get_bd_pins signal_detector_1/trigger_input]
  connect_bd_net -net input_trigger_0_trigger_out2 [get_bd_pins input_trigger_0/trigger_out2] [get_bd_pins signal_detector_2/trigger_input]
  connect_bd_net -net input_trigger_0_trigger_out3 [get_bd_pins input_trigger_0/trigger_out3] [get_bd_pins signal_detector_3/trigger_input]
  connect_bd_net -net input_trigger_0_trigger_out4 [get_bd_pins input_trigger_0/trigger_out4] [get_bd_pins signal_detector_4/trigger_input]
  connect_bd_net -net input_trigger_0_trigger_out5 [get_bd_pins input_trigger_0/trigger_out5] [get_bd_pins signal_detector_5/trigger_input]
  connect_bd_net -net input_trigger_0_trigger_out6 [get_bd_pins input_trigger_0/trigger_out6] [get_bd_pins signal_detector_6/trigger_input]
  connect_bd_net -net input_trigger_0_trigger_out7 [get_bd_pins input_trigger_0/trigger_out7] [get_bd_pins signal_detector_7/trigger_input]
  connect_bd_net -net ip_8_to_1_and_7_0_out0 [get_bd_pins input_selector_0/selector] [get_bd_pins ip_8_to_1_and_7_0/out0] [get_bd_pins util_vector_logic_9/Op1]
  connect_bd_net -net ip_8_to_1_and_7_0_out1 [get_bd_pins ip_8_to_1_and_7_0/out1] [get_bd_pins signal_generator_0/signal_frequency]
  connect_bd_net -net or_0_out0 [get_bd_ports trigger_out] [get_bd_pins or_0/out0]
  connect_bd_net -net pmod_input_1 [get_bd_ports pmod_input] [get_bd_pins util_vector_logic_11/Op1]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins axi_dma_0/m_axi_s2mm_aclk] [get_bd_pins axi_dma_0/s_axi_lite_aclk] [get_bd_pins axi_dma_1/m_axi_s2mm_aclk] [get_bd_pins axi_dma_1/s_axi_lite_aclk] [get_bd_pins axi_dma_2/m_axi_s2mm_aclk] [get_bd_pins axi_dma_2/s_axi_lite_aclk] [get_bd_pins axi_dma_3/m_axi_s2mm_aclk] [get_bd_pins axi_dma_3/s_axi_lite_aclk] [get_bd_pins axi_dma_4/m_axi_s2mm_aclk] [get_bd_pins axi_dma_4/s_axi_lite_aclk] [get_bd_pins axi_dma_5/m_axi_s2mm_aclk] [get_bd_pins axi_dma_5/s_axi_lite_aclk] [get_bd_pins axi_dma_6/m_axi_s2mm_aclk] [get_bd_pins axi_dma_6/s_axi_lite_aclk] [get_bd_pins axi_dma_7/m_axi_s2mm_aclk] [get_bd_pins axi_dma_7/s_axi_lite_aclk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_gpio_1/s_axi_aclk] [get_bd_pins axi_gpio_2/s_axi_aclk] [get_bd_pins axi_gpio_3/s_axi_aclk] [get_bd_pins axi_gpio_4/s_axi_aclk] [get_bd_pins axi_mem_intercon/ACLK] [get_bd_pins axi_mem_intercon/M00_ACLK] [get_bd_pins axi_mem_intercon/S00_ACLK] [get_bd_pins axi_mem_intercon/S01_ACLK] [get_bd_pins axi_mem_intercon/S02_ACLK] [get_bd_pins axi_mem_intercon/S03_ACLK] [get_bd_pins axi_mem_intercon/S04_ACLK] [get_bd_pins axi_mem_intercon/S05_ACLK] [get_bd_pins axi_mem_intercon/S06_ACLK] [get_bd_pins axi_mem_intercon/S07_ACLK] [get_bd_pins fifo_generator_0/s_aclk] [get_bd_pins fifo_generator_1/s_aclk] [get_bd_pins fifo_generator_2/s_aclk] [get_bd_pins fifo_generator_3/s_aclk] [get_bd_pins fifo_generator_4/s_aclk] [get_bd_pins fifo_generator_5/s_aclk] [get_bd_pins fifo_generator_6/s_aclk] [get_bd_pins fifo_generator_7/s_aclk] [get_bd_pins hold_signal_0/m00_axis_aclk] [get_bd_pins hold_signal_1/m00_axis_aclk] [get_bd_pins hold_signal_2/m00_axis_aclk] [get_bd_pins hold_signal_3/m00_axis_aclk] [get_bd_pins hold_signal_4/m00_axis_aclk] [get_bd_pins hold_signal_5/m00_axis_aclk] [get_bd_pins hold_signal_6/m00_axis_aclk] [get_bd_pins hold_signal_7/m00_axis_aclk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins ps7_0_axi_periph/ACLK] [get_bd_pins ps7_0_axi_periph/M00_ACLK] [get_bd_pins ps7_0_axi_periph/M01_ACLK] [get_bd_pins ps7_0_axi_periph/M02_ACLK] [get_bd_pins ps7_0_axi_periph/M03_ACLK] [get_bd_pins ps7_0_axi_periph/M04_ACLK] [get_bd_pins ps7_0_axi_periph/M05_ACLK] [get_bd_pins ps7_0_axi_periph/M06_ACLK] [get_bd_pins ps7_0_axi_periph/M07_ACLK] [get_bd_pins ps7_0_axi_periph/M08_ACLK] [get_bd_pins ps7_0_axi_periph/M09_ACLK] [get_bd_pins ps7_0_axi_periph/M10_ACLK] [get_bd_pins ps7_0_axi_periph/M11_ACLK] [get_bd_pins ps7_0_axi_periph/M12_ACLK] [get_bd_pins ps7_0_axi_periph/S00_ACLK] [get_bd_pins rst_ps7_0_100M/slowest_sync_clk] [get_bd_pins signal_detector_0/m00_axis_aclk] [get_bd_pins signal_detector_1/m00_axis_aclk] [get_bd_pins signal_detector_2/m00_axis_aclk] [get_bd_pins signal_detector_3/m00_axis_aclk] [get_bd_pins signal_detector_4/m00_axis_aclk] [get_bd_pins signal_detector_5/m00_axis_aclk] [get_bd_pins signal_detector_6/m00_axis_aclk] [get_bd_pins signal_detector_7/m00_axis_aclk] [get_bd_pins signal_generator_0/m00_axis_aclk]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_ps7_0_100M/ext_reset_in]
  connect_bd_net -net rst_ps7_0_100M_peripheral_aresetn [get_bd_pins axi_dma_0/axi_resetn] [get_bd_pins axi_dma_1/axi_resetn] [get_bd_pins axi_dma_2/axi_resetn] [get_bd_pins axi_dma_3/axi_resetn] [get_bd_pins axi_dma_4/axi_resetn] [get_bd_pins axi_dma_5/axi_resetn] [get_bd_pins axi_dma_6/axi_resetn] [get_bd_pins axi_dma_7/axi_resetn] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_gpio_1/s_axi_aresetn] [get_bd_pins axi_gpio_2/s_axi_aresetn] [get_bd_pins axi_gpio_3/s_axi_aresetn] [get_bd_pins axi_gpio_4/s_axi_aresetn] [get_bd_pins axi_mem_intercon/ARESETN] [get_bd_pins axi_mem_intercon/M00_ARESETN] [get_bd_pins axi_mem_intercon/S00_ARESETN] [get_bd_pins axi_mem_intercon/S01_ARESETN] [get_bd_pins axi_mem_intercon/S02_ARESETN] [get_bd_pins axi_mem_intercon/S03_ARESETN] [get_bd_pins axi_mem_intercon/S04_ARESETN] [get_bd_pins axi_mem_intercon/S05_ARESETN] [get_bd_pins axi_mem_intercon/S06_ARESETN] [get_bd_pins axi_mem_intercon/S07_ARESETN] [get_bd_pins ps7_0_axi_periph/ARESETN] [get_bd_pins ps7_0_axi_periph/M00_ARESETN] [get_bd_pins ps7_0_axi_periph/M01_ARESETN] [get_bd_pins ps7_0_axi_periph/M02_ARESETN] [get_bd_pins ps7_0_axi_periph/M03_ARESETN] [get_bd_pins ps7_0_axi_periph/M04_ARESETN] [get_bd_pins ps7_0_axi_periph/M05_ARESETN] [get_bd_pins ps7_0_axi_periph/M06_ARESETN] [get_bd_pins ps7_0_axi_periph/M07_ARESETN] [get_bd_pins ps7_0_axi_periph/M08_ARESETN] [get_bd_pins ps7_0_axi_periph/M09_ARESETN] [get_bd_pins ps7_0_axi_periph/M10_ARESETN] [get_bd_pins ps7_0_axi_periph/M11_ARESETN] [get_bd_pins ps7_0_axi_periph/M12_ARESETN] [get_bd_pins ps7_0_axi_periph/S00_ARESETN] [get_bd_pins rst_ps7_0_100M/peripheral_aresetn] [get_bd_pins signal_detector_0/m00_axis_aresetn] [get_bd_pins signal_detector_1/m00_axis_aresetn] [get_bd_pins signal_detector_2/m00_axis_aresetn] [get_bd_pins signal_detector_3/m00_axis_aresetn] [get_bd_pins signal_detector_4/m00_axis_aresetn] [get_bd_pins signal_detector_5/m00_axis_aresetn] [get_bd_pins signal_detector_6/m00_axis_aresetn] [get_bd_pins signal_detector_7/m00_axis_aresetn] [get_bd_pins signal_generator_0/m00_axis_aresetn] [get_bd_pins util_vector_logic_1/Op1] [get_bd_pins util_vector_logic_2/Op1] [get_bd_pins util_vector_logic_3/Op1] [get_bd_pins util_vector_logic_4/Op1] [get_bd_pins util_vector_logic_5/Op1] [get_bd_pins util_vector_logic_6/Op1] [get_bd_pins util_vector_logic_7/Op1] [get_bd_pins util_vector_logic_8/Op1]
  connect_bd_net -net signal_detector_0_fifo_reset [get_bd_pins signal_detector_0/fifo_reset] [get_bd_pins util_vector_logic_1/Op2]
  connect_bd_net -net signal_detector_0_signal_state [get_bd_pins or_0/in0] [get_bd_pins signal_detector_0/signal_state] [get_bd_pins xlconcat_1/In0]
  connect_bd_net -net signal_detector_1_fifo_reset [get_bd_pins signal_detector_1/fifo_reset] [get_bd_pins util_vector_logic_2/Op2]
  connect_bd_net -net signal_detector_1_signal_state [get_bd_pins or_0/in1] [get_bd_pins signal_detector_1/signal_state] [get_bd_pins xlconcat_1/In1]
  connect_bd_net -net signal_detector_2_fifo_reset [get_bd_pins signal_detector_2/fifo_reset] [get_bd_pins util_vector_logic_3/Op2]
  connect_bd_net -net signal_detector_2_signal_state [get_bd_pins or_0/in2] [get_bd_pins signal_detector_2/signal_state] [get_bd_pins xlconcat_1/In2]
  connect_bd_net -net signal_detector_3_fifo_reset [get_bd_pins signal_detector_3/fifo_reset] [get_bd_pins util_vector_logic_4/Op2]
  connect_bd_net -net signal_detector_3_signal_state [get_bd_pins or_0/in3] [get_bd_pins signal_detector_3/signal_state] [get_bd_pins xlconcat_1/In3]
  connect_bd_net -net signal_detector_4_fifo_reset [get_bd_pins signal_detector_4/fifo_reset] [get_bd_pins util_vector_logic_5/Op2]
  connect_bd_net -net signal_detector_4_signal_state [get_bd_pins or_0/in4] [get_bd_pins signal_detector_4/signal_state] [get_bd_pins xlconcat_1/In4]
  connect_bd_net -net signal_detector_5_fifo_reset [get_bd_pins signal_detector_5/fifo_reset] [get_bd_pins util_vector_logic_6/Op2]
  connect_bd_net -net signal_detector_5_signal_state [get_bd_pins or_0/in5] [get_bd_pins signal_detector_5/signal_state] [get_bd_pins xlconcat_1/In5]
  connect_bd_net -net signal_detector_6_fifo_reset [get_bd_pins signal_detector_6/fifo_reset] [get_bd_pins util_vector_logic_7/Op2]
  connect_bd_net -net signal_detector_6_signal_state [get_bd_pins or_0/in6] [get_bd_pins signal_detector_6/signal_state] [get_bd_pins xlconcat_1/In6]
  connect_bd_net -net signal_detector_7_fifo_reset [get_bd_pins input_selector_0/fifo_reset_1] [get_bd_pins signal_detector_7/fifo_reset]
  connect_bd_net -net signal_detector_7_m00_axis_tdata [get_bd_pins input_selector_0/s01_axis_tdata] [get_bd_pins signal_detector_7/m00_axis_tdata]
  connect_bd_net -net signal_detector_7_m00_axis_tkeep [get_bd_pins input_selector_0/s01_axis_tkeep] [get_bd_pins signal_detector_7/m00_axis_tkeep]
  connect_bd_net -net signal_detector_7_m00_axis_tlast [get_bd_pins input_selector_0/s01_axis_tlast] [get_bd_pins signal_detector_7/m00_axis_tlast]
  connect_bd_net -net signal_detector_7_m00_axis_tvalid [get_bd_pins input_selector_0/s01_axis_tvalid] [get_bd_pins signal_detector_7/m00_axis_tvalid]
  connect_bd_net -net signal_detector_7_signal_state [get_bd_pins input_selector_0/signal_state_1] [get_bd_pins signal_detector_7/signal_state]
  connect_bd_net -net signal_generator_0_fifo_reset [get_bd_pins input_selector_0/fifo_reset_0] [get_bd_pins signal_generator_0/fifo_reset]
  connect_bd_net -net signal_generator_0_m00_axis_tdata [get_bd_pins input_selector_0/s00_axis_tdata] [get_bd_pins signal_generator_0/m00_axis_tdata]
  connect_bd_net -net signal_generator_0_m00_axis_tkeep [get_bd_pins input_selector_0/s00_axis_tkeep] [get_bd_pins signal_generator_0/m00_axis_tkeep]
  connect_bd_net -net signal_generator_0_m00_axis_tlast [get_bd_pins input_selector_0/s00_axis_tlast] [get_bd_pins signal_generator_0/m00_axis_tlast]
  connect_bd_net -net signal_generator_0_m00_axis_tvalid [get_bd_pins input_selector_0/s00_axis_tvalid] [get_bd_pins signal_generator_0/m00_axis_tvalid]
  connect_bd_net -net signal_generator_0_signal_state [get_bd_pins input_selector_0/signal_state_0] [get_bd_pins signal_generator_0/signal_state]
  connect_bd_net -net signal_input_0_out0 [get_bd_pins signal_input_0/out0] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net signal_input_0_out1 [get_bd_pins signal_detector_1/signal_input] [get_bd_pins signal_input_0/out1]
  connect_bd_net -net signal_input_0_out2 [get_bd_pins signal_detector_2/signal_input] [get_bd_pins signal_input_0/out2]
  connect_bd_net -net signal_input_0_out3 [get_bd_pins signal_detector_3/signal_input] [get_bd_pins signal_input_0/out3]
  connect_bd_net -net signal_input_0_out4 [get_bd_pins signal_detector_4/signal_input] [get_bd_pins signal_input_0/out4]
  connect_bd_net -net signal_input_0_out5 [get_bd_pins signal_detector_5/signal_input] [get_bd_pins signal_input_0/out5]
  connect_bd_net -net signal_input_0_out6 [get_bd_pins signal_detector_6/signal_input] [get_bd_pins signal_input_0/out6]
  connect_bd_net -net signal_input_0_out7 [get_bd_pins signal_detector_7/signal_input] [get_bd_pins signal_input_0/out7] [get_bd_pins util_vector_logic_10/Op1]
  connect_bd_net -net sws_8bits_1 [get_bd_ports sws_8bits] [get_bd_pins axi_gpio_2/gpio_io_i] [get_bd_pins enable_splitter_0/switch_input]
  connect_bd_net -net trigger_input_1 [get_bd_ports trigger_input] [get_bd_pins input_trigger_0/trigger_input]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins signal_detector_0/signal_input] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net util_vector_logic_10_Res [get_bd_pins signal_generator_0/signal_input] [get_bd_pins util_vector_logic_10/Res]
  connect_bd_net -net util_vector_logic_11_Res [get_bd_pins signal_input_0/signal_input] [get_bd_pins util_vector_logic_11/Res]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins fifo_generator_0/s_aresetn] [get_bd_pins hold_signal_0/m00_axis_aresetn] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins fifo_generator_1/s_aresetn] [get_bd_pins hold_signal_1/m00_axis_aresetn] [get_bd_pins util_vector_logic_2/Res]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins fifo_generator_2/s_aresetn] [get_bd_pins hold_signal_2/m00_axis_aresetn] [get_bd_pins util_vector_logic_3/Res]
  connect_bd_net -net util_vector_logic_4_Res [get_bd_pins fifo_generator_3/s_aresetn] [get_bd_pins hold_signal_3/m00_axis_aresetn] [get_bd_pins util_vector_logic_4/Res]
  connect_bd_net -net util_vector_logic_5_Res [get_bd_pins fifo_generator_4/s_aresetn] [get_bd_pins hold_signal_4/m00_axis_aresetn] [get_bd_pins util_vector_logic_5/Res]
  connect_bd_net -net util_vector_logic_6_Res [get_bd_pins fifo_generator_5/s_aresetn] [get_bd_pins hold_signal_5/m00_axis_aresetn] [get_bd_pins util_vector_logic_6/Res]
  connect_bd_net -net util_vector_logic_7_Res [get_bd_pins fifo_generator_6/s_aresetn] [get_bd_pins hold_signal_6/m00_axis_aresetn] [get_bd_pins util_vector_logic_7/Res]
  connect_bd_net -net util_vector_logic_8_Res [get_bd_pins fifo_generator_7/s_aresetn] [get_bd_pins hold_signal_7/m00_axis_aresetn] [get_bd_pins util_vector_logic_8/Res]
  connect_bd_net -net util_vector_logic_9_Res [get_bd_pins signal_generator_0/enabled] [get_bd_pins util_vector_logic_9/Res]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins processing_system7_0/IRQ_F2P] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconcat_1_dout [get_bd_ports leds_8bits1] [get_bd_pins xlconcat_1/dout]

  # Create address segments
  assign_bd_address -offset 0x10000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_dma_0/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] -force
  assign_bd_address -offset 0x10000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_dma_1/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] -force
  assign_bd_address -offset 0x10000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_dma_2/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] -force
  assign_bd_address -offset 0x10000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_dma_3/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] -force
  assign_bd_address -offset 0x10000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_dma_4/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] -force
  assign_bd_address -offset 0x10000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_dma_5/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] -force
  assign_bd_address -offset 0x10000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_dma_6/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] -force
  assign_bd_address -offset 0x10000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_dma_7/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] -force
  assign_bd_address -offset 0x40400000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_dma_0/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0x40410000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_dma_1/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0x40420000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_dma_2/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0x40430000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_dma_3/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0x40440000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_dma_4/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0x40450000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_dma_5/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0x40460000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_dma_6/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0x40470000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_dma_7/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0x41200000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x41210000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_1/S_AXI/Reg] -force
  assign_bd_address -offset 0x41220000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_2/S_AXI/Reg] -force
  assign_bd_address -offset 0x41230000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_3/S_AXI/Reg] -force
  assign_bd_address -offset 0x41240000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_4/S_AXI/Reg] -force


  # Restore current instance
  current_bd_instance $oldCurInst

}
# End of create_root_design()




proc available_tcl_procs { } {
   puts "##################################################################"
   puts "# Available Tcl procedures to recreate hierarchical blocks:"
   puts "#"
   puts "#    create_root_design"
   puts "#"
   puts "#"
   puts "# The following procedures will create hiearchical blocks with addressing "
   puts "# for IPs within those blocks and their sub-hierarchical blocks. Addressing "
   puts "# will not be handled outside those blocks:"
   puts "#"
   puts "#    create_root_design"
   puts "#"
   puts "##################################################################"
}

available_tcl_procs
