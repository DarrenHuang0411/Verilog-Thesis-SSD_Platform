# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Global_Setting [ipgui::add_page $IPINST -name "Global Setting"]
  ipgui::add_param $IPINST -name "Mapping_Table_Header_BaseAddress" -parent ${Global_Setting}
  ipgui::add_param $IPINST -name "OFFSET_CONST" -parent ${Global_Setting}
  ipgui::add_param $IPINST -name "C_CWBP_DATA_WIDTH" -parent ${Global_Setting}

  #Adding Page
  set UW_C0 [ipgui::add_page $IPINST -name "UW_C0" -display_name {UW_C0}]
  ipgui::add_param $IPINST -name "C_UW_Channel0_FLASH_CHANNEL" -parent ${UW_C0}
  set C_UW_Channel0_TARGET_SLAVE_BASE_ADDR [ipgui::add_param $IPINST -name "C_UW_Channel0_TARGET_SLAVE_BASE_ADDR" -parent ${UW_C0}]
  set_property tooltip {Base address of targeted slave} ${C_UW_Channel0_TARGET_SLAVE_BASE_ADDR}
  ipgui::add_param $IPINST -name "C_UW_Channel0_BRAM_BASE_ADDR" -parent ${UW_C0}
  set C_UW_Channel0_ID_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel0_ID_WIDTH" -parent ${UW_C0}]
  set_property tooltip {Thread ID Width} ${C_UW_Channel0_ID_WIDTH}
  set C_UW_Channel0_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel0_ADDR_WIDTH" -parent ${UW_C0}]
  set_property tooltip {Width of Address Bus} ${C_UW_Channel0_ADDR_WIDTH}
  set C_UW_Channel0_DATA_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel0_DATA_WIDTH" -parent ${UW_C0} -widget comboBox]
  set_property tooltip {Width of Data Bus} ${C_UW_Channel0_DATA_WIDTH}
  set C_UW_Channel0_BURST_LEN [ipgui::add_param $IPINST -name "C_UW_Channel0_BURST_LEN" -parent ${UW_C0} -widget comboBox]
  set_property tooltip {Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths} ${C_UW_Channel0_BURST_LEN}
  set C_UW_Channel0_BUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel0_BUSER_WIDTH" -parent ${UW_C0}]
  set_property tooltip {Width of User Response Bus} ${C_UW_Channel0_BUSER_WIDTH}
  set C_UW_Channel0_AWUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel0_AWUSER_WIDTH" -parent ${UW_C0}]
  set_property tooltip {Width of User Write Address Bus} ${C_UW_Channel0_AWUSER_WIDTH}
  set C_UW_Channel0_WUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel0_WUSER_WIDTH" -parent ${UW_C0}]
  set_property tooltip {Width of User Write Data Bus} ${C_UW_Channel0_WUSER_WIDTH}
  set C_UW_Channel0_ARUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel0_ARUSER_WIDTH" -parent ${UW_C0}]
  set_property tooltip {Width of User Read Address Bus} ${C_UW_Channel0_ARUSER_WIDTH}
  set C_UW_Channel0_RUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel0_RUSER_WIDTH" -parent ${UW_C0}]
  set_property tooltip {Width of User Read Data Bus} ${C_UW_Channel0_RUSER_WIDTH}

  #Adding Page
  set UW_C1 [ipgui::add_page $IPINST -name "UW_C1" -display_name {UW_C1}]
  ipgui::add_param $IPINST -name "C_UW_Channel1_FLASH_CHANNEL" -parent ${UW_C1}
  set C_UW_Channel1_TARGET_SLAVE_BASE_ADDR [ipgui::add_param $IPINST -name "C_UW_Channel1_TARGET_SLAVE_BASE_ADDR" -parent ${UW_C1}]
  set_property tooltip {Base address of targeted slave} ${C_UW_Channel1_TARGET_SLAVE_BASE_ADDR}
  ipgui::add_param $IPINST -name "C_UW_Channel1_BRAM_BASE_ADDR" -parent ${UW_C1}
  set C_UW_Channel1_ID_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel1_ID_WIDTH" -parent ${UW_C1}]
  set_property tooltip {Thread ID Width} ${C_UW_Channel1_ID_WIDTH}
  set C_UW_Channel1_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel1_ADDR_WIDTH" -parent ${UW_C1}]
  set_property tooltip {Width of Address Bus} ${C_UW_Channel1_ADDR_WIDTH}
  set C_UW_Channel1_DATA_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel1_DATA_WIDTH" -parent ${UW_C1} -widget comboBox]
  set_property tooltip {Width of Data Bus} ${C_UW_Channel1_DATA_WIDTH}
  set C_UW_Channel1_BURST_LEN [ipgui::add_param $IPINST -name "C_UW_Channel1_BURST_LEN" -parent ${UW_C1} -widget comboBox]
  set_property tooltip {Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths} ${C_UW_Channel1_BURST_LEN}
  set C_UW_Channel1_BUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel1_BUSER_WIDTH" -parent ${UW_C1}]
  set_property tooltip {Width of User Response Bus} ${C_UW_Channel1_BUSER_WIDTH}
  set C_UW_Channel1_AWUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel1_AWUSER_WIDTH" -parent ${UW_C1}]
  set_property tooltip {Width of User Write Address Bus} ${C_UW_Channel1_AWUSER_WIDTH}
  set C_UW_Channel1_WUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel1_WUSER_WIDTH" -parent ${UW_C1}]
  set_property tooltip {Width of User Write Data Bus} ${C_UW_Channel1_WUSER_WIDTH}
  set C_UW_Channel1_ARUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel1_ARUSER_WIDTH" -parent ${UW_C1}]
  set_property tooltip {Width of User Read Address Bus} ${C_UW_Channel1_ARUSER_WIDTH}
  set C_UW_Channel1_RUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel1_RUSER_WIDTH" -parent ${UW_C1}]
  set_property tooltip {Width of User Read Data Bus} ${C_UW_Channel1_RUSER_WIDTH}

  #Adding Page
  set UW_C2 [ipgui::add_page $IPINST -name "UW_C2" -display_name {UW_C2}]
  ipgui::add_param $IPINST -name "C_UW_Channel2_FLASH_CHANNEL" -parent ${UW_C2}
  set C_UW_Channel2_TARGET_SLAVE_BASE_ADDR [ipgui::add_param $IPINST -name "C_UW_Channel2_TARGET_SLAVE_BASE_ADDR" -parent ${UW_C2}]
  set_property tooltip {Base address of targeted slave} ${C_UW_Channel2_TARGET_SLAVE_BASE_ADDR}
  ipgui::add_param $IPINST -name "C_UW_Channel2_BRAM_BASE_ADDR" -parent ${UW_C2}
  set C_UW_Channel2_ID_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel2_ID_WIDTH" -parent ${UW_C2}]
  set_property tooltip {Thread ID Width} ${C_UW_Channel2_ID_WIDTH}
  set C_UW_Channel2_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel2_ADDR_WIDTH" -parent ${UW_C2}]
  set_property tooltip {Width of Address Bus} ${C_UW_Channel2_ADDR_WIDTH}
  set C_UW_Channel2_DATA_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel2_DATA_WIDTH" -parent ${UW_C2} -widget comboBox]
  set_property tooltip {Width of Data Bus} ${C_UW_Channel2_DATA_WIDTH}
  set C_UW_Channel2_BURST_LEN [ipgui::add_param $IPINST -name "C_UW_Channel2_BURST_LEN" -parent ${UW_C2} -widget comboBox]
  set_property tooltip {Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths} ${C_UW_Channel2_BURST_LEN}
  set C_UW_Channel2_BUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel2_BUSER_WIDTH" -parent ${UW_C2}]
  set_property tooltip {Width of User Response Bus} ${C_UW_Channel2_BUSER_WIDTH}
  set C_UW_Channel2_AWUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel2_AWUSER_WIDTH" -parent ${UW_C2}]
  set_property tooltip {Width of User Write Address Bus} ${C_UW_Channel2_AWUSER_WIDTH}
  set C_UW_Channel2_WUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel2_WUSER_WIDTH" -parent ${UW_C2}]
  set_property tooltip {Width of User Write Data Bus} ${C_UW_Channel2_WUSER_WIDTH}
  set C_UW_Channel2_ARUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel2_ARUSER_WIDTH" -parent ${UW_C2}]
  set_property tooltip {Width of User Read Address Bus} ${C_UW_Channel2_ARUSER_WIDTH}
  set C_UW_Channel2_RUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel2_RUSER_WIDTH" -parent ${UW_C2}]
  set_property tooltip {Width of User Read Data Bus} ${C_UW_Channel2_RUSER_WIDTH}

  #Adding Page
  set UW_C3 [ipgui::add_page $IPINST -name "UW_C3" -display_name {UW_C3}]
  ipgui::add_param $IPINST -name "C_UW_Channel3_FLASH_CHANNEL" -parent ${UW_C3}
  set C_UW_Channel3_TARGET_SLAVE_BASE_ADDR [ipgui::add_param $IPINST -name "C_UW_Channel3_TARGET_SLAVE_BASE_ADDR" -parent ${UW_C3}]
  set_property tooltip {Base address of targeted slave} ${C_UW_Channel3_TARGET_SLAVE_BASE_ADDR}
  ipgui::add_param $IPINST -name "C_UW_Channel3_BRAM_BASE_ADDR" -parent ${UW_C3}
  set C_UW_Channel3_ID_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel3_ID_WIDTH" -parent ${UW_C3}]
  set_property tooltip {Thread ID Width} ${C_UW_Channel3_ID_WIDTH}
  set C_UW_Channel3_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel3_ADDR_WIDTH" -parent ${UW_C3}]
  set_property tooltip {Width of Address Bus} ${C_UW_Channel3_ADDR_WIDTH}
  set C_UW_Channel3_DATA_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel3_DATA_WIDTH" -parent ${UW_C3} -widget comboBox]
  set_property tooltip {Width of Data Bus} ${C_UW_Channel3_DATA_WIDTH}
  set C_UW_Channel3_BURST_LEN [ipgui::add_param $IPINST -name "C_UW_Channel3_BURST_LEN" -parent ${UW_C3} -widget comboBox]
  set_property tooltip {Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths} ${C_UW_Channel3_BURST_LEN}
  set C_UW_Channel3_BUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel3_BUSER_WIDTH" -parent ${UW_C3}]
  set_property tooltip {Width of User Response Bus} ${C_UW_Channel3_BUSER_WIDTH}
  set C_UW_Channel3_AWUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel3_AWUSER_WIDTH" -parent ${UW_C3}]
  set_property tooltip {Width of User Write Address Bus} ${C_UW_Channel3_AWUSER_WIDTH}
  set C_UW_Channel3_WUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel3_WUSER_WIDTH" -parent ${UW_C3}]
  set_property tooltip {Width of User Write Data Bus} ${C_UW_Channel3_WUSER_WIDTH}
  set C_UW_Channel3_ARUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel3_ARUSER_WIDTH" -parent ${UW_C3}]
  set_property tooltip {Width of User Read Address Bus} ${C_UW_Channel3_ARUSER_WIDTH}
  set C_UW_Channel3_RUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel3_RUSER_WIDTH" -parent ${UW_C3}]
  set_property tooltip {Width of User Read Data Bus} ${C_UW_Channel3_RUSER_WIDTH}

  #Adding Page
  set UW_C4 [ipgui::add_page $IPINST -name "UW_C4" -display_name {UW_C4}]
  ipgui::add_param $IPINST -name "C_UW_Channel4_FLASH_CHANNEL" -parent ${UW_C4}
  set C_UW_Channel4_TARGET_SLAVE_BASE_ADDR [ipgui::add_param $IPINST -name "C_UW_Channel4_TARGET_SLAVE_BASE_ADDR" -parent ${UW_C4}]
  set_property tooltip {Base address of targeted slave} ${C_UW_Channel4_TARGET_SLAVE_BASE_ADDR}
  ipgui::add_param $IPINST -name "C_UW_Channel4_BRAM_BASE_ADDR" -parent ${UW_C4}
  set C_UW_Channel4_ID_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel4_ID_WIDTH" -parent ${UW_C4}]
  set_property tooltip {Thread ID Width} ${C_UW_Channel4_ID_WIDTH}
  set C_UW_Channel4_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel4_ADDR_WIDTH" -parent ${UW_C4}]
  set_property tooltip {Width of Address Bus} ${C_UW_Channel4_ADDR_WIDTH}
  set C_UW_Channel4_DATA_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel4_DATA_WIDTH" -parent ${UW_C4} -widget comboBox]
  set_property tooltip {Width of Data Bus} ${C_UW_Channel4_DATA_WIDTH}
  set C_UW_Channel4_BURST_LEN [ipgui::add_param $IPINST -name "C_UW_Channel4_BURST_LEN" -parent ${UW_C4} -widget comboBox]
  set_property tooltip {Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths} ${C_UW_Channel4_BURST_LEN}
  set C_UW_Channel4_BUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel4_BUSER_WIDTH" -parent ${UW_C4}]
  set_property tooltip {Width of User Response Bus} ${C_UW_Channel4_BUSER_WIDTH}
  set C_UW_Channel4_AWUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel4_AWUSER_WIDTH" -parent ${UW_C4}]
  set_property tooltip {Width of User Write Address Bus} ${C_UW_Channel4_AWUSER_WIDTH}
  set C_UW_Channel4_WUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel4_WUSER_WIDTH" -parent ${UW_C4}]
  set_property tooltip {Width of User Write Data Bus} ${C_UW_Channel4_WUSER_WIDTH}
  set C_UW_Channel4_ARUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel4_ARUSER_WIDTH" -parent ${UW_C4}]
  set_property tooltip {Width of User Read Address Bus} ${C_UW_Channel4_ARUSER_WIDTH}
  set C_UW_Channel4_RUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel4_RUSER_WIDTH" -parent ${UW_C4}]
  set_property tooltip {Width of User Read Data Bus} ${C_UW_Channel4_RUSER_WIDTH}

  #Adding Page
  set UW_C5 [ipgui::add_page $IPINST -name "UW_C5" -display_name {UW_C5}]
  ipgui::add_param $IPINST -name "C_UW_Channel5_FLASH_CHANNEL" -parent ${UW_C5}
  set C_UW_Channel5_TARGET_SLAVE_BASE_ADDR [ipgui::add_param $IPINST -name "C_UW_Channel5_TARGET_SLAVE_BASE_ADDR" -parent ${UW_C5}]
  set_property tooltip {Base address of targeted slave} ${C_UW_Channel5_TARGET_SLAVE_BASE_ADDR}
  ipgui::add_param $IPINST -name "C_UW_Channel5_BRAM_BASE_ADDR" -parent ${UW_C5}
  set C_UW_Channel5_ID_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel5_ID_WIDTH" -parent ${UW_C5}]
  set_property tooltip {Thread ID Width} ${C_UW_Channel5_ID_WIDTH}
  set C_UW_Channel5_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel5_ADDR_WIDTH" -parent ${UW_C5}]
  set_property tooltip {Width of Address Bus} ${C_UW_Channel5_ADDR_WIDTH}
  set C_UW_Channel5_DATA_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel5_DATA_WIDTH" -parent ${UW_C5} -widget comboBox]
  set_property tooltip {Width of Data Bus} ${C_UW_Channel5_DATA_WIDTH}
  set C_UW_Channel5_BURST_LEN [ipgui::add_param $IPINST -name "C_UW_Channel5_BURST_LEN" -parent ${UW_C5} -widget comboBox]
  set_property tooltip {Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths} ${C_UW_Channel5_BURST_LEN}
  set C_UW_Channel5_BUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel5_BUSER_WIDTH" -parent ${UW_C5}]
  set_property tooltip {Width of User Response Bus} ${C_UW_Channel5_BUSER_WIDTH}
  set C_UW_Channel5_AWUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel5_AWUSER_WIDTH" -parent ${UW_C5}]
  set_property tooltip {Width of User Write Address Bus} ${C_UW_Channel5_AWUSER_WIDTH}
  set C_UW_Channel5_WUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel5_WUSER_WIDTH" -parent ${UW_C5}]
  set_property tooltip {Width of User Write Data Bus} ${C_UW_Channel5_WUSER_WIDTH}
  set C_UW_Channel5_ARUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel5_ARUSER_WIDTH" -parent ${UW_C5}]
  set_property tooltip {Width of User Read Address Bus} ${C_UW_Channel5_ARUSER_WIDTH}
  set C_UW_Channel5_RUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel5_RUSER_WIDTH" -parent ${UW_C5}]
  set_property tooltip {Width of User Read Data Bus} ${C_UW_Channel5_RUSER_WIDTH}

  #Adding Page
  set UW_C6 [ipgui::add_page $IPINST -name "UW_C6" -display_name {UW_C6}]
  ipgui::add_param $IPINST -name "C_UW_Channel6_FLASH_CHANNEL" -parent ${UW_C6}
  set C_UW_Channel6_TARGET_SLAVE_BASE_ADDR [ipgui::add_param $IPINST -name "C_UW_Channel6_TARGET_SLAVE_BASE_ADDR" -parent ${UW_C6}]
  set_property tooltip {Base address of targeted slave} ${C_UW_Channel6_TARGET_SLAVE_BASE_ADDR}
  ipgui::add_param $IPINST -name "C_UW_Channel6_BRAM_BASE_ADDR" -parent ${UW_C6}
  set C_UW_Channel6_ID_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel6_ID_WIDTH" -parent ${UW_C6}]
  set_property tooltip {Thread ID Width} ${C_UW_Channel6_ID_WIDTH}
  set C_UW_Channel6_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel6_ADDR_WIDTH" -parent ${UW_C6}]
  set_property tooltip {Width of Address Bus} ${C_UW_Channel6_ADDR_WIDTH}
  set C_UW_Channel6_DATA_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel6_DATA_WIDTH" -parent ${UW_C6} -widget comboBox]
  set_property tooltip {Width of Data Bus} ${C_UW_Channel6_DATA_WIDTH}
  set C_UW_Channel6_BURST_LEN [ipgui::add_param $IPINST -name "C_UW_Channel6_BURST_LEN" -parent ${UW_C6} -widget comboBox]
  set_property tooltip {Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths} ${C_UW_Channel6_BURST_LEN}
  set C_UW_Channel6_BUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel6_BUSER_WIDTH" -parent ${UW_C6}]
  set_property tooltip {Width of User Response Bus} ${C_UW_Channel6_BUSER_WIDTH}
  set C_UW_Channel6_AWUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel6_AWUSER_WIDTH" -parent ${UW_C6}]
  set_property tooltip {Width of User Write Address Bus} ${C_UW_Channel6_AWUSER_WIDTH}
  set C_UW_Channel6_WUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel6_WUSER_WIDTH" -parent ${UW_C6}]
  set_property tooltip {Width of User Write Data Bus} ${C_UW_Channel6_WUSER_WIDTH}
  set C_UW_Channel6_ARUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel6_ARUSER_WIDTH" -parent ${UW_C6}]
  set_property tooltip {Width of User Read Address Bus} ${C_UW_Channel6_ARUSER_WIDTH}
  set C_UW_Channel6_RUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel6_RUSER_WIDTH" -parent ${UW_C6}]
  set_property tooltip {Width of User Read Data Bus} ${C_UW_Channel6_RUSER_WIDTH}

  #Adding Page
  set UW_C7 [ipgui::add_page $IPINST -name "UW_C7" -display_name {UW_C7}]
  ipgui::add_param $IPINST -name "C_UW_Channel7_FLASH_CHANNEL" -parent ${UW_C7}
  set C_UW_Channel7_TARGET_SLAVE_BASE_ADDR [ipgui::add_param $IPINST -name "C_UW_Channel7_TARGET_SLAVE_BASE_ADDR" -parent ${UW_C7}]
  set_property tooltip {Base address of targeted slave} ${C_UW_Channel7_TARGET_SLAVE_BASE_ADDR}
  ipgui::add_param $IPINST -name "C_UW_Channel7_BRAM_BASE_ADDR" -parent ${UW_C7}
  set C_UW_Channel7_ID_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel7_ID_WIDTH" -parent ${UW_C7}]
  set_property tooltip {Thread ID Width} ${C_UW_Channel7_ID_WIDTH}
  set C_UW_Channel7_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel7_ADDR_WIDTH" -parent ${UW_C7}]
  set_property tooltip {Width of Address Bus} ${C_UW_Channel7_ADDR_WIDTH}
  set C_UW_Channel7_DATA_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel7_DATA_WIDTH" -parent ${UW_C7} -widget comboBox]
  set_property tooltip {Width of Data Bus} ${C_UW_Channel7_DATA_WIDTH}
  set C_UW_Channel7_BURST_LEN [ipgui::add_param $IPINST -name "C_UW_Channel7_BURST_LEN" -parent ${UW_C7} -widget comboBox]
  set_property tooltip {Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths} ${C_UW_Channel7_BURST_LEN}
  set C_UW_Channel7_BUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel7_BUSER_WIDTH" -parent ${UW_C7}]
  set_property tooltip {Width of User Response Bus} ${C_UW_Channel7_BUSER_WIDTH}
  set C_UW_Channel7_AWUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel7_AWUSER_WIDTH" -parent ${UW_C7}]
  set_property tooltip {Width of User Write Address Bus} ${C_UW_Channel7_AWUSER_WIDTH}
  set C_UW_Channel7_WUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel7_WUSER_WIDTH" -parent ${UW_C7}]
  set_property tooltip {Width of User Write Data Bus} ${C_UW_Channel7_WUSER_WIDTH}
  set C_UW_Channel7_ARUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel7_ARUSER_WIDTH" -parent ${UW_C7}]
  set_property tooltip {Width of User Read Address Bus} ${C_UW_Channel7_ARUSER_WIDTH}
  set C_UW_Channel7_RUSER_WIDTH [ipgui::add_param $IPINST -name "C_UW_Channel7_RUSER_WIDTH" -parent ${UW_C7}]
  set_property tooltip {Width of User Read Data Bus} ${C_UW_Channel7_RUSER_WIDTH}

  #Adding Page
  set HOST_TRANS [ipgui::add_page $IPINST -name "HOST_TRANS" -display_name {HOST_TRANS}]
  ipgui::add_param $IPINST -name "C_HOST_DATA_TRANSFER_TARGET_SLAVE_BASE_ADDR" -parent ${HOST_TRANS}
  ipgui::add_param $IPINST -name "C_HOST_DATA_TRANSFER_ID_WIDTH" -parent ${HOST_TRANS}
  ipgui::add_param $IPINST -name "C_HOST_DATA_TRANSFER_ADDR_WIDTH" -parent ${HOST_TRANS}
  ipgui::add_param $IPINST -name "C_HOST_DATA_TRANSFER_DATA_WIDTH" -parent ${HOST_TRANS}
  ipgui::add_param $IPINST -name "C_HOST_DATA_TRANSFER_BURST_LEN" -parent ${HOST_TRANS}
  ipgui::add_param $IPINST -name "C_HOST_DATA_TRANSFER_BUSER_WIDTH" -parent ${HOST_TRANS}
  ipgui::add_param $IPINST -name "C_HOST_DATA_TRANSFER_AWUSER_WIDTH" -parent ${HOST_TRANS}
  ipgui::add_param $IPINST -name "C_HOST_DATA_TRANSFER_WUSER_WIDTH" -parent ${HOST_TRANS}
  ipgui::add_param $IPINST -name "C_HOST_DATA_TRANSFER_ARUSER_WIDTH" -parent ${HOST_TRANS}
  ipgui::add_param $IPINST -name "C_HOST_DATA_TRANSFER_RUSER_WIDTH" -parent ${HOST_TRANS}


}

proc update_PARAM_VALUE.C_CWBP_DATA_WIDTH { PARAM_VALUE.C_CWBP_DATA_WIDTH } {
	# Procedure called to update C_CWBP_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CWBP_DATA_WIDTH { PARAM_VALUE.C_CWBP_DATA_WIDTH } {
	# Procedure called to validate C_CWBP_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_HOST_DATA_TRANSFER_ADDR_WIDTH { PARAM_VALUE.C_HOST_DATA_TRANSFER_ADDR_WIDTH } {
	# Procedure called to update C_HOST_DATA_TRANSFER_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HOST_DATA_TRANSFER_ADDR_WIDTH { PARAM_VALUE.C_HOST_DATA_TRANSFER_ADDR_WIDTH } {
	# Procedure called to validate C_HOST_DATA_TRANSFER_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_HOST_DATA_TRANSFER_ARUSER_WIDTH { PARAM_VALUE.C_HOST_DATA_TRANSFER_ARUSER_WIDTH } {
	# Procedure called to update C_HOST_DATA_TRANSFER_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HOST_DATA_TRANSFER_ARUSER_WIDTH { PARAM_VALUE.C_HOST_DATA_TRANSFER_ARUSER_WIDTH } {
	# Procedure called to validate C_HOST_DATA_TRANSFER_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_HOST_DATA_TRANSFER_AWUSER_WIDTH { PARAM_VALUE.C_HOST_DATA_TRANSFER_AWUSER_WIDTH } {
	# Procedure called to update C_HOST_DATA_TRANSFER_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HOST_DATA_TRANSFER_AWUSER_WIDTH { PARAM_VALUE.C_HOST_DATA_TRANSFER_AWUSER_WIDTH } {
	# Procedure called to validate C_HOST_DATA_TRANSFER_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_HOST_DATA_TRANSFER_BURST_LEN { PARAM_VALUE.C_HOST_DATA_TRANSFER_BURST_LEN } {
	# Procedure called to update C_HOST_DATA_TRANSFER_BURST_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HOST_DATA_TRANSFER_BURST_LEN { PARAM_VALUE.C_HOST_DATA_TRANSFER_BURST_LEN } {
	# Procedure called to validate C_HOST_DATA_TRANSFER_BURST_LEN
	return true
}

proc update_PARAM_VALUE.C_HOST_DATA_TRANSFER_BUSER_WIDTH { PARAM_VALUE.C_HOST_DATA_TRANSFER_BUSER_WIDTH } {
	# Procedure called to update C_HOST_DATA_TRANSFER_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HOST_DATA_TRANSFER_BUSER_WIDTH { PARAM_VALUE.C_HOST_DATA_TRANSFER_BUSER_WIDTH } {
	# Procedure called to validate C_HOST_DATA_TRANSFER_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_HOST_DATA_TRANSFER_DATA_WIDTH { PARAM_VALUE.C_HOST_DATA_TRANSFER_DATA_WIDTH } {
	# Procedure called to update C_HOST_DATA_TRANSFER_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HOST_DATA_TRANSFER_DATA_WIDTH { PARAM_VALUE.C_HOST_DATA_TRANSFER_DATA_WIDTH } {
	# Procedure called to validate C_HOST_DATA_TRANSFER_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_HOST_DATA_TRANSFER_ID_WIDTH { PARAM_VALUE.C_HOST_DATA_TRANSFER_ID_WIDTH } {
	# Procedure called to update C_HOST_DATA_TRANSFER_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HOST_DATA_TRANSFER_ID_WIDTH { PARAM_VALUE.C_HOST_DATA_TRANSFER_ID_WIDTH } {
	# Procedure called to validate C_HOST_DATA_TRANSFER_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_HOST_DATA_TRANSFER_RUSER_WIDTH { PARAM_VALUE.C_HOST_DATA_TRANSFER_RUSER_WIDTH } {
	# Procedure called to update C_HOST_DATA_TRANSFER_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HOST_DATA_TRANSFER_RUSER_WIDTH { PARAM_VALUE.C_HOST_DATA_TRANSFER_RUSER_WIDTH } {
	# Procedure called to validate C_HOST_DATA_TRANSFER_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_HOST_DATA_TRANSFER_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_HOST_DATA_TRANSFER_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to update C_HOST_DATA_TRANSFER_TARGET_SLAVE_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HOST_DATA_TRANSFER_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_HOST_DATA_TRANSFER_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to validate C_HOST_DATA_TRANSFER_TARGET_SLAVE_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_HOST_DATA_TRANSFER_WUSER_WIDTH { PARAM_VALUE.C_HOST_DATA_TRANSFER_WUSER_WIDTH } {
	# Procedure called to update C_HOST_DATA_TRANSFER_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HOST_DATA_TRANSFER_WUSER_WIDTH { PARAM_VALUE.C_HOST_DATA_TRANSFER_WUSER_WIDTH } {
	# Procedure called to validate C_HOST_DATA_TRANSFER_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel0_BRAM_BASE_ADDR { PARAM_VALUE.C_UW_Channel0_BRAM_BASE_ADDR } {
	# Procedure called to update C_UW_Channel0_BRAM_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel0_BRAM_BASE_ADDR { PARAM_VALUE.C_UW_Channel0_BRAM_BASE_ADDR } {
	# Procedure called to validate C_UW_Channel0_BRAM_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_UW_Channel0_FLASH_CHANNEL { PARAM_VALUE.C_UW_Channel0_FLASH_CHANNEL } {
	# Procedure called to update C_UW_Channel0_FLASH_CHANNEL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel0_FLASH_CHANNEL { PARAM_VALUE.C_UW_Channel0_FLASH_CHANNEL } {
	# Procedure called to validate C_UW_Channel0_FLASH_CHANNEL
	return true
}

proc update_PARAM_VALUE.C_UW_Channel1_BRAM_BASE_ADDR { PARAM_VALUE.C_UW_Channel1_BRAM_BASE_ADDR } {
	# Procedure called to update C_UW_Channel1_BRAM_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel1_BRAM_BASE_ADDR { PARAM_VALUE.C_UW_Channel1_BRAM_BASE_ADDR } {
	# Procedure called to validate C_UW_Channel1_BRAM_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_UW_Channel1_FLASH_CHANNEL { PARAM_VALUE.C_UW_Channel1_FLASH_CHANNEL } {
	# Procedure called to update C_UW_Channel1_FLASH_CHANNEL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel1_FLASH_CHANNEL { PARAM_VALUE.C_UW_Channel1_FLASH_CHANNEL } {
	# Procedure called to validate C_UW_Channel1_FLASH_CHANNEL
	return true
}

proc update_PARAM_VALUE.C_UW_Channel2_BRAM_BASE_ADDR { PARAM_VALUE.C_UW_Channel2_BRAM_BASE_ADDR } {
	# Procedure called to update C_UW_Channel2_BRAM_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel2_BRAM_BASE_ADDR { PARAM_VALUE.C_UW_Channel2_BRAM_BASE_ADDR } {
	# Procedure called to validate C_UW_Channel2_BRAM_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_UW_Channel2_FLASH_CHANNEL { PARAM_VALUE.C_UW_Channel2_FLASH_CHANNEL } {
	# Procedure called to update C_UW_Channel2_FLASH_CHANNEL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel2_FLASH_CHANNEL { PARAM_VALUE.C_UW_Channel2_FLASH_CHANNEL } {
	# Procedure called to validate C_UW_Channel2_FLASH_CHANNEL
	return true
}

proc update_PARAM_VALUE.C_UW_Channel3_BRAM_BASE_ADDR { PARAM_VALUE.C_UW_Channel3_BRAM_BASE_ADDR } {
	# Procedure called to update C_UW_Channel3_BRAM_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel3_BRAM_BASE_ADDR { PARAM_VALUE.C_UW_Channel3_BRAM_BASE_ADDR } {
	# Procedure called to validate C_UW_Channel3_BRAM_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_UW_Channel3_FLASH_CHANNEL { PARAM_VALUE.C_UW_Channel3_FLASH_CHANNEL } {
	# Procedure called to update C_UW_Channel3_FLASH_CHANNEL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel3_FLASH_CHANNEL { PARAM_VALUE.C_UW_Channel3_FLASH_CHANNEL } {
	# Procedure called to validate C_UW_Channel3_FLASH_CHANNEL
	return true
}

proc update_PARAM_VALUE.C_UW_Channel4_BRAM_BASE_ADDR { PARAM_VALUE.C_UW_Channel4_BRAM_BASE_ADDR } {
	# Procedure called to update C_UW_Channel4_BRAM_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel4_BRAM_BASE_ADDR { PARAM_VALUE.C_UW_Channel4_BRAM_BASE_ADDR } {
	# Procedure called to validate C_UW_Channel4_BRAM_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_UW_Channel4_FLASH_CHANNEL { PARAM_VALUE.C_UW_Channel4_FLASH_CHANNEL } {
	# Procedure called to update C_UW_Channel4_FLASH_CHANNEL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel4_FLASH_CHANNEL { PARAM_VALUE.C_UW_Channel4_FLASH_CHANNEL } {
	# Procedure called to validate C_UW_Channel4_FLASH_CHANNEL
	return true
}

proc update_PARAM_VALUE.C_UW_Channel5_BRAM_BASE_ADDR { PARAM_VALUE.C_UW_Channel5_BRAM_BASE_ADDR } {
	# Procedure called to update C_UW_Channel5_BRAM_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel5_BRAM_BASE_ADDR { PARAM_VALUE.C_UW_Channel5_BRAM_BASE_ADDR } {
	# Procedure called to validate C_UW_Channel5_BRAM_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_UW_Channel5_FLASH_CHANNEL { PARAM_VALUE.C_UW_Channel5_FLASH_CHANNEL } {
	# Procedure called to update C_UW_Channel5_FLASH_CHANNEL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel5_FLASH_CHANNEL { PARAM_VALUE.C_UW_Channel5_FLASH_CHANNEL } {
	# Procedure called to validate C_UW_Channel5_FLASH_CHANNEL
	return true
}

proc update_PARAM_VALUE.C_UW_Channel6_BRAM_BASE_ADDR { PARAM_VALUE.C_UW_Channel6_BRAM_BASE_ADDR } {
	# Procedure called to update C_UW_Channel6_BRAM_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel6_BRAM_BASE_ADDR { PARAM_VALUE.C_UW_Channel6_BRAM_BASE_ADDR } {
	# Procedure called to validate C_UW_Channel6_BRAM_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_UW_Channel6_FLASH_CHANNEL { PARAM_VALUE.C_UW_Channel6_FLASH_CHANNEL } {
	# Procedure called to update C_UW_Channel6_FLASH_CHANNEL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel6_FLASH_CHANNEL { PARAM_VALUE.C_UW_Channel6_FLASH_CHANNEL } {
	# Procedure called to validate C_UW_Channel6_FLASH_CHANNEL
	return true
}

proc update_PARAM_VALUE.C_UW_Channel7_BRAM_BASE_ADDR { PARAM_VALUE.C_UW_Channel7_BRAM_BASE_ADDR } {
	# Procedure called to update C_UW_Channel7_BRAM_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel7_BRAM_BASE_ADDR { PARAM_VALUE.C_UW_Channel7_BRAM_BASE_ADDR } {
	# Procedure called to validate C_UW_Channel7_BRAM_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_UW_Channel7_FLASH_CHANNEL { PARAM_VALUE.C_UW_Channel7_FLASH_CHANNEL } {
	# Procedure called to update C_UW_Channel7_FLASH_CHANNEL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel7_FLASH_CHANNEL { PARAM_VALUE.C_UW_Channel7_FLASH_CHANNEL } {
	# Procedure called to validate C_UW_Channel7_FLASH_CHANNEL
	return true
}

proc update_PARAM_VALUE.Mapping_Table_Header_BaseAddress { PARAM_VALUE.Mapping_Table_Header_BaseAddress } {
	# Procedure called to update Mapping_Table_Header_BaseAddress when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Mapping_Table_Header_BaseAddress { PARAM_VALUE.Mapping_Table_Header_BaseAddress } {
	# Procedure called to validate Mapping_Table_Header_BaseAddress
	return true
}

proc update_PARAM_VALUE.OFFSET_CONST { PARAM_VALUE.OFFSET_CONST } {
	# Procedure called to update OFFSET_CONST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OFFSET_CONST { PARAM_VALUE.OFFSET_CONST } {
	# Procedure called to validate OFFSET_CONST
	return true
}

proc update_PARAM_VALUE.C_UW_Channel0_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_UW_Channel0_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to update C_UW_Channel0_TARGET_SLAVE_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel0_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_UW_Channel0_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to validate C_UW_Channel0_TARGET_SLAVE_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_UW_Channel0_BURST_LEN { PARAM_VALUE.C_UW_Channel0_BURST_LEN } {
	# Procedure called to update C_UW_Channel0_BURST_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel0_BURST_LEN { PARAM_VALUE.C_UW_Channel0_BURST_LEN } {
	# Procedure called to validate C_UW_Channel0_BURST_LEN
	return true
}

proc update_PARAM_VALUE.C_UW_Channel0_ID_WIDTH { PARAM_VALUE.C_UW_Channel0_ID_WIDTH } {
	# Procedure called to update C_UW_Channel0_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel0_ID_WIDTH { PARAM_VALUE.C_UW_Channel0_ID_WIDTH } {
	# Procedure called to validate C_UW_Channel0_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel0_ADDR_WIDTH { PARAM_VALUE.C_UW_Channel0_ADDR_WIDTH } {
	# Procedure called to update C_UW_Channel0_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel0_ADDR_WIDTH { PARAM_VALUE.C_UW_Channel0_ADDR_WIDTH } {
	# Procedure called to validate C_UW_Channel0_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel0_DATA_WIDTH { PARAM_VALUE.C_UW_Channel0_DATA_WIDTH } {
	# Procedure called to update C_UW_Channel0_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel0_DATA_WIDTH { PARAM_VALUE.C_UW_Channel0_DATA_WIDTH } {
	# Procedure called to validate C_UW_Channel0_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel0_AWUSER_WIDTH { PARAM_VALUE.C_UW_Channel0_AWUSER_WIDTH } {
	# Procedure called to update C_UW_Channel0_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel0_AWUSER_WIDTH { PARAM_VALUE.C_UW_Channel0_AWUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel0_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel0_ARUSER_WIDTH { PARAM_VALUE.C_UW_Channel0_ARUSER_WIDTH } {
	# Procedure called to update C_UW_Channel0_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel0_ARUSER_WIDTH { PARAM_VALUE.C_UW_Channel0_ARUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel0_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel0_WUSER_WIDTH { PARAM_VALUE.C_UW_Channel0_WUSER_WIDTH } {
	# Procedure called to update C_UW_Channel0_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel0_WUSER_WIDTH { PARAM_VALUE.C_UW_Channel0_WUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel0_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel0_RUSER_WIDTH { PARAM_VALUE.C_UW_Channel0_RUSER_WIDTH } {
	# Procedure called to update C_UW_Channel0_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel0_RUSER_WIDTH { PARAM_VALUE.C_UW_Channel0_RUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel0_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel0_BUSER_WIDTH { PARAM_VALUE.C_UW_Channel0_BUSER_WIDTH } {
	# Procedure called to update C_UW_Channel0_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel0_BUSER_WIDTH { PARAM_VALUE.C_UW_Channel0_BUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel0_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel1_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_UW_Channel1_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to update C_UW_Channel1_TARGET_SLAVE_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel1_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_UW_Channel1_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to validate C_UW_Channel1_TARGET_SLAVE_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_UW_Channel1_BURST_LEN { PARAM_VALUE.C_UW_Channel1_BURST_LEN } {
	# Procedure called to update C_UW_Channel1_BURST_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel1_BURST_LEN { PARAM_VALUE.C_UW_Channel1_BURST_LEN } {
	# Procedure called to validate C_UW_Channel1_BURST_LEN
	return true
}

proc update_PARAM_VALUE.C_UW_Channel1_ID_WIDTH { PARAM_VALUE.C_UW_Channel1_ID_WIDTH } {
	# Procedure called to update C_UW_Channel1_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel1_ID_WIDTH { PARAM_VALUE.C_UW_Channel1_ID_WIDTH } {
	# Procedure called to validate C_UW_Channel1_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel1_ADDR_WIDTH { PARAM_VALUE.C_UW_Channel1_ADDR_WIDTH } {
	# Procedure called to update C_UW_Channel1_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel1_ADDR_WIDTH { PARAM_VALUE.C_UW_Channel1_ADDR_WIDTH } {
	# Procedure called to validate C_UW_Channel1_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel1_DATA_WIDTH { PARAM_VALUE.C_UW_Channel1_DATA_WIDTH } {
	# Procedure called to update C_UW_Channel1_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel1_DATA_WIDTH { PARAM_VALUE.C_UW_Channel1_DATA_WIDTH } {
	# Procedure called to validate C_UW_Channel1_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel1_AWUSER_WIDTH { PARAM_VALUE.C_UW_Channel1_AWUSER_WIDTH } {
	# Procedure called to update C_UW_Channel1_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel1_AWUSER_WIDTH { PARAM_VALUE.C_UW_Channel1_AWUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel1_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel1_ARUSER_WIDTH { PARAM_VALUE.C_UW_Channel1_ARUSER_WIDTH } {
	# Procedure called to update C_UW_Channel1_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel1_ARUSER_WIDTH { PARAM_VALUE.C_UW_Channel1_ARUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel1_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel1_WUSER_WIDTH { PARAM_VALUE.C_UW_Channel1_WUSER_WIDTH } {
	# Procedure called to update C_UW_Channel1_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel1_WUSER_WIDTH { PARAM_VALUE.C_UW_Channel1_WUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel1_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel1_RUSER_WIDTH { PARAM_VALUE.C_UW_Channel1_RUSER_WIDTH } {
	# Procedure called to update C_UW_Channel1_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel1_RUSER_WIDTH { PARAM_VALUE.C_UW_Channel1_RUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel1_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel1_BUSER_WIDTH { PARAM_VALUE.C_UW_Channel1_BUSER_WIDTH } {
	# Procedure called to update C_UW_Channel1_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel1_BUSER_WIDTH { PARAM_VALUE.C_UW_Channel1_BUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel1_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel2_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_UW_Channel2_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to update C_UW_Channel2_TARGET_SLAVE_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel2_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_UW_Channel2_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to validate C_UW_Channel2_TARGET_SLAVE_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_UW_Channel2_BURST_LEN { PARAM_VALUE.C_UW_Channel2_BURST_LEN } {
	# Procedure called to update C_UW_Channel2_BURST_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel2_BURST_LEN { PARAM_VALUE.C_UW_Channel2_BURST_LEN } {
	# Procedure called to validate C_UW_Channel2_BURST_LEN
	return true
}

proc update_PARAM_VALUE.C_UW_Channel2_ID_WIDTH { PARAM_VALUE.C_UW_Channel2_ID_WIDTH } {
	# Procedure called to update C_UW_Channel2_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel2_ID_WIDTH { PARAM_VALUE.C_UW_Channel2_ID_WIDTH } {
	# Procedure called to validate C_UW_Channel2_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel2_ADDR_WIDTH { PARAM_VALUE.C_UW_Channel2_ADDR_WIDTH } {
	# Procedure called to update C_UW_Channel2_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel2_ADDR_WIDTH { PARAM_VALUE.C_UW_Channel2_ADDR_WIDTH } {
	# Procedure called to validate C_UW_Channel2_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel2_DATA_WIDTH { PARAM_VALUE.C_UW_Channel2_DATA_WIDTH } {
	# Procedure called to update C_UW_Channel2_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel2_DATA_WIDTH { PARAM_VALUE.C_UW_Channel2_DATA_WIDTH } {
	# Procedure called to validate C_UW_Channel2_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel2_AWUSER_WIDTH { PARAM_VALUE.C_UW_Channel2_AWUSER_WIDTH } {
	# Procedure called to update C_UW_Channel2_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel2_AWUSER_WIDTH { PARAM_VALUE.C_UW_Channel2_AWUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel2_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel2_ARUSER_WIDTH { PARAM_VALUE.C_UW_Channel2_ARUSER_WIDTH } {
	# Procedure called to update C_UW_Channel2_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel2_ARUSER_WIDTH { PARAM_VALUE.C_UW_Channel2_ARUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel2_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel2_WUSER_WIDTH { PARAM_VALUE.C_UW_Channel2_WUSER_WIDTH } {
	# Procedure called to update C_UW_Channel2_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel2_WUSER_WIDTH { PARAM_VALUE.C_UW_Channel2_WUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel2_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel2_RUSER_WIDTH { PARAM_VALUE.C_UW_Channel2_RUSER_WIDTH } {
	# Procedure called to update C_UW_Channel2_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel2_RUSER_WIDTH { PARAM_VALUE.C_UW_Channel2_RUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel2_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel2_BUSER_WIDTH { PARAM_VALUE.C_UW_Channel2_BUSER_WIDTH } {
	# Procedure called to update C_UW_Channel2_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel2_BUSER_WIDTH { PARAM_VALUE.C_UW_Channel2_BUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel2_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel6_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_UW_Channel6_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to update C_UW_Channel6_TARGET_SLAVE_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel6_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_UW_Channel6_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to validate C_UW_Channel6_TARGET_SLAVE_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_UW_Channel6_BURST_LEN { PARAM_VALUE.C_UW_Channel6_BURST_LEN } {
	# Procedure called to update C_UW_Channel6_BURST_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel6_BURST_LEN { PARAM_VALUE.C_UW_Channel6_BURST_LEN } {
	# Procedure called to validate C_UW_Channel6_BURST_LEN
	return true
}

proc update_PARAM_VALUE.C_UW_Channel6_ID_WIDTH { PARAM_VALUE.C_UW_Channel6_ID_WIDTH } {
	# Procedure called to update C_UW_Channel6_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel6_ID_WIDTH { PARAM_VALUE.C_UW_Channel6_ID_WIDTH } {
	# Procedure called to validate C_UW_Channel6_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel6_ADDR_WIDTH { PARAM_VALUE.C_UW_Channel6_ADDR_WIDTH } {
	# Procedure called to update C_UW_Channel6_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel6_ADDR_WIDTH { PARAM_VALUE.C_UW_Channel6_ADDR_WIDTH } {
	# Procedure called to validate C_UW_Channel6_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel6_DATA_WIDTH { PARAM_VALUE.C_UW_Channel6_DATA_WIDTH } {
	# Procedure called to update C_UW_Channel6_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel6_DATA_WIDTH { PARAM_VALUE.C_UW_Channel6_DATA_WIDTH } {
	# Procedure called to validate C_UW_Channel6_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel6_AWUSER_WIDTH { PARAM_VALUE.C_UW_Channel6_AWUSER_WIDTH } {
	# Procedure called to update C_UW_Channel6_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel6_AWUSER_WIDTH { PARAM_VALUE.C_UW_Channel6_AWUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel6_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel6_ARUSER_WIDTH { PARAM_VALUE.C_UW_Channel6_ARUSER_WIDTH } {
	# Procedure called to update C_UW_Channel6_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel6_ARUSER_WIDTH { PARAM_VALUE.C_UW_Channel6_ARUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel6_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel6_WUSER_WIDTH { PARAM_VALUE.C_UW_Channel6_WUSER_WIDTH } {
	# Procedure called to update C_UW_Channel6_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel6_WUSER_WIDTH { PARAM_VALUE.C_UW_Channel6_WUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel6_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel6_RUSER_WIDTH { PARAM_VALUE.C_UW_Channel6_RUSER_WIDTH } {
	# Procedure called to update C_UW_Channel6_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel6_RUSER_WIDTH { PARAM_VALUE.C_UW_Channel6_RUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel6_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel6_BUSER_WIDTH { PARAM_VALUE.C_UW_Channel6_BUSER_WIDTH } {
	# Procedure called to update C_UW_Channel6_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel6_BUSER_WIDTH { PARAM_VALUE.C_UW_Channel6_BUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel6_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel5_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_UW_Channel5_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to update C_UW_Channel5_TARGET_SLAVE_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel5_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_UW_Channel5_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to validate C_UW_Channel5_TARGET_SLAVE_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_UW_Channel5_BURST_LEN { PARAM_VALUE.C_UW_Channel5_BURST_LEN } {
	# Procedure called to update C_UW_Channel5_BURST_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel5_BURST_LEN { PARAM_VALUE.C_UW_Channel5_BURST_LEN } {
	# Procedure called to validate C_UW_Channel5_BURST_LEN
	return true
}

proc update_PARAM_VALUE.C_UW_Channel5_ID_WIDTH { PARAM_VALUE.C_UW_Channel5_ID_WIDTH } {
	# Procedure called to update C_UW_Channel5_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel5_ID_WIDTH { PARAM_VALUE.C_UW_Channel5_ID_WIDTH } {
	# Procedure called to validate C_UW_Channel5_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel5_ADDR_WIDTH { PARAM_VALUE.C_UW_Channel5_ADDR_WIDTH } {
	# Procedure called to update C_UW_Channel5_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel5_ADDR_WIDTH { PARAM_VALUE.C_UW_Channel5_ADDR_WIDTH } {
	# Procedure called to validate C_UW_Channel5_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel5_DATA_WIDTH { PARAM_VALUE.C_UW_Channel5_DATA_WIDTH } {
	# Procedure called to update C_UW_Channel5_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel5_DATA_WIDTH { PARAM_VALUE.C_UW_Channel5_DATA_WIDTH } {
	# Procedure called to validate C_UW_Channel5_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel5_AWUSER_WIDTH { PARAM_VALUE.C_UW_Channel5_AWUSER_WIDTH } {
	# Procedure called to update C_UW_Channel5_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel5_AWUSER_WIDTH { PARAM_VALUE.C_UW_Channel5_AWUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel5_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel5_ARUSER_WIDTH { PARAM_VALUE.C_UW_Channel5_ARUSER_WIDTH } {
	# Procedure called to update C_UW_Channel5_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel5_ARUSER_WIDTH { PARAM_VALUE.C_UW_Channel5_ARUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel5_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel5_WUSER_WIDTH { PARAM_VALUE.C_UW_Channel5_WUSER_WIDTH } {
	# Procedure called to update C_UW_Channel5_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel5_WUSER_WIDTH { PARAM_VALUE.C_UW_Channel5_WUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel5_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel5_RUSER_WIDTH { PARAM_VALUE.C_UW_Channel5_RUSER_WIDTH } {
	# Procedure called to update C_UW_Channel5_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel5_RUSER_WIDTH { PARAM_VALUE.C_UW_Channel5_RUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel5_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel5_BUSER_WIDTH { PARAM_VALUE.C_UW_Channel5_BUSER_WIDTH } {
	# Procedure called to update C_UW_Channel5_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel5_BUSER_WIDTH { PARAM_VALUE.C_UW_Channel5_BUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel5_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel4_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_UW_Channel4_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to update C_UW_Channel4_TARGET_SLAVE_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel4_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_UW_Channel4_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to validate C_UW_Channel4_TARGET_SLAVE_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_UW_Channel4_BURST_LEN { PARAM_VALUE.C_UW_Channel4_BURST_LEN } {
	# Procedure called to update C_UW_Channel4_BURST_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel4_BURST_LEN { PARAM_VALUE.C_UW_Channel4_BURST_LEN } {
	# Procedure called to validate C_UW_Channel4_BURST_LEN
	return true
}

proc update_PARAM_VALUE.C_UW_Channel4_ID_WIDTH { PARAM_VALUE.C_UW_Channel4_ID_WIDTH } {
	# Procedure called to update C_UW_Channel4_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel4_ID_WIDTH { PARAM_VALUE.C_UW_Channel4_ID_WIDTH } {
	# Procedure called to validate C_UW_Channel4_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel4_ADDR_WIDTH { PARAM_VALUE.C_UW_Channel4_ADDR_WIDTH } {
	# Procedure called to update C_UW_Channel4_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel4_ADDR_WIDTH { PARAM_VALUE.C_UW_Channel4_ADDR_WIDTH } {
	# Procedure called to validate C_UW_Channel4_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel4_DATA_WIDTH { PARAM_VALUE.C_UW_Channel4_DATA_WIDTH } {
	# Procedure called to update C_UW_Channel4_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel4_DATA_WIDTH { PARAM_VALUE.C_UW_Channel4_DATA_WIDTH } {
	# Procedure called to validate C_UW_Channel4_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel4_AWUSER_WIDTH { PARAM_VALUE.C_UW_Channel4_AWUSER_WIDTH } {
	# Procedure called to update C_UW_Channel4_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel4_AWUSER_WIDTH { PARAM_VALUE.C_UW_Channel4_AWUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel4_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel4_ARUSER_WIDTH { PARAM_VALUE.C_UW_Channel4_ARUSER_WIDTH } {
	# Procedure called to update C_UW_Channel4_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel4_ARUSER_WIDTH { PARAM_VALUE.C_UW_Channel4_ARUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel4_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel4_WUSER_WIDTH { PARAM_VALUE.C_UW_Channel4_WUSER_WIDTH } {
	# Procedure called to update C_UW_Channel4_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel4_WUSER_WIDTH { PARAM_VALUE.C_UW_Channel4_WUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel4_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel4_RUSER_WIDTH { PARAM_VALUE.C_UW_Channel4_RUSER_WIDTH } {
	# Procedure called to update C_UW_Channel4_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel4_RUSER_WIDTH { PARAM_VALUE.C_UW_Channel4_RUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel4_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel4_BUSER_WIDTH { PARAM_VALUE.C_UW_Channel4_BUSER_WIDTH } {
	# Procedure called to update C_UW_Channel4_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel4_BUSER_WIDTH { PARAM_VALUE.C_UW_Channel4_BUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel4_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel7_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_UW_Channel7_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to update C_UW_Channel7_TARGET_SLAVE_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel7_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_UW_Channel7_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to validate C_UW_Channel7_TARGET_SLAVE_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_UW_Channel7_BURST_LEN { PARAM_VALUE.C_UW_Channel7_BURST_LEN } {
	# Procedure called to update C_UW_Channel7_BURST_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel7_BURST_LEN { PARAM_VALUE.C_UW_Channel7_BURST_LEN } {
	# Procedure called to validate C_UW_Channel7_BURST_LEN
	return true
}

proc update_PARAM_VALUE.C_UW_Channel7_ID_WIDTH { PARAM_VALUE.C_UW_Channel7_ID_WIDTH } {
	# Procedure called to update C_UW_Channel7_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel7_ID_WIDTH { PARAM_VALUE.C_UW_Channel7_ID_WIDTH } {
	# Procedure called to validate C_UW_Channel7_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel7_ADDR_WIDTH { PARAM_VALUE.C_UW_Channel7_ADDR_WIDTH } {
	# Procedure called to update C_UW_Channel7_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel7_ADDR_WIDTH { PARAM_VALUE.C_UW_Channel7_ADDR_WIDTH } {
	# Procedure called to validate C_UW_Channel7_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel7_DATA_WIDTH { PARAM_VALUE.C_UW_Channel7_DATA_WIDTH } {
	# Procedure called to update C_UW_Channel7_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel7_DATA_WIDTH { PARAM_VALUE.C_UW_Channel7_DATA_WIDTH } {
	# Procedure called to validate C_UW_Channel7_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel7_AWUSER_WIDTH { PARAM_VALUE.C_UW_Channel7_AWUSER_WIDTH } {
	# Procedure called to update C_UW_Channel7_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel7_AWUSER_WIDTH { PARAM_VALUE.C_UW_Channel7_AWUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel7_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel7_ARUSER_WIDTH { PARAM_VALUE.C_UW_Channel7_ARUSER_WIDTH } {
	# Procedure called to update C_UW_Channel7_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel7_ARUSER_WIDTH { PARAM_VALUE.C_UW_Channel7_ARUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel7_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel7_WUSER_WIDTH { PARAM_VALUE.C_UW_Channel7_WUSER_WIDTH } {
	# Procedure called to update C_UW_Channel7_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel7_WUSER_WIDTH { PARAM_VALUE.C_UW_Channel7_WUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel7_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel7_RUSER_WIDTH { PARAM_VALUE.C_UW_Channel7_RUSER_WIDTH } {
	# Procedure called to update C_UW_Channel7_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel7_RUSER_WIDTH { PARAM_VALUE.C_UW_Channel7_RUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel7_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel7_BUSER_WIDTH { PARAM_VALUE.C_UW_Channel7_BUSER_WIDTH } {
	# Procedure called to update C_UW_Channel7_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel7_BUSER_WIDTH { PARAM_VALUE.C_UW_Channel7_BUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel7_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel3_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_UW_Channel3_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to update C_UW_Channel3_TARGET_SLAVE_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel3_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_UW_Channel3_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to validate C_UW_Channel3_TARGET_SLAVE_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_UW_Channel3_BURST_LEN { PARAM_VALUE.C_UW_Channel3_BURST_LEN } {
	# Procedure called to update C_UW_Channel3_BURST_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel3_BURST_LEN { PARAM_VALUE.C_UW_Channel3_BURST_LEN } {
	# Procedure called to validate C_UW_Channel3_BURST_LEN
	return true
}

proc update_PARAM_VALUE.C_UW_Channel3_ID_WIDTH { PARAM_VALUE.C_UW_Channel3_ID_WIDTH } {
	# Procedure called to update C_UW_Channel3_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel3_ID_WIDTH { PARAM_VALUE.C_UW_Channel3_ID_WIDTH } {
	# Procedure called to validate C_UW_Channel3_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel3_ADDR_WIDTH { PARAM_VALUE.C_UW_Channel3_ADDR_WIDTH } {
	# Procedure called to update C_UW_Channel3_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel3_ADDR_WIDTH { PARAM_VALUE.C_UW_Channel3_ADDR_WIDTH } {
	# Procedure called to validate C_UW_Channel3_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel3_DATA_WIDTH { PARAM_VALUE.C_UW_Channel3_DATA_WIDTH } {
	# Procedure called to update C_UW_Channel3_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel3_DATA_WIDTH { PARAM_VALUE.C_UW_Channel3_DATA_WIDTH } {
	# Procedure called to validate C_UW_Channel3_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel3_AWUSER_WIDTH { PARAM_VALUE.C_UW_Channel3_AWUSER_WIDTH } {
	# Procedure called to update C_UW_Channel3_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel3_AWUSER_WIDTH { PARAM_VALUE.C_UW_Channel3_AWUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel3_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel3_ARUSER_WIDTH { PARAM_VALUE.C_UW_Channel3_ARUSER_WIDTH } {
	# Procedure called to update C_UW_Channel3_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel3_ARUSER_WIDTH { PARAM_VALUE.C_UW_Channel3_ARUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel3_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel3_WUSER_WIDTH { PARAM_VALUE.C_UW_Channel3_WUSER_WIDTH } {
	# Procedure called to update C_UW_Channel3_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel3_WUSER_WIDTH { PARAM_VALUE.C_UW_Channel3_WUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel3_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel3_RUSER_WIDTH { PARAM_VALUE.C_UW_Channel3_RUSER_WIDTH } {
	# Procedure called to update C_UW_Channel3_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel3_RUSER_WIDTH { PARAM_VALUE.C_UW_Channel3_RUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel3_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UW_Channel3_BUSER_WIDTH { PARAM_VALUE.C_UW_Channel3_BUSER_WIDTH } {
	# Procedure called to update C_UW_Channel3_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UW_Channel3_BUSER_WIDTH { PARAM_VALUE.C_UW_Channel3_BUSER_WIDTH } {
	# Procedure called to validate C_UW_Channel3_BUSER_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_UW_Channel0_TARGET_SLAVE_BASE_ADDR { MODELPARAM_VALUE.C_UW_Channel0_TARGET_SLAVE_BASE_ADDR PARAM_VALUE.C_UW_Channel0_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel0_TARGET_SLAVE_BASE_ADDR}] ${MODELPARAM_VALUE.C_UW_Channel0_TARGET_SLAVE_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_UW_Channel0_BURST_LEN { MODELPARAM_VALUE.C_UW_Channel0_BURST_LEN PARAM_VALUE.C_UW_Channel0_BURST_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel0_BURST_LEN}] ${MODELPARAM_VALUE.C_UW_Channel0_BURST_LEN}
}

proc update_MODELPARAM_VALUE.C_UW_Channel0_ID_WIDTH { MODELPARAM_VALUE.C_UW_Channel0_ID_WIDTH PARAM_VALUE.C_UW_Channel0_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel0_ID_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel0_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel0_ADDR_WIDTH { MODELPARAM_VALUE.C_UW_Channel0_ADDR_WIDTH PARAM_VALUE.C_UW_Channel0_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel0_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel0_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel0_DATA_WIDTH { MODELPARAM_VALUE.C_UW_Channel0_DATA_WIDTH PARAM_VALUE.C_UW_Channel0_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel0_DATA_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel0_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel0_AWUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel0_AWUSER_WIDTH PARAM_VALUE.C_UW_Channel0_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel0_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel0_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel0_ARUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel0_ARUSER_WIDTH PARAM_VALUE.C_UW_Channel0_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel0_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel0_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel0_WUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel0_WUSER_WIDTH PARAM_VALUE.C_UW_Channel0_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel0_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel0_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel0_RUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel0_RUSER_WIDTH PARAM_VALUE.C_UW_Channel0_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel0_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel0_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel0_BUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel0_BUSER_WIDTH PARAM_VALUE.C_UW_Channel0_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel0_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel0_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel1_TARGET_SLAVE_BASE_ADDR { MODELPARAM_VALUE.C_UW_Channel1_TARGET_SLAVE_BASE_ADDR PARAM_VALUE.C_UW_Channel1_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel1_TARGET_SLAVE_BASE_ADDR}] ${MODELPARAM_VALUE.C_UW_Channel1_TARGET_SLAVE_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_UW_Channel1_BURST_LEN { MODELPARAM_VALUE.C_UW_Channel1_BURST_LEN PARAM_VALUE.C_UW_Channel1_BURST_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel1_BURST_LEN}] ${MODELPARAM_VALUE.C_UW_Channel1_BURST_LEN}
}

proc update_MODELPARAM_VALUE.C_UW_Channel1_ID_WIDTH { MODELPARAM_VALUE.C_UW_Channel1_ID_WIDTH PARAM_VALUE.C_UW_Channel1_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel1_ID_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel1_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel1_ADDR_WIDTH { MODELPARAM_VALUE.C_UW_Channel1_ADDR_WIDTH PARAM_VALUE.C_UW_Channel1_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel1_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel1_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel1_DATA_WIDTH { MODELPARAM_VALUE.C_UW_Channel1_DATA_WIDTH PARAM_VALUE.C_UW_Channel1_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel1_DATA_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel1_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel1_AWUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel1_AWUSER_WIDTH PARAM_VALUE.C_UW_Channel1_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel1_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel1_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel1_ARUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel1_ARUSER_WIDTH PARAM_VALUE.C_UW_Channel1_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel1_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel1_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel1_WUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel1_WUSER_WIDTH PARAM_VALUE.C_UW_Channel1_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel1_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel1_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel1_RUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel1_RUSER_WIDTH PARAM_VALUE.C_UW_Channel1_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel1_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel1_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel1_BUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel1_BUSER_WIDTH PARAM_VALUE.C_UW_Channel1_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel1_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel1_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel2_TARGET_SLAVE_BASE_ADDR { MODELPARAM_VALUE.C_UW_Channel2_TARGET_SLAVE_BASE_ADDR PARAM_VALUE.C_UW_Channel2_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel2_TARGET_SLAVE_BASE_ADDR}] ${MODELPARAM_VALUE.C_UW_Channel2_TARGET_SLAVE_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_UW_Channel2_BURST_LEN { MODELPARAM_VALUE.C_UW_Channel2_BURST_LEN PARAM_VALUE.C_UW_Channel2_BURST_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel2_BURST_LEN}] ${MODELPARAM_VALUE.C_UW_Channel2_BURST_LEN}
}

proc update_MODELPARAM_VALUE.C_UW_Channel2_ID_WIDTH { MODELPARAM_VALUE.C_UW_Channel2_ID_WIDTH PARAM_VALUE.C_UW_Channel2_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel2_ID_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel2_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel2_ADDR_WIDTH { MODELPARAM_VALUE.C_UW_Channel2_ADDR_WIDTH PARAM_VALUE.C_UW_Channel2_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel2_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel2_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel2_DATA_WIDTH { MODELPARAM_VALUE.C_UW_Channel2_DATA_WIDTH PARAM_VALUE.C_UW_Channel2_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel2_DATA_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel2_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel2_AWUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel2_AWUSER_WIDTH PARAM_VALUE.C_UW_Channel2_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel2_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel2_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel2_ARUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel2_ARUSER_WIDTH PARAM_VALUE.C_UW_Channel2_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel2_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel2_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel2_WUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel2_WUSER_WIDTH PARAM_VALUE.C_UW_Channel2_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel2_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel2_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel2_RUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel2_RUSER_WIDTH PARAM_VALUE.C_UW_Channel2_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel2_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel2_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel2_BUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel2_BUSER_WIDTH PARAM_VALUE.C_UW_Channel2_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel2_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel2_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel6_TARGET_SLAVE_BASE_ADDR { MODELPARAM_VALUE.C_UW_Channel6_TARGET_SLAVE_BASE_ADDR PARAM_VALUE.C_UW_Channel6_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel6_TARGET_SLAVE_BASE_ADDR}] ${MODELPARAM_VALUE.C_UW_Channel6_TARGET_SLAVE_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_UW_Channel6_BURST_LEN { MODELPARAM_VALUE.C_UW_Channel6_BURST_LEN PARAM_VALUE.C_UW_Channel6_BURST_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel6_BURST_LEN}] ${MODELPARAM_VALUE.C_UW_Channel6_BURST_LEN}
}

proc update_MODELPARAM_VALUE.C_UW_Channel6_ID_WIDTH { MODELPARAM_VALUE.C_UW_Channel6_ID_WIDTH PARAM_VALUE.C_UW_Channel6_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel6_ID_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel6_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel6_ADDR_WIDTH { MODELPARAM_VALUE.C_UW_Channel6_ADDR_WIDTH PARAM_VALUE.C_UW_Channel6_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel6_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel6_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel6_DATA_WIDTH { MODELPARAM_VALUE.C_UW_Channel6_DATA_WIDTH PARAM_VALUE.C_UW_Channel6_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel6_DATA_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel6_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel6_AWUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel6_AWUSER_WIDTH PARAM_VALUE.C_UW_Channel6_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel6_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel6_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel6_ARUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel6_ARUSER_WIDTH PARAM_VALUE.C_UW_Channel6_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel6_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel6_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel6_WUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel6_WUSER_WIDTH PARAM_VALUE.C_UW_Channel6_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel6_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel6_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel6_RUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel6_RUSER_WIDTH PARAM_VALUE.C_UW_Channel6_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel6_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel6_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel6_BUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel6_BUSER_WIDTH PARAM_VALUE.C_UW_Channel6_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel6_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel6_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel5_TARGET_SLAVE_BASE_ADDR { MODELPARAM_VALUE.C_UW_Channel5_TARGET_SLAVE_BASE_ADDR PARAM_VALUE.C_UW_Channel5_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel5_TARGET_SLAVE_BASE_ADDR}] ${MODELPARAM_VALUE.C_UW_Channel5_TARGET_SLAVE_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_UW_Channel5_BURST_LEN { MODELPARAM_VALUE.C_UW_Channel5_BURST_LEN PARAM_VALUE.C_UW_Channel5_BURST_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel5_BURST_LEN}] ${MODELPARAM_VALUE.C_UW_Channel5_BURST_LEN}
}

proc update_MODELPARAM_VALUE.C_UW_Channel5_ID_WIDTH { MODELPARAM_VALUE.C_UW_Channel5_ID_WIDTH PARAM_VALUE.C_UW_Channel5_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel5_ID_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel5_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel5_ADDR_WIDTH { MODELPARAM_VALUE.C_UW_Channel5_ADDR_WIDTH PARAM_VALUE.C_UW_Channel5_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel5_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel5_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel5_DATA_WIDTH { MODELPARAM_VALUE.C_UW_Channel5_DATA_WIDTH PARAM_VALUE.C_UW_Channel5_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel5_DATA_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel5_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel5_AWUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel5_AWUSER_WIDTH PARAM_VALUE.C_UW_Channel5_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel5_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel5_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel5_ARUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel5_ARUSER_WIDTH PARAM_VALUE.C_UW_Channel5_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel5_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel5_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel5_WUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel5_WUSER_WIDTH PARAM_VALUE.C_UW_Channel5_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel5_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel5_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel5_RUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel5_RUSER_WIDTH PARAM_VALUE.C_UW_Channel5_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel5_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel5_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel5_BUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel5_BUSER_WIDTH PARAM_VALUE.C_UW_Channel5_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel5_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel5_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel4_TARGET_SLAVE_BASE_ADDR { MODELPARAM_VALUE.C_UW_Channel4_TARGET_SLAVE_BASE_ADDR PARAM_VALUE.C_UW_Channel4_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel4_TARGET_SLAVE_BASE_ADDR}] ${MODELPARAM_VALUE.C_UW_Channel4_TARGET_SLAVE_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_UW_Channel4_BURST_LEN { MODELPARAM_VALUE.C_UW_Channel4_BURST_LEN PARAM_VALUE.C_UW_Channel4_BURST_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel4_BURST_LEN}] ${MODELPARAM_VALUE.C_UW_Channel4_BURST_LEN}
}

proc update_MODELPARAM_VALUE.C_UW_Channel4_ID_WIDTH { MODELPARAM_VALUE.C_UW_Channel4_ID_WIDTH PARAM_VALUE.C_UW_Channel4_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel4_ID_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel4_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel4_ADDR_WIDTH { MODELPARAM_VALUE.C_UW_Channel4_ADDR_WIDTH PARAM_VALUE.C_UW_Channel4_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel4_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel4_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel4_DATA_WIDTH { MODELPARAM_VALUE.C_UW_Channel4_DATA_WIDTH PARAM_VALUE.C_UW_Channel4_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel4_DATA_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel4_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel4_AWUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel4_AWUSER_WIDTH PARAM_VALUE.C_UW_Channel4_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel4_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel4_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel4_ARUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel4_ARUSER_WIDTH PARAM_VALUE.C_UW_Channel4_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel4_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel4_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel4_WUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel4_WUSER_WIDTH PARAM_VALUE.C_UW_Channel4_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel4_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel4_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel4_RUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel4_RUSER_WIDTH PARAM_VALUE.C_UW_Channel4_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel4_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel4_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel4_BUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel4_BUSER_WIDTH PARAM_VALUE.C_UW_Channel4_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel4_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel4_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel7_TARGET_SLAVE_BASE_ADDR { MODELPARAM_VALUE.C_UW_Channel7_TARGET_SLAVE_BASE_ADDR PARAM_VALUE.C_UW_Channel7_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel7_TARGET_SLAVE_BASE_ADDR}] ${MODELPARAM_VALUE.C_UW_Channel7_TARGET_SLAVE_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_UW_Channel7_BURST_LEN { MODELPARAM_VALUE.C_UW_Channel7_BURST_LEN PARAM_VALUE.C_UW_Channel7_BURST_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel7_BURST_LEN}] ${MODELPARAM_VALUE.C_UW_Channel7_BURST_LEN}
}

proc update_MODELPARAM_VALUE.C_UW_Channel7_ID_WIDTH { MODELPARAM_VALUE.C_UW_Channel7_ID_WIDTH PARAM_VALUE.C_UW_Channel7_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel7_ID_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel7_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel7_ADDR_WIDTH { MODELPARAM_VALUE.C_UW_Channel7_ADDR_WIDTH PARAM_VALUE.C_UW_Channel7_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel7_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel7_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel7_DATA_WIDTH { MODELPARAM_VALUE.C_UW_Channel7_DATA_WIDTH PARAM_VALUE.C_UW_Channel7_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel7_DATA_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel7_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel7_AWUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel7_AWUSER_WIDTH PARAM_VALUE.C_UW_Channel7_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel7_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel7_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel7_ARUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel7_ARUSER_WIDTH PARAM_VALUE.C_UW_Channel7_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel7_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel7_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel7_WUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel7_WUSER_WIDTH PARAM_VALUE.C_UW_Channel7_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel7_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel7_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel7_RUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel7_RUSER_WIDTH PARAM_VALUE.C_UW_Channel7_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel7_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel7_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel7_BUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel7_BUSER_WIDTH PARAM_VALUE.C_UW_Channel7_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel7_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel7_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel3_TARGET_SLAVE_BASE_ADDR { MODELPARAM_VALUE.C_UW_Channel3_TARGET_SLAVE_BASE_ADDR PARAM_VALUE.C_UW_Channel3_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel3_TARGET_SLAVE_BASE_ADDR}] ${MODELPARAM_VALUE.C_UW_Channel3_TARGET_SLAVE_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_UW_Channel3_BURST_LEN { MODELPARAM_VALUE.C_UW_Channel3_BURST_LEN PARAM_VALUE.C_UW_Channel3_BURST_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel3_BURST_LEN}] ${MODELPARAM_VALUE.C_UW_Channel3_BURST_LEN}
}

proc update_MODELPARAM_VALUE.C_UW_Channel3_ID_WIDTH { MODELPARAM_VALUE.C_UW_Channel3_ID_WIDTH PARAM_VALUE.C_UW_Channel3_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel3_ID_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel3_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel3_ADDR_WIDTH { MODELPARAM_VALUE.C_UW_Channel3_ADDR_WIDTH PARAM_VALUE.C_UW_Channel3_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel3_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel3_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel3_DATA_WIDTH { MODELPARAM_VALUE.C_UW_Channel3_DATA_WIDTH PARAM_VALUE.C_UW_Channel3_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel3_DATA_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel3_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel3_AWUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel3_AWUSER_WIDTH PARAM_VALUE.C_UW_Channel3_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel3_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel3_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel3_ARUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel3_ARUSER_WIDTH PARAM_VALUE.C_UW_Channel3_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel3_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel3_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel3_WUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel3_WUSER_WIDTH PARAM_VALUE.C_UW_Channel3_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel3_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel3_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel3_RUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel3_RUSER_WIDTH PARAM_VALUE.C_UW_Channel3_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel3_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel3_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel3_BUSER_WIDTH { MODELPARAM_VALUE.C_UW_Channel3_BUSER_WIDTH PARAM_VALUE.C_UW_Channel3_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel3_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_UW_Channel3_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_UW_Channel0_FLASH_CHANNEL { MODELPARAM_VALUE.C_UW_Channel0_FLASH_CHANNEL PARAM_VALUE.C_UW_Channel0_FLASH_CHANNEL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel0_FLASH_CHANNEL}] ${MODELPARAM_VALUE.C_UW_Channel0_FLASH_CHANNEL}
}

proc update_MODELPARAM_VALUE.C_UW_Channel0_BRAM_BASE_ADDR { MODELPARAM_VALUE.C_UW_Channel0_BRAM_BASE_ADDR PARAM_VALUE.C_UW_Channel0_BRAM_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel0_BRAM_BASE_ADDR}] ${MODELPARAM_VALUE.C_UW_Channel0_BRAM_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_UW_Channel1_FLASH_CHANNEL { MODELPARAM_VALUE.C_UW_Channel1_FLASH_CHANNEL PARAM_VALUE.C_UW_Channel1_FLASH_CHANNEL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel1_FLASH_CHANNEL}] ${MODELPARAM_VALUE.C_UW_Channel1_FLASH_CHANNEL}
}

proc update_MODELPARAM_VALUE.C_UW_Channel1_BRAM_BASE_ADDR { MODELPARAM_VALUE.C_UW_Channel1_BRAM_BASE_ADDR PARAM_VALUE.C_UW_Channel1_BRAM_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel1_BRAM_BASE_ADDR}] ${MODELPARAM_VALUE.C_UW_Channel1_BRAM_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_UW_Channel2_FLASH_CHANNEL { MODELPARAM_VALUE.C_UW_Channel2_FLASH_CHANNEL PARAM_VALUE.C_UW_Channel2_FLASH_CHANNEL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel2_FLASH_CHANNEL}] ${MODELPARAM_VALUE.C_UW_Channel2_FLASH_CHANNEL}
}

proc update_MODELPARAM_VALUE.C_UW_Channel2_BRAM_BASE_ADDR { MODELPARAM_VALUE.C_UW_Channel2_BRAM_BASE_ADDR PARAM_VALUE.C_UW_Channel2_BRAM_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel2_BRAM_BASE_ADDR}] ${MODELPARAM_VALUE.C_UW_Channel2_BRAM_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_UW_Channel3_FLASH_CHANNEL { MODELPARAM_VALUE.C_UW_Channel3_FLASH_CHANNEL PARAM_VALUE.C_UW_Channel3_FLASH_CHANNEL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel3_FLASH_CHANNEL}] ${MODELPARAM_VALUE.C_UW_Channel3_FLASH_CHANNEL}
}

proc update_MODELPARAM_VALUE.C_UW_Channel3_BRAM_BASE_ADDR { MODELPARAM_VALUE.C_UW_Channel3_BRAM_BASE_ADDR PARAM_VALUE.C_UW_Channel3_BRAM_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel3_BRAM_BASE_ADDR}] ${MODELPARAM_VALUE.C_UW_Channel3_BRAM_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_UW_Channel4_FLASH_CHANNEL { MODELPARAM_VALUE.C_UW_Channel4_FLASH_CHANNEL PARAM_VALUE.C_UW_Channel4_FLASH_CHANNEL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel4_FLASH_CHANNEL}] ${MODELPARAM_VALUE.C_UW_Channel4_FLASH_CHANNEL}
}

proc update_MODELPARAM_VALUE.C_UW_Channel4_BRAM_BASE_ADDR { MODELPARAM_VALUE.C_UW_Channel4_BRAM_BASE_ADDR PARAM_VALUE.C_UW_Channel4_BRAM_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel4_BRAM_BASE_ADDR}] ${MODELPARAM_VALUE.C_UW_Channel4_BRAM_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_UW_Channel5_FLASH_CHANNEL { MODELPARAM_VALUE.C_UW_Channel5_FLASH_CHANNEL PARAM_VALUE.C_UW_Channel5_FLASH_CHANNEL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel5_FLASH_CHANNEL}] ${MODELPARAM_VALUE.C_UW_Channel5_FLASH_CHANNEL}
}

proc update_MODELPARAM_VALUE.C_UW_Channel5_BRAM_BASE_ADDR { MODELPARAM_VALUE.C_UW_Channel5_BRAM_BASE_ADDR PARAM_VALUE.C_UW_Channel5_BRAM_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel5_BRAM_BASE_ADDR}] ${MODELPARAM_VALUE.C_UW_Channel5_BRAM_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_UW_Channel6_FLASH_CHANNEL { MODELPARAM_VALUE.C_UW_Channel6_FLASH_CHANNEL PARAM_VALUE.C_UW_Channel6_FLASH_CHANNEL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel6_FLASH_CHANNEL}] ${MODELPARAM_VALUE.C_UW_Channel6_FLASH_CHANNEL}
}

proc update_MODELPARAM_VALUE.C_UW_Channel6_BRAM_BASE_ADDR { MODELPARAM_VALUE.C_UW_Channel6_BRAM_BASE_ADDR PARAM_VALUE.C_UW_Channel6_BRAM_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel6_BRAM_BASE_ADDR}] ${MODELPARAM_VALUE.C_UW_Channel6_BRAM_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_UW_Channel7_FLASH_CHANNEL { MODELPARAM_VALUE.C_UW_Channel7_FLASH_CHANNEL PARAM_VALUE.C_UW_Channel7_FLASH_CHANNEL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel7_FLASH_CHANNEL}] ${MODELPARAM_VALUE.C_UW_Channel7_FLASH_CHANNEL}
}

proc update_MODELPARAM_VALUE.C_UW_Channel7_BRAM_BASE_ADDR { MODELPARAM_VALUE.C_UW_Channel7_BRAM_BASE_ADDR PARAM_VALUE.C_UW_Channel7_BRAM_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UW_Channel7_BRAM_BASE_ADDR}] ${MODELPARAM_VALUE.C_UW_Channel7_BRAM_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_HOST_DATA_TRANSFER_TARGET_SLAVE_BASE_ADDR { MODELPARAM_VALUE.C_HOST_DATA_TRANSFER_TARGET_SLAVE_BASE_ADDR PARAM_VALUE.C_HOST_DATA_TRANSFER_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HOST_DATA_TRANSFER_TARGET_SLAVE_BASE_ADDR}] ${MODELPARAM_VALUE.C_HOST_DATA_TRANSFER_TARGET_SLAVE_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_HOST_DATA_TRANSFER_BURST_LEN { MODELPARAM_VALUE.C_HOST_DATA_TRANSFER_BURST_LEN PARAM_VALUE.C_HOST_DATA_TRANSFER_BURST_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HOST_DATA_TRANSFER_BURST_LEN}] ${MODELPARAM_VALUE.C_HOST_DATA_TRANSFER_BURST_LEN}
}

proc update_MODELPARAM_VALUE.C_HOST_DATA_TRANSFER_ID_WIDTH { MODELPARAM_VALUE.C_HOST_DATA_TRANSFER_ID_WIDTH PARAM_VALUE.C_HOST_DATA_TRANSFER_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HOST_DATA_TRANSFER_ID_WIDTH}] ${MODELPARAM_VALUE.C_HOST_DATA_TRANSFER_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HOST_DATA_TRANSFER_ADDR_WIDTH { MODELPARAM_VALUE.C_HOST_DATA_TRANSFER_ADDR_WIDTH PARAM_VALUE.C_HOST_DATA_TRANSFER_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HOST_DATA_TRANSFER_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_HOST_DATA_TRANSFER_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HOST_DATA_TRANSFER_DATA_WIDTH { MODELPARAM_VALUE.C_HOST_DATA_TRANSFER_DATA_WIDTH PARAM_VALUE.C_HOST_DATA_TRANSFER_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HOST_DATA_TRANSFER_DATA_WIDTH}] ${MODELPARAM_VALUE.C_HOST_DATA_TRANSFER_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HOST_DATA_TRANSFER_AWUSER_WIDTH { MODELPARAM_VALUE.C_HOST_DATA_TRANSFER_AWUSER_WIDTH PARAM_VALUE.C_HOST_DATA_TRANSFER_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HOST_DATA_TRANSFER_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_HOST_DATA_TRANSFER_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HOST_DATA_TRANSFER_ARUSER_WIDTH { MODELPARAM_VALUE.C_HOST_DATA_TRANSFER_ARUSER_WIDTH PARAM_VALUE.C_HOST_DATA_TRANSFER_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HOST_DATA_TRANSFER_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_HOST_DATA_TRANSFER_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HOST_DATA_TRANSFER_WUSER_WIDTH { MODELPARAM_VALUE.C_HOST_DATA_TRANSFER_WUSER_WIDTH PARAM_VALUE.C_HOST_DATA_TRANSFER_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HOST_DATA_TRANSFER_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_HOST_DATA_TRANSFER_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HOST_DATA_TRANSFER_RUSER_WIDTH { MODELPARAM_VALUE.C_HOST_DATA_TRANSFER_RUSER_WIDTH PARAM_VALUE.C_HOST_DATA_TRANSFER_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HOST_DATA_TRANSFER_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_HOST_DATA_TRANSFER_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HOST_DATA_TRANSFER_BUSER_WIDTH { MODELPARAM_VALUE.C_HOST_DATA_TRANSFER_BUSER_WIDTH PARAM_VALUE.C_HOST_DATA_TRANSFER_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HOST_DATA_TRANSFER_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_HOST_DATA_TRANSFER_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_CWBP_DATA_WIDTH { MODELPARAM_VALUE.C_CWBP_DATA_WIDTH PARAM_VALUE.C_CWBP_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CWBP_DATA_WIDTH}] ${MODELPARAM_VALUE.C_CWBP_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.Mapping_Table_Header_BaseAddress { MODELPARAM_VALUE.Mapping_Table_Header_BaseAddress PARAM_VALUE.Mapping_Table_Header_BaseAddress } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Mapping_Table_Header_BaseAddress}] ${MODELPARAM_VALUE.Mapping_Table_Header_BaseAddress}
}

proc update_MODELPARAM_VALUE.OFFSET_CONST { MODELPARAM_VALUE.OFFSET_CONST PARAM_VALUE.OFFSET_CONST } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OFFSET_CONST}] ${MODELPARAM_VALUE.OFFSET_CONST}
}

