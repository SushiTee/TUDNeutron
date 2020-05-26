# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  ipgui::add_page $IPINST -name "Page 0"

  set IOSTANDARD [ipgui::add_param $IPINST -name "IOSTANDARD"]
  set_property tooltip {select I/Standard} ${IOSTANDARD}

}

proc update_PARAM_VALUE.IOSTANDARD { PARAM_VALUE.IOSTANDARD } {
	# Procedure called to update IOSTANDARD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IOSTANDARD { PARAM_VALUE.IOSTANDARD } {
	# Procedure called to validate IOSTANDARD
	return true
}


proc update_MODELPARAM_VALUE.IOSTANDARD { MODELPARAM_VALUE.IOSTANDARD PARAM_VALUE.IOSTANDARD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IOSTANDARD}] ${MODELPARAM_VALUE.IOSTANDARD}
}

