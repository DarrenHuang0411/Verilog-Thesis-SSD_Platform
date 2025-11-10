proc create_ipi_design { offsetfile design_name } {
	create_bd_design $design_name
	open_bd_design $design_name

	# Create Clock and Reset Ports
	set ACLK [ create_bd_port -dir I -type clk ACLK ]
	set_property -dict [ list CONFIG.FREQ_HZ {100000000} CONFIG.PHASE {0.000} CONFIG.CLK_DOMAIN "${design_name}_ACLK" ] $ACLK
	set ARESETN [ create_bd_port -dir I -type rst ARESETN ]
	set_property -dict [ list CONFIG.POLARITY {ACTIVE_LOW}  ] $ARESETN
	set_property CONFIG.ASSOCIATED_RESET ARESETN $ACLK

	# Create instance: Unet_Wrapper_0, and set properties
	set Unet_Wrapper_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Unet_Wrapper:1.0 Unet_Wrapper_0]

	# Create External ports
	set UW_Channel0_INIT_AXI_TXN [ create_bd_port -dir I UW_Channel0_INIT_AXI_TXN ]
	set UW_Channel0_ERROR [ create_bd_port -dir O UW_Channel0_ERROR ]
	set UW_Channel0_TXN_DONE [ create_bd_port -dir O UW_Channel0_TXN_DONE ]

	# Create instance: slave_0, and set properties
	set slave_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip slave_0]
	set_property -dict [ list  CONFIG.PROTOCOL {AXI4}  CONFIG.INTERFACE_MODE {SLAVE} ] $slave_0

connect_bd_intf_net [get_bd_intf_pins slave_0/S_AXI ] [get_bd_intf_pins Unet_Wrapper_0/UW_Channel0]
	# Create port connections
	connect_bd_net -net aclk_net [get_bd_ports ACLK] [get_bd_pins slave_0/ACLK] [get_bd_pins Unet_Wrapper_0/UW_Channel0_ACLK]
	connect_bd_net -net aresetn_net [get_bd_ports ARESETN] [get_bd_pins slave_0/ARESETN] [get_bd_pins Unet_Wrapper_0/UW_Channel0_ARESETN]
	connect_bd_net -net init_axi_txn_00 [get_bd_ports UW_Channel0_INIT_AXI_TXN] [get_bd_pins Unet_Wrapper_0/UW_Channel0_INIT_AXI_TXN]
	connect_bd_net -net error_00 [get_bd_ports UW_Channel0_ERROR] [get_bd_pins Unet_Wrapper_0/UW_Channel0_ERROR]
	connect_bd_net -net txn_done_00 [get_bd_ports UW_Channel0_TXN_DONE] [get_bd_pins Unet_Wrapper_0/UW_Channel0_TXN_DONE]

	# Create External ports
	set UW_Channel1_INIT_AXI_TXN [ create_bd_port -dir I UW_Channel1_INIT_AXI_TXN ]
	set UW_Channel1_ERROR [ create_bd_port -dir O UW_Channel1_ERROR ]
	set UW_Channel1_TXN_DONE [ create_bd_port -dir O UW_Channel1_TXN_DONE ]

	# Create instance: slave_1, and set properties
	set slave_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip slave_1]
	set_property -dict [ list  CONFIG.PROTOCOL {AXI4}  CONFIG.INTERFACE_MODE {SLAVE} ] $slave_1

connect_bd_intf_net [get_bd_intf_pins slave_1/S_AXI ] [get_bd_intf_pins Unet_Wrapper_0/UW_Channel1]
	# Create port connections
	connect_bd_net -net aclk_net [get_bd_ports ACLK] [get_bd_pins slave_1/ACLK] [get_bd_pins Unet_Wrapper_0/UW_Channel1_ACLK]
	connect_bd_net -net aresetn_net [get_bd_ports ARESETN] [get_bd_pins slave_1/ARESETN] [get_bd_pins Unet_Wrapper_0/UW_Channel1_ARESETN]
	connect_bd_net -net init_axi_txn_11 [get_bd_ports UW_Channel1_INIT_AXI_TXN] [get_bd_pins Unet_Wrapper_0/UW_Channel1_INIT_AXI_TXN]
	connect_bd_net -net error_11 [get_bd_ports UW_Channel1_ERROR] [get_bd_pins Unet_Wrapper_0/UW_Channel1_ERROR]
	connect_bd_net -net txn_done_11 [get_bd_ports UW_Channel1_TXN_DONE] [get_bd_pins Unet_Wrapper_0/UW_Channel1_TXN_DONE]

	# Create External ports
	set UW_Channel2_INIT_AXI_TXN [ create_bd_port -dir I UW_Channel2_INIT_AXI_TXN ]
	set UW_Channel2_ERROR [ create_bd_port -dir O UW_Channel2_ERROR ]
	set UW_Channel2_TXN_DONE [ create_bd_port -dir O UW_Channel2_TXN_DONE ]

	# Create instance: slave_2, and set properties
	set slave_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip slave_2]
	set_property -dict [ list  CONFIG.PROTOCOL {AXI4}  CONFIG.INTERFACE_MODE {SLAVE} ] $slave_2

connect_bd_intf_net [get_bd_intf_pins slave_2/S_AXI ] [get_bd_intf_pins Unet_Wrapper_0/UW_Channel2]
	# Create port connections
	connect_bd_net -net aclk_net [get_bd_ports ACLK] [get_bd_pins slave_2/ACLK] [get_bd_pins Unet_Wrapper_0/UW_Channel2_ACLK]
	connect_bd_net -net aresetn_net [get_bd_ports ARESETN] [get_bd_pins slave_2/ARESETN] [get_bd_pins Unet_Wrapper_0/UW_Channel2_ARESETN]
	connect_bd_net -net init_axi_txn_22 [get_bd_ports UW_Channel2_INIT_AXI_TXN] [get_bd_pins Unet_Wrapper_0/UW_Channel2_INIT_AXI_TXN]
	connect_bd_net -net error_22 [get_bd_ports UW_Channel2_ERROR] [get_bd_pins Unet_Wrapper_0/UW_Channel2_ERROR]
	connect_bd_net -net txn_done_22 [get_bd_ports UW_Channel2_TXN_DONE] [get_bd_pins Unet_Wrapper_0/UW_Channel2_TXN_DONE]

	# Create External ports
	set UW_Channel3_INIT_AXI_TXN [ create_bd_port -dir I UW_Channel3_INIT_AXI_TXN ]
	set UW_Channel3_ERROR [ create_bd_port -dir O UW_Channel3_ERROR ]
	set UW_Channel3_TXN_DONE [ create_bd_port -dir O UW_Channel3_TXN_DONE ]

	# Create instance: slave_3, and set properties
	set slave_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip slave_3]
	set_property -dict [ list  CONFIG.PROTOCOL {AXI4}  CONFIG.INTERFACE_MODE {SLAVE} ] $slave_3

connect_bd_intf_net [get_bd_intf_pins slave_3/S_AXI ] [get_bd_intf_pins Unet_Wrapper_0/UW_Channel3]
	# Create port connections
	connect_bd_net -net aclk_net [get_bd_ports ACLK] [get_bd_pins slave_3/ACLK] [get_bd_pins Unet_Wrapper_0/UW_Channel3_ACLK]
	connect_bd_net -net aresetn_net [get_bd_ports ARESETN] [get_bd_pins slave_3/ARESETN] [get_bd_pins Unet_Wrapper_0/UW_Channel3_ARESETN]
	connect_bd_net -net init_axi_txn_33 [get_bd_ports UW_Channel3_INIT_AXI_TXN] [get_bd_pins Unet_Wrapper_0/UW_Channel3_INIT_AXI_TXN]
	connect_bd_net -net error_33 [get_bd_ports UW_Channel3_ERROR] [get_bd_pins Unet_Wrapper_0/UW_Channel3_ERROR]
	connect_bd_net -net txn_done_33 [get_bd_ports UW_Channel3_TXN_DONE] [get_bd_pins Unet_Wrapper_0/UW_Channel3_TXN_DONE]

	# Create External ports
	set UW_Channel4_INIT_AXI_TXN [ create_bd_port -dir I UW_Channel4_INIT_AXI_TXN ]
	set UW_Channel4_ERROR [ create_bd_port -dir O UW_Channel4_ERROR ]
	set UW_Channel4_TXN_DONE [ create_bd_port -dir O UW_Channel4_TXN_DONE ]

	# Create instance: slave_4, and set properties
	set slave_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip slave_4]
	set_property -dict [ list  CONFIG.PROTOCOL {AXI4}  CONFIG.INTERFACE_MODE {SLAVE} ] $slave_4

connect_bd_intf_net [get_bd_intf_pins slave_4/S_AXI ] [get_bd_intf_pins Unet_Wrapper_0/UW_Channel4]
	# Create port connections
	connect_bd_net -net aclk_net [get_bd_ports ACLK] [get_bd_pins slave_4/ACLK] [get_bd_pins Unet_Wrapper_0/UW_Channel4_ACLK]
	connect_bd_net -net aresetn_net [get_bd_ports ARESETN] [get_bd_pins slave_4/ARESETN] [get_bd_pins Unet_Wrapper_0/UW_Channel4_ARESETN]
	connect_bd_net -net init_axi_txn_44 [get_bd_ports UW_Channel4_INIT_AXI_TXN] [get_bd_pins Unet_Wrapper_0/UW_Channel4_INIT_AXI_TXN]
	connect_bd_net -net error_44 [get_bd_ports UW_Channel4_ERROR] [get_bd_pins Unet_Wrapper_0/UW_Channel4_ERROR]
	connect_bd_net -net txn_done_44 [get_bd_ports UW_Channel4_TXN_DONE] [get_bd_pins Unet_Wrapper_0/UW_Channel4_TXN_DONE]

	# Create External ports
	set UW_Channel5_INIT_AXI_TXN [ create_bd_port -dir I UW_Channel5_INIT_AXI_TXN ]
	set UW_Channel5_ERROR [ create_bd_port -dir O UW_Channel5_ERROR ]
	set UW_Channel5_TXN_DONE [ create_bd_port -dir O UW_Channel5_TXN_DONE ]

	# Create instance: slave_5, and set properties
	set slave_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip slave_5]
	set_property -dict [ list  CONFIG.PROTOCOL {AXI4}  CONFIG.INTERFACE_MODE {SLAVE} ] $slave_5

connect_bd_intf_net [get_bd_intf_pins slave_5/S_AXI ] [get_bd_intf_pins Unet_Wrapper_0/UW_Channel5]
	# Create port connections
	connect_bd_net -net aclk_net [get_bd_ports ACLK] [get_bd_pins slave_5/ACLK] [get_bd_pins Unet_Wrapper_0/UW_Channel5_ACLK]
	connect_bd_net -net aresetn_net [get_bd_ports ARESETN] [get_bd_pins slave_5/ARESETN] [get_bd_pins Unet_Wrapper_0/UW_Channel5_ARESETN]
	connect_bd_net -net init_axi_txn_55 [get_bd_ports UW_Channel5_INIT_AXI_TXN] [get_bd_pins Unet_Wrapper_0/UW_Channel5_INIT_AXI_TXN]
	connect_bd_net -net error_55 [get_bd_ports UW_Channel5_ERROR] [get_bd_pins Unet_Wrapper_0/UW_Channel5_ERROR]
	connect_bd_net -net txn_done_55 [get_bd_ports UW_Channel5_TXN_DONE] [get_bd_pins Unet_Wrapper_0/UW_Channel5_TXN_DONE]

	# Create External ports
	set UW_Channel6_INIT_AXI_TXN [ create_bd_port -dir I UW_Channel6_INIT_AXI_TXN ]
	set UW_Channel6_ERROR [ create_bd_port -dir O UW_Channel6_ERROR ]
	set UW_Channel6_TXN_DONE [ create_bd_port -dir O UW_Channel6_TXN_DONE ]

	# Create instance: slave_6, and set properties
	set slave_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip slave_6]
	set_property -dict [ list  CONFIG.PROTOCOL {AXI4}  CONFIG.INTERFACE_MODE {SLAVE} ] $slave_6

connect_bd_intf_net [get_bd_intf_pins slave_6/S_AXI ] [get_bd_intf_pins Unet_Wrapper_0/UW_Channel6]
	# Create port connections
	connect_bd_net -net aclk_net [get_bd_ports ACLK] [get_bd_pins slave_6/ACLK] [get_bd_pins Unet_Wrapper_0/UW_Channel6_ACLK]
	connect_bd_net -net aresetn_net [get_bd_ports ARESETN] [get_bd_pins slave_6/ARESETN] [get_bd_pins Unet_Wrapper_0/UW_Channel6_ARESETN]
	connect_bd_net -net init_axi_txn_66 [get_bd_ports UW_Channel6_INIT_AXI_TXN] [get_bd_pins Unet_Wrapper_0/UW_Channel6_INIT_AXI_TXN]
	connect_bd_net -net error_66 [get_bd_ports UW_Channel6_ERROR] [get_bd_pins Unet_Wrapper_0/UW_Channel6_ERROR]
	connect_bd_net -net txn_done_66 [get_bd_ports UW_Channel6_TXN_DONE] [get_bd_pins Unet_Wrapper_0/UW_Channel6_TXN_DONE]

	# Create External ports
	set UW_Channel7_INIT_AXI_TXN [ create_bd_port -dir I UW_Channel7_INIT_AXI_TXN ]
	set UW_Channel7_ERROR [ create_bd_port -dir O UW_Channel7_ERROR ]
	set UW_Channel7_TXN_DONE [ create_bd_port -dir O UW_Channel7_TXN_DONE ]

	# Create instance: slave_7, and set properties
	set slave_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip slave_7]
	set_property -dict [ list  CONFIG.PROTOCOL {AXI4}  CONFIG.INTERFACE_MODE {SLAVE} ] $slave_7

connect_bd_intf_net [get_bd_intf_pins slave_7/S_AXI ] [get_bd_intf_pins Unet_Wrapper_0/UW_Channel7]
	# Create port connections
	connect_bd_net -net aclk_net [get_bd_ports ACLK] [get_bd_pins slave_7/ACLK] [get_bd_pins Unet_Wrapper_0/UW_Channel7_ACLK]
	connect_bd_net -net aresetn_net [get_bd_ports ARESETN] [get_bd_pins slave_7/ARESETN] [get_bd_pins Unet_Wrapper_0/UW_Channel7_ARESETN]
	connect_bd_net -net init_axi_txn_77 [get_bd_ports UW_Channel7_INIT_AXI_TXN] [get_bd_pins Unet_Wrapper_0/UW_Channel7_INIT_AXI_TXN]
	connect_bd_net -net error_77 [get_bd_ports UW_Channel7_ERROR] [get_bd_pins Unet_Wrapper_0/UW_Channel7_ERROR]
	connect_bd_net -net txn_done_77 [get_bd_ports UW_Channel7_TXN_DONE] [get_bd_pins Unet_Wrapper_0/UW_Channel7_TXN_DONE]
set_property target_simulator XSim [current_project]
set_property -name {xsim.simulate.runtime} -value {100ms} -objects [get_filesets sim_1]

	# Auto assign address
	assign_bd_address

	# Copy all address to interface_address.vh file
	set bd_path [file dirname [get_property NAME [get_files ${design_name}.bd]]]
	upvar 1 $offsetfile offset_file
	set offset_file "${bd_path}/Unet_Wrapper_v1_0_tb_include.svh"
	set fp [open $offset_file "w"]
	puts $fp "`ifndef Unet_Wrapper_v1_0_tb_include_vh_"
	puts $fp "`define Unet_Wrapper_v1_0_tb_include_vh_\n"
	puts $fp "//Configuration current bd names"
	puts $fp "`define BD_NAME ${design_name}"
	puts $fp "`define BD_INST_NAME ${design_name}_i"
	puts $fp "`define BD_WRAPPER ${design_name}_wrapper\n"
	puts $fp "//Configuration address parameters"

	puts $fp "`endif"
	close $fp
}

set ip_path [file dirname [file normalize [get_property XML_FILE_NAME [ipx::get_cores xilinx.com:user:Unet_Wrapper:1.0]]]]
set test_bench_file ${ip_path}/example_designs/bfm_design/Unet_Wrapper_v1_0_tb.sv
set interface_address_vh_file ""

# Set IP Repository and Update IP Catalogue 
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
	set design_name "Unet_Wrapper_v1_0_bfm_${i}"
	if { [lsearch -exact -nocase $all_bd $design_name ] == -1 } {
		break
	}
}

create_ipi_design interface_address_vh_file ${design_name}
validate_bd_design

set wrapper_file [make_wrapper -files [get_files ${design_name}.bd] -top -force]
import_files -force -norecurse $wrapper_file

set_property SOURCE_SET sources_1 [get_filesets sim_1]
import_files -fileset sim_1 -norecurse -force $test_bench_file
remove_files -quiet -fileset sim_1 Unet_Wrapper_v1_0_tb_include.vh
import_files -fileset sim_1 -norecurse -force $interface_address_vh_file
set_property top Unet_Wrapper_v1_0_tb [get_filesets sim_1]
set_property top_lib {} [get_filesets sim_1]
set_property top_file {} [get_filesets sim_1]
launch_simulation -simset sim_1 -mode behavioral
