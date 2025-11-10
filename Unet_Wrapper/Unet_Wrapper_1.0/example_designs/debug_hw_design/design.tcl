
proc create_ipi_design { offsetfile design_name } {

	create_bd_design $design_name
	open_bd_design $design_name

	# Create and configure Clock/Reset
	create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz sys_clk_0
	create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset sys_reset_0

	#Constraints will be provided manually while pin planning.
		create_bd_port -dir I -type rst reset_rtl
		set_property CONFIG.POLARITY [get_property CONFIG.POLARITY [get_bd_pins sys_clk_0/reset]] [get_bd_ports reset_rtl]
		connect_bd_net [get_bd_pins sys_reset_0/ext_reset_in] [get_bd_ports reset_rtl]
		connect_bd_net [get_bd_ports reset_rtl] [get_bd_pins sys_clk_0/reset]
		set external_reset_port reset_rtl
		create_bd_port -dir I -type clk clock_rtl
		connect_bd_net [get_bd_pins sys_clk_0/clk_in1] [get_bd_ports clock_rtl]
		set external_clock_port clock_rtl
	
	#Avoid IPI DRC, make clock port synchronous to reset
	if { $external_clock_port ne "" && $external_reset_port ne "" } {
		set_property CONFIG.ASSOCIATED_RESET $external_reset_port [get_bd_ports $external_clock_port]
	}

	# Connect other sys_reset pins
	connect_bd_net [get_bd_pins sys_reset_0/slowest_sync_clk] [get_bd_pins sys_clk_0/clk_out1]
	connect_bd_net [get_bd_pins sys_clk_0/locked] [get_bd_pins sys_reset_0/dcm_locked]

	# Create instance: Unet_Wrapper_0, and set properties
	set Unet_Wrapper_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Unet_Wrapper:1.0 Unet_Wrapper_0 ]

	# Create instance: jtag_axi_0, and set properties
	set jtag_axi_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:jtag_axi jtag_axi_0 ]
	set_property -dict [list CONFIG.PROTOCOL {0}] [get_bd_cells jtag_axi_0]
	connect_bd_net [get_bd_pins jtag_axi_0/aclk] [get_bd_pins sys_clk_0/clk_out1]
	connect_bd_net [get_bd_pins jtag_axi_0/aresetn] [get_bd_pins sys_reset_0/peripheral_aresetn]

	# Create instance: axi_peri_interconnect, and set properties
	set axi_peri_interconnect [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect axi_peri_interconnect ]
	connect_bd_net [get_bd_pins axi_peri_interconnect/ACLK] [get_bd_pins sys_clk_0/clk_out1]
	connect_bd_net [get_bd_pins axi_peri_interconnect/ARESETN] [get_bd_pins sys_reset_0/interconnect_aresetn]
	set_property -dict [ list CONFIG.NUM_SI {1}  ] $axi_peri_interconnect
	connect_bd_net [get_bd_pins axi_peri_interconnect/S00_ACLK] [get_bd_pins sys_clk_0/clk_out1]
	connect_bd_net [get_bd_pins axi_peri_interconnect/S00_ARESETN] [get_bd_pins sys_reset_0/peripheral_aresetn]
	connect_bd_intf_net [get_bd_intf_pins jtag_axi_0/M_AXI] [get_bd_intf_pins axi_peri_interconnect/S00_AXI]

	set_property -dict [ list CONFIG.NUM_MI {3} ] $axi_peri_interconnect
	connect_bd_net [get_bd_pins axi_peri_interconnect/M00_ACLK] [get_bd_pins sys_clk_0/clk_out1]
	connect_bd_net [get_bd_pins axi_peri_interconnect/M00_ARESETN] [get_bd_pins sys_reset_0/peripheral_aresetn]
	connect_bd_net [get_bd_pins axi_peri_interconnect/M01_ACLK] [get_bd_pins sys_clk_0/clk_out1]
	connect_bd_net [get_bd_pins axi_peri_interconnect/M01_ARESETN] [get_bd_pins sys_reset_0/peripheral_aresetn]
	connect_bd_net [get_bd_pins axi_peri_interconnect/M02_ACLK] [get_bd_pins sys_clk_0/clk_out1]
	connect_bd_net [get_bd_pins axi_peri_interconnect/M02_ARESETN] [get_bd_pins sys_reset_0/peripheral_aresetn]

	# Create instance: axi_mem_interconnect, and set properties
	set axi_mem_interconnect [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect axi_mem_interconnect ]
	connect_bd_net [get_bd_pins axi_mem_interconnect/ACLK] [get_bd_pins sys_clk_0/clk_out1]
	connect_bd_net [get_bd_pins axi_mem_interconnect/ARESETN] [get_bd_pins sys_reset_0/interconnect_aresetn]
	set_property -dict [ list CONFIG.NUM_MI {1} ] $axi_mem_interconnect
	connect_bd_net [get_bd_pins axi_mem_interconnect/M00_ACLK] [get_bd_pins sys_clk_0/clk_out1]
	connect_bd_net [get_bd_pins axi_mem_interconnect/M00_ARESETN] [get_bd_pins sys_reset_0/peripheral_aresetn]

	set_property -dict [ list CONFIG.NUM_SI {9} ] $axi_mem_interconnect
	connect_bd_net [get_bd_pins axi_mem_interconnect/S00_ACLK] [get_bd_pins sys_clk_0/clk_out1]
	connect_bd_net [get_bd_pins axi_mem_interconnect/S00_ARESETN] [get_bd_pins sys_reset_0/peripheral_aresetn]
	connect_bd_net [get_bd_pins axi_mem_interconnect/S01_ACLK] [get_bd_pins sys_clk_0/clk_out1]
	connect_bd_net [get_bd_pins axi_mem_interconnect/S01_ARESETN] [get_bd_pins sys_reset_0/peripheral_aresetn]
	connect_bd_net [get_bd_pins axi_mem_interconnect/S02_ACLK] [get_bd_pins sys_clk_0/clk_out1]
	connect_bd_net [get_bd_pins axi_mem_interconnect/S02_ARESETN] [get_bd_pins sys_reset_0/peripheral_aresetn]
	connect_bd_net [get_bd_pins axi_mem_interconnect/S03_ACLK] [get_bd_pins sys_clk_0/clk_out1]
	connect_bd_net [get_bd_pins axi_mem_interconnect/S03_ARESETN] [get_bd_pins sys_reset_0/peripheral_aresetn]
	connect_bd_net [get_bd_pins axi_mem_interconnect/S04_ACLK] [get_bd_pins sys_clk_0/clk_out1]
	connect_bd_net [get_bd_pins axi_mem_interconnect/S04_ARESETN] [get_bd_pins sys_reset_0/peripheral_aresetn]
	connect_bd_net [get_bd_pins axi_mem_interconnect/S05_ACLK] [get_bd_pins sys_clk_0/clk_out1]
	connect_bd_net [get_bd_pins axi_mem_interconnect/S05_ARESETN] [get_bd_pins sys_reset_0/peripheral_aresetn]
	connect_bd_net [get_bd_pins axi_mem_interconnect/S06_ACLK] [get_bd_pins sys_clk_0/clk_out1]
	connect_bd_net [get_bd_pins axi_mem_interconnect/S06_ARESETN] [get_bd_pins sys_reset_0/peripheral_aresetn]
	connect_bd_net [get_bd_pins axi_mem_interconnect/S07_ACLK] [get_bd_pins sys_clk_0/clk_out1]
	connect_bd_net [get_bd_pins axi_mem_interconnect/S07_ARESETN] [get_bd_pins sys_reset_0/peripheral_aresetn]
	connect_bd_net [get_bd_pins axi_mem_interconnect/S08_ACLK] [get_bd_pins sys_clk_0/clk_out1]
	connect_bd_net [get_bd_pins axi_mem_interconnect/S08_ARESETN] [get_bd_pins sys_reset_0/peripheral_aresetn]
	connect_bd_intf_net [get_bd_intf_pins axi_mem_interconnect/S08_AXI] [get_bd_intf_pins axi_peri_interconnect/M00_AXI]

	# Create instance: axi_bram_ctrl_0, and set properties
	set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl axi_bram_ctrl_0 ]
	connect_bd_intf_net [get_bd_intf_pins axi_mem_interconnect/M00_AXI] [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]
	connect_bd_net [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins sys_clk_0/clk_out1]
	connect_bd_net [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins sys_reset_0/peripheral_aresetn]

	# Create instance: axi_bram_0, and set properties
	set axi_bram_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen axi_bram_0 ]
	set_property -dict [ list CONFIG.Memory_Type {True_Dual_Port_RAM}  ] $axi_bram_0
	connect_bd_intf_net [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins axi_bram_0/BRAM_PORTA]
	connect_bd_intf_net [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTB] [get_bd_intf_pins axi_bram_0/BRAM_PORTB]

	# Create instance: axi_gpio_out, and set properties
	set axi_gpio_out [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio axi_gpio_out ]
	set_property -dict [ list CONFIG.C_ALL_OUTPUTS {1} CONFIG.C_GPIO_WIDTH {8}  ] $axi_gpio_out
	connect_bd_net [get_bd_pins axi_gpio_out/s_axi_aclk] [get_bd_pins sys_clk_0/clk_out1]
	connect_bd_net [get_bd_pins axi_gpio_out/s_axi_aresetn] [get_bd_pins sys_reset_0/peripheral_aresetn]
	connect_bd_intf_net [get_bd_intf_pins axi_gpio_out/S_AXI] [get_bd_intf_pins axi_peri_interconnect/M01_AXI]

	# Create instance: axi_gpio_in, and set properties
	set axi_gpio_in [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio axi_gpio_in ]
	set_property -dict [ list CONFIG.C_ALL_INPUTS {1} CONFIG.C_GPIO_WIDTH {16}  ] $axi_gpio_in
	connect_bd_net [get_bd_pins axi_gpio_in/s_axi_aclk] [get_bd_pins sys_clk_0/clk_out1]
	connect_bd_net [get_bd_pins axi_gpio_in/s_axi_aresetn] [get_bd_pins sys_reset_0/peripheral_aresetn]
	connect_bd_intf_net [get_bd_intf_pins axi_gpio_in/S_AXI] [get_bd_intf_pins axi_peri_interconnect/M02_AXI]

	# Create instance: xlconcat_0, and set properties
	set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat xlconcat_0 ]
	set_property -dict [ list CONFIG.NUM_PORTS {16}  ] $xlconcat_0
	connect_bd_net [get_bd_pins xlconcat_0/dout] [get_bd_pins axi_gpio_in/gpio_io_i]

	# Create slice hier block : slice_block, and set properties
	set oldCurInst [current_bd_instance .]
	set slice_block [create_bd_cell -type hier slice_block ]
	current_bd_instance $slice_block
	create_bd_pin -dir I -from 7 -to 0 Din 
	create_bd_pin -dir O -from 0 -to 0 Dout0
	set bit_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice bit_0 ]
	set_property -dict [ list CONFIG.DIN_TO {0} CONFIG.DIN_WIDTH {8}  ] $bit_0
	connect_bd_net [get_bd_pins Dout0 ] [get_bd_pins bit_0/Dout]
	connect_bd_net [get_bd_pins Din] [get_bd_pins bit_0/Din]
	create_bd_pin -dir O -from 0 -to 0 Dout1
	set bit_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice bit_1 ]
	set_property -dict [ list CONFIG.DIN_TO {1} CONFIG.DIN_WIDTH {8}  ] $bit_1
	connect_bd_net [get_bd_pins Dout1 ] [get_bd_pins bit_1/Dout]
	connect_bd_net [get_bd_pins Din] [get_bd_pins bit_1/Din]
	create_bd_pin -dir O -from 0 -to 0 Dout2
	set bit_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice bit_2 ]
	set_property -dict [ list CONFIG.DIN_TO {2} CONFIG.DIN_WIDTH {8}  ] $bit_2
	connect_bd_net [get_bd_pins Dout2 ] [get_bd_pins bit_2/Dout]
	connect_bd_net [get_bd_pins Din] [get_bd_pins bit_2/Din]
	create_bd_pin -dir O -from 0 -to 0 Dout3
	set bit_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice bit_3 ]
	set_property -dict [ list CONFIG.DIN_TO {3} CONFIG.DIN_WIDTH {8}  ] $bit_3
	connect_bd_net [get_bd_pins Dout3 ] [get_bd_pins bit_3/Dout]
	connect_bd_net [get_bd_pins Din] [get_bd_pins bit_3/Din]
	create_bd_pin -dir O -from 0 -to 0 Dout4
	set bit_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice bit_4 ]
	set_property -dict [ list CONFIG.DIN_TO {4} CONFIG.DIN_WIDTH {8}  ] $bit_4
	connect_bd_net [get_bd_pins Dout4 ] [get_bd_pins bit_4/Dout]
	connect_bd_net [get_bd_pins Din] [get_bd_pins bit_4/Din]
	create_bd_pin -dir O -from 0 -to 0 Dout5
	set bit_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice bit_5 ]
	set_property -dict [ list CONFIG.DIN_TO {5} CONFIG.DIN_WIDTH {8}  ] $bit_5
	connect_bd_net [get_bd_pins Dout5 ] [get_bd_pins bit_5/Dout]
	connect_bd_net [get_bd_pins Din] [get_bd_pins bit_5/Din]
	create_bd_pin -dir O -from 0 -to 0 Dout6
	set bit_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice bit_6 ]
	set_property -dict [ list CONFIG.DIN_TO {6} CONFIG.DIN_WIDTH {8}  ] $bit_6
	connect_bd_net [get_bd_pins Dout6 ] [get_bd_pins bit_6/Dout]
	connect_bd_net [get_bd_pins Din] [get_bd_pins bit_6/Din]
	create_bd_pin -dir O -from 0 -to 0 Dout7
	set bit_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice bit_7 ]
	set_property -dict [ list CONFIG.DIN_TO {7} CONFIG.DIN_WIDTH {8}  ] $bit_7
	connect_bd_net [get_bd_pins Dout7 ] [get_bd_pins bit_7/Dout]
	connect_bd_net [get_bd_pins Din] [get_bd_pins bit_7/Din]
	current_bd_instance $oldCurInst
	connect_bd_net [get_bd_pins axi_gpio_out/gpio_io_o] [get_bd_pins slice_block/Din]

	# Connect all clock, reset & status pins of Unet_Wrapper_0 master interfaces..
	connect_bd_intf_net [get_bd_intf_pins axi_mem_interconnect/S00_AXI] [get_bd_intf_pins Unet_Wrapper_0/UW_Channel0]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel0_aclk] [get_bd_pins sys_clk_0/clk_out1]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel0_aresetn] [get_bd_pins sys_reset_0/peripheral_aresetn]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel0_txn_done] [get_bd_pins xlconcat_0/In0]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel0_error] [get_bd_pins xlconcat_0/In1]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel0_init_axi_txn] [ get_bd_pins slice_block/Dout0 ]
	connect_bd_intf_net [get_bd_intf_pins axi_mem_interconnect/S01_AXI] [get_bd_intf_pins Unet_Wrapper_0/UW_Channel1]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel1_aclk] [get_bd_pins sys_clk_0/clk_out1]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel1_aresetn] [get_bd_pins sys_reset_0/peripheral_aresetn]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel1_txn_done] [get_bd_pins xlconcat_0/In2]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel1_error] [get_bd_pins xlconcat_0/In3]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel1_init_axi_txn] [ get_bd_pins slice_block/Dout1 ]
	connect_bd_intf_net [get_bd_intf_pins axi_mem_interconnect/S02_AXI] [get_bd_intf_pins Unet_Wrapper_0/UW_Channel2]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel2_aclk] [get_bd_pins sys_clk_0/clk_out1]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel2_aresetn] [get_bd_pins sys_reset_0/peripheral_aresetn]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel2_txn_done] [get_bd_pins xlconcat_0/In4]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel2_error] [get_bd_pins xlconcat_0/In5]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel2_init_axi_txn] [ get_bd_pins slice_block/Dout2 ]
	connect_bd_intf_net [get_bd_intf_pins axi_mem_interconnect/S03_AXI] [get_bd_intf_pins Unet_Wrapper_0/UW_Channel3]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel3_aclk] [get_bd_pins sys_clk_0/clk_out1]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel3_aresetn] [get_bd_pins sys_reset_0/peripheral_aresetn]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel3_txn_done] [get_bd_pins xlconcat_0/In6]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel3_error] [get_bd_pins xlconcat_0/In7]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel3_init_axi_txn] [ get_bd_pins slice_block/Dout3 ]
	connect_bd_intf_net [get_bd_intf_pins axi_mem_interconnect/S04_AXI] [get_bd_intf_pins Unet_Wrapper_0/UW_Channel4]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel4_aclk] [get_bd_pins sys_clk_0/clk_out1]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel4_aresetn] [get_bd_pins sys_reset_0/peripheral_aresetn]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel4_txn_done] [get_bd_pins xlconcat_0/In8]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel4_error] [get_bd_pins xlconcat_0/In9]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel4_init_axi_txn] [ get_bd_pins slice_block/Dout4 ]
	connect_bd_intf_net [get_bd_intf_pins axi_mem_interconnect/S05_AXI] [get_bd_intf_pins Unet_Wrapper_0/UW_Channel5]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel5_aclk] [get_bd_pins sys_clk_0/clk_out1]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel5_aresetn] [get_bd_pins sys_reset_0/peripheral_aresetn]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel5_txn_done] [get_bd_pins xlconcat_0/In10]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel5_error] [get_bd_pins xlconcat_0/In11]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel5_init_axi_txn] [ get_bd_pins slice_block/Dout5 ]
	connect_bd_intf_net [get_bd_intf_pins axi_mem_interconnect/S06_AXI] [get_bd_intf_pins Unet_Wrapper_0/UW_Channel6]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel6_aclk] [get_bd_pins sys_clk_0/clk_out1]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel6_aresetn] [get_bd_pins sys_reset_0/peripheral_aresetn]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel6_txn_done] [get_bd_pins xlconcat_0/In12]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel6_error] [get_bd_pins xlconcat_0/In13]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel6_init_axi_txn] [ get_bd_pins slice_block/Dout6 ]
	connect_bd_intf_net [get_bd_intf_pins axi_mem_interconnect/S07_AXI] [get_bd_intf_pins Unet_Wrapper_0/UW_Channel7]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel7_aclk] [get_bd_pins sys_clk_0/clk_out1]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel7_aresetn] [get_bd_pins sys_reset_0/peripheral_aresetn]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel7_txn_done] [get_bd_pins xlconcat_0/In14]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel7_error] [get_bd_pins xlconcat_0/In15]
	connect_bd_net [get_bd_pins Unet_Wrapper_0/uw_channel7_init_axi_txn] [ get_bd_pins slice_block/Dout7 ]


	# Auto assign address
	assign_bd_address

	# Configure address param & range of Unet_Wrapper_0 master interfaces..
	set_property range 16K [get_bd_addr_segs {jtag_axi_0/Data/SEG_axi_bram_ctrl_0_Mem0}]
	set_property range 16K [get_bd_addr_segs {Unet_Wrapper_0/UW_Channel0/SEG_axi_bram_ctrl_0_Mem0}]
	set_property range 16K [get_bd_addr_segs {Unet_Wrapper_0/UW_Channel1/SEG_axi_bram_ctrl_0_Mem0}]
	set_property range 16K [get_bd_addr_segs {Unet_Wrapper_0/UW_Channel2/SEG_axi_bram_ctrl_0_Mem0}]
	set_property range 16K [get_bd_addr_segs {Unet_Wrapper_0/UW_Channel3/SEG_axi_bram_ctrl_0_Mem0}]
	set_property range 16K [get_bd_addr_segs {Unet_Wrapper_0/UW_Channel4/SEG_axi_bram_ctrl_0_Mem0}]
	set_property range 16K [get_bd_addr_segs {Unet_Wrapper_0/UW_Channel5/SEG_axi_bram_ctrl_0_Mem0}]
	set_property range 16K [get_bd_addr_segs {Unet_Wrapper_0/UW_Channel6/SEG_axi_bram_ctrl_0_Mem0}]
	set_property range 16K [get_bd_addr_segs {Unet_Wrapper_0/UW_Channel7/SEG_axi_bram_ctrl_0_Mem0}]
	set_property -dict [list  CONFIG.C_UW_Channel0_TARGET_SLAVE_BASE_ADDR {0xC0000000} CONFIG.C_UW_Channel1_TARGET_SLAVE_BASE_ADDR {0xC0000100} CONFIG.C_UW_Channel2_TARGET_SLAVE_BASE_ADDR {0xC0000200} CONFIG.C_UW_Channel3_TARGET_SLAVE_BASE_ADDR {0xC0000300} CONFIG.C_UW_Channel4_TARGET_SLAVE_BASE_ADDR {0xC0000400} CONFIG.C_UW_Channel5_TARGET_SLAVE_BASE_ADDR {0xC0000500} CONFIG.C_UW_Channel6_TARGET_SLAVE_BASE_ADDR {0xC0000600} CONFIG.C_UW_Channel7_TARGET_SLAVE_BASE_ADDR {0xC0000700} ] [get_bd_cells Unet_Wrapper_0]

	# Copy all address to Unet_Wrapper_v1_0_include.tcl file
	set bd_path [get_property DIRECTORY [current_project]]/[current_project].srcs/[current_fileset]/bd
	upvar 1 $offsetfile offset_file
	set offset_file "${bd_path}/Unet_Wrapper_v1_0_include.tcl"
	set fp [open $offset_file "w"]
	puts $fp "# Configuration address parameters"

	set offset [get_property OFFSET [get_bd_addr_segs /jtag_axi_0/Data/SEG_axi_gpio_in_Reg ]]
	puts $fp "set axi_gpio_in_addr ${offset}"

	set offset [get_property OFFSET [get_bd_addr_segs /jtag_axi_0/Data/SEG_axi_gpio_out_Reg ]]
	puts $fp "set axi_gpio_out_addr ${offset}"

	close $fp
}

# Set IP Repository and Update IP Catalogue 
set ip_path [file dirname [file normalize [get_property XML_FILE_NAME [ipx::get_cores xilinx.com:user:Unet_Wrapper:1.0]]]]
set hw_test_file ${ip_path}/example_designs/debug_hw_design/Unet_Wrapper_v1_0_hw_test.tcl

set repo_paths [get_property ip_repo_paths [current_fileset]] 
if { [lsearch -exact -nocase $repo_paths $ip_path ] == -1 } {
	set_property ip_repo_paths "$ip_path [get_property ip_repo_paths [current_fileset]]" [current_fileset]
	update_ip_catalog
}

set design_name ""
set all_bd {}
set all_bd_files [get_files *.bd -quiet]
foreach file $all_bd_files {
set file_name [string range $file [expr {[string last "/" $file] + 1}] end]
set bd_name [string range $file_name 0 [expr {[string last "." $file_name] -1}]]
lappend all_bd $bd_name
}

for { set i 1 } { 1 } { incr i } {
	set design_name "Unet_Wrapper_v1_0_hw_${i}"
	if { [lsearch -exact -nocase $all_bd $design_name ] == -1 } {
		break
	}
}

set intf_address_include_file ""
create_ipi_design intf_address_include_file ${design_name}
save_bd_design
validate_bd_design

set wrapper_file [make_wrapper -files [get_files ${design_name}.bd] -top -force]
import_files -force -norecurse $wrapper_file

puts "-------------------------------------------------------------------------------------------------"
puts "INFO NEXT STEPS : Until this stage, debug hardware design has been created, "
puts "   please perform following steps to test design in targeted board."
puts "1. Generate bitstream"
puts "2. Setup your targeted board, open hardware manager and open new(or existing) hardware target"
puts "3. Download generated bitstream"
puts "4. Run generated hardware test using below command, this invokes basic read/write operation"
puts "   to every interface present in the peripheral : xilinx.com:user:myip:1.0"
puts "   : source -notrace ${hw_test_file}"
puts "-------------------------------------------------------------------------------------------------"

