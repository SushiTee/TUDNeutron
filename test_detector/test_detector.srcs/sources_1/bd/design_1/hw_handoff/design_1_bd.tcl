
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

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg484-1
   set_property BOARD_PART em.avnet.com:zed:part0:1.4 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

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

  # Create ports
  set clock [ create_bd_port -dir I -type clk -freq_hz 100000000 clock ]
  set data [ create_bd_port -dir O -from 31 -to 0 data ]
  set detector_running [ create_bd_port -dir O detector_running ]
  set detector_tlast [ create_bd_port -dir O detector_tlast ]
  set detector_tvalid [ create_bd_port -dir O detector_tvalid ]
  set enabled [ create_bd_port -dir I enabled ]
  set fifo_reset [ create_bd_port -dir O -from 0 -to 0 fifo_reset ]
  set last [ create_bd_port -dir O last ]
  set number_words [ create_bd_port -dir I -from 15 -to 0 number_words ]
  set rd_fifo_fill [ create_bd_port -dir O -from 31 -to 0 rd_fifo_fill ]
  set ready [ create_bd_port -dir I ready ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set signal_input [ create_bd_port -dir I -from 7 -to 0 signal_input ]
  set signal_state [ create_bd_port -dir O signal_state ]
  set strb [ create_bd_port -dir O -from 3 -to 0 strb ]
  set valid [ create_bd_port -dir O valid ]
  set wr_fifo_fill [ create_bd_port -dir O -from 31 -to 0 wr_fifo_fill ]

  # Create instance: axis_data_fifo_0, and set properties
  set axis_data_fifo_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 axis_data_fifo_0 ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {1024} \
   CONFIG.HAS_RD_DATA_COUNT {1} \
   CONFIG.HAS_TKEEP {1} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.HAS_WR_DATA_COUNT {1} \
 ] $axis_data_fifo_0

  # Create instance: signal_detector_0, and set properties
  set signal_detector_0 [ create_bd_cell -type ip -vlnv akr.neutron:user:signal_detector:1.0 signal_detector_0 ]
  set_property -dict [ list \
   CONFIG.C_M00_AXIS_START_COUNT {32} \
 ] $signal_detector_0

  # Create instance: signal_input_0, and set properties
  set signal_input_0 [ create_bd_cell -type ip -vlnv user.org:user:signal_input:1.0 signal_input_0 ]

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {and} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_andgate.png} \
 ] $util_vector_logic_0

  # Create interface connections
  connect_bd_intf_net -intf_net signal_detector_0_M00_AXIS [get_bd_intf_pins axis_data_fifo_0/S_AXIS] [get_bd_intf_pins signal_detector_0/M00_AXIS]

  # Create port connections
  connect_bd_net -net axis_data_fifo_0_axis_rd_data_count [get_bd_ports rd_fifo_fill] [get_bd_pins axis_data_fifo_0/axis_rd_data_count]
  connect_bd_net -net axis_data_fifo_0_axis_wr_data_count [get_bd_ports wr_fifo_fill] [get_bd_pins axis_data_fifo_0/axis_wr_data_count]
  connect_bd_net -net axis_data_fifo_0_m_axis_tdata [get_bd_ports data] [get_bd_pins axis_data_fifo_0/m_axis_tdata]
  connect_bd_net -net axis_data_fifo_0_m_axis_tkeep [get_bd_ports strb] [get_bd_pins axis_data_fifo_0/m_axis_tkeep]
  connect_bd_net -net axis_data_fifo_0_m_axis_tlast [get_bd_ports last] [get_bd_pins axis_data_fifo_0/m_axis_tlast]
  connect_bd_net -net axis_data_fifo_0_m_axis_tvalid [get_bd_ports valid] [get_bd_pins axis_data_fifo_0/m_axis_tvalid]
  connect_bd_net -net clock_1 [get_bd_ports clock] [get_bd_pins axis_data_fifo_0/s_axis_aclk] [get_bd_pins signal_detector_0/m00_axis_aclk]
  connect_bd_net -net enabled_1 [get_bd_ports enabled] [get_bd_pins signal_detector_0/enabled]
  connect_bd_net -net number_words_1 [get_bd_ports number_words] [get_bd_pins signal_detector_0/number_words]
  connect_bd_net -net ready_1 [get_bd_ports ready] [get_bd_pins axis_data_fifo_0/m_axis_tready]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins signal_detector_0/m00_axis_aresetn] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net signal_detector_0_fifo_reset [get_bd_ports detector_running] [get_bd_pins signal_detector_0/fifo_reset] [get_bd_pins util_vector_logic_0/Op2]
  connect_bd_net -net signal_detector_0_m00_axis_tlast [get_bd_ports detector_tlast] [get_bd_pins axis_data_fifo_0/s_axis_tlast] [get_bd_pins signal_detector_0/m00_axis_tlast]
  connect_bd_net -net signal_detector_0_m00_axis_tvalid [get_bd_ports detector_tvalid] [get_bd_pins axis_data_fifo_0/s_axis_tvalid] [get_bd_pins signal_detector_0/m00_axis_tvalid]
  connect_bd_net -net signal_detector_0_signal_state [get_bd_ports signal_state] [get_bd_pins signal_detector_0/signal_state]
  connect_bd_net -net signal_input_0_out0 [get_bd_pins signal_detector_0/signal_input] [get_bd_pins signal_input_0/out0]
  connect_bd_net -net signal_input_1_1 [get_bd_ports signal_input] [get_bd_pins signal_input_0/signal_input]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_ports fifo_reset] [get_bd_pins axis_data_fifo_0/s_axis_aresetn] [get_bd_pins util_vector_logic_0/Res]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


