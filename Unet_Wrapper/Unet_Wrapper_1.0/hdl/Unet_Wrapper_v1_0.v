
`timescale 1 ns / 1 ps

	module Unet_Wrapper_v1_0 #
	(
	  // Parameters of Axi Master Bus Interface UW_Channel0
		parameter  C_UW_Channel0_FLASH_CHANNEL			= 3'd0,
		parameter  C_UW_Channel0_TARGET_SLAVE_BASE_ADDR	= 32'h43C0_0000,
		parameter  C_UW_Channel0_BRAM_BASE_ADDR			= 32'h5000_0000,
		parameter integer C_UW_Channel0_BURST_LEN		= 16,
		parameter integer C_UW_Channel0_ID_WIDTH		= 1,
		parameter integer C_UW_Channel0_ADDR_WIDTH		= 32,
		parameter integer C_UW_Channel0_DATA_WIDTH		= 32,
		parameter integer C_UW_Channel0_AWUSER_WIDTH	= 0,
		parameter integer C_UW_Channel0_ARUSER_WIDTH	= 0,
		parameter integer C_UW_Channel0_WUSER_WIDTH		= 0,
		parameter integer C_UW_Channel0_RUSER_WIDTH		= 0,
		parameter integer C_UW_Channel0_BUSER_WIDTH		= 0,

	  // Parameters of Axi Master Bus Interface UW_Channel1
		parameter  C_UW_Channel1_FLASH_CHANNEL			= 3'd1,
		parameter  C_UW_Channel1_TARGET_SLAVE_BASE_ADDR	= 32'h43C1_0000,
		parameter  C_UW_Channel1_BRAM_BASE_ADDR			= 32'h5000_0000,
		parameter integer C_UW_Channel1_BURST_LEN		= 16,
		parameter integer C_UW_Channel1_ID_WIDTH		= 1,
		parameter integer C_UW_Channel1_ADDR_WIDTH		= 32,
		parameter integer C_UW_Channel1_DATA_WIDTH		= 32,
		parameter integer C_UW_Channel1_AWUSER_WIDTH	= 0,
		parameter integer C_UW_Channel1_ARUSER_WIDTH	= 0,
		parameter integer C_UW_Channel1_WUSER_WIDTH		= 0,
		parameter integer C_UW_Channel1_RUSER_WIDTH		= 0,
		parameter integer C_UW_Channel1_BUSER_WIDTH		= 0,

	  // Parameters of Axi Master Bus Interface UW_Channel2
		parameter  C_UW_Channel2_FLASH_CHANNEL			= 3'd2,
		parameter  C_UW_Channel2_TARGET_SLAVE_BASE_ADDR	= 32'h43C2_0000,
		parameter  C_UW_Channel2_BRAM_BASE_ADDR			= 32'h5000_0000,	  
		parameter integer C_UW_Channel2_BURST_LEN		= 16,
		parameter integer C_UW_Channel2_ID_WIDTH		= 1,
		parameter integer C_UW_Channel2_ADDR_WIDTH		= 32,
		parameter integer C_UW_Channel2_DATA_WIDTH		= 32,
		parameter integer C_UW_Channel2_AWUSER_WIDTH	= 0,
		parameter integer C_UW_Channel2_ARUSER_WIDTH	= 0,
		parameter integer C_UW_Channel2_WUSER_WIDTH		= 0,
		parameter integer C_UW_Channel2_RUSER_WIDTH		= 0,
		parameter integer C_UW_Channel2_BUSER_WIDTH		= 0,

	  // Parameters of Axi Master Bus Interface UW_Channel3
	  	parameter  C_UW_Channel3_FLASH_CHANNEL			= 3'd3,
		parameter  C_UW_Channel3_TARGET_SLAVE_BASE_ADDR	= 32'h43C3_0000,
		parameter  C_UW_Channel3_BRAM_BASE_ADDR			= 32'h5000_0000,
		parameter integer C_UW_Channel3_BURST_LEN		= 16,
		parameter integer C_UW_Channel3_ID_WIDTH		= 1,
		parameter integer C_UW_Channel3_ADDR_WIDTH		= 32,
		parameter integer C_UW_Channel3_DATA_WIDTH		= 32,
		parameter integer C_UW_Channel3_AWUSER_WIDTH	= 0,
		parameter integer C_UW_Channel3_ARUSER_WIDTH	= 0,
		parameter integer C_UW_Channel3_WUSER_WIDTH		= 0,
		parameter integer C_UW_Channel3_RUSER_WIDTH		= 0,
		parameter integer C_UW_Channel3_BUSER_WIDTH		= 0,

	  // Parameters of Axi Master Bus Interface UW_Channel4
		parameter  C_UW_Channel4_FLASH_CHANNEL			= 3'd4,
		parameter  C_UW_Channel4_TARGET_SLAVE_BASE_ADDR	= 32'h43C4_0000,
		parameter  C_UW_Channel4_BRAM_BASE_ADDR			= 32'h5000_0000,	  
		parameter integer C_UW_Channel4_BURST_LEN		= 16,
		parameter integer C_UW_Channel4_ID_WIDTH		= 1,
		parameter integer C_UW_Channel4_ADDR_WIDTH		= 32,
		parameter integer C_UW_Channel4_DATA_WIDTH		= 32,
		parameter integer C_UW_Channel4_AWUSER_WIDTH	= 0,
		parameter integer C_UW_Channel4_ARUSER_WIDTH	= 0,
		parameter integer C_UW_Channel4_WUSER_WIDTH		= 0,
		parameter integer C_UW_Channel4_RUSER_WIDTH		= 0,
		parameter integer C_UW_Channel4_BUSER_WIDTH		= 0,

	  // Parameters of Axi Master Bus Interface UW_Channel5
		parameter  C_UW_Channel5_FLASH_CHANNEL			= 3'd5,
		parameter  C_UW_Channel5_TARGET_SLAVE_BASE_ADDR	= 32'h43C5_0000,
		parameter  C_UW_Channel5_BRAM_BASE_ADDR			= 32'h5000_0000,	  
		parameter integer C_UW_Channel5_BURST_LEN		= 16,
		parameter integer C_UW_Channel5_ID_WIDTH		= 1,
		parameter integer C_UW_Channel5_ADDR_WIDTH		= 32,
		parameter integer C_UW_Channel5_DATA_WIDTH		= 32,
		parameter integer C_UW_Channel5_AWUSER_WIDTH	= 0,
		parameter integer C_UW_Channel5_ARUSER_WIDTH	= 0,
		parameter integer C_UW_Channel5_WUSER_WIDTH		= 0,
		parameter integer C_UW_Channel5_RUSER_WIDTH		= 0,
		parameter integer C_UW_Channel5_BUSER_WIDTH		= 0,

	  // Parameters of Axi Master Bus Interface UW_Channel6
		parameter  C_UW_Channel6_FLASH_CHANNEL			= 3'd6,
		parameter  C_UW_Channel6_TARGET_SLAVE_BASE_ADDR	= 32'h43C6_0000,
		parameter  C_UW_Channel6_BRAM_BASE_ADDR			= 32'h5000_0000,	  
		parameter integer C_UW_Channel6_BURST_LEN		= 16,
		parameter integer C_UW_Channel6_ID_WIDTH		= 1,
		parameter integer C_UW_Channel6_ADDR_WIDTH		= 32,
		parameter integer C_UW_Channel6_DATA_WIDTH		= 32,
		parameter integer C_UW_Channel6_AWUSER_WIDTH	= 0,
		parameter integer C_UW_Channel6_ARUSER_WIDTH	= 0,
		parameter integer C_UW_Channel6_WUSER_WIDTH		= 0,
		parameter integer C_UW_Channel6_RUSER_WIDTH		= 0,
		parameter integer C_UW_Channel6_BUSER_WIDTH		= 0,

	  // Parameters of Axi Master Bus Interface UW_Channel7
		parameter  C_UW_Channel7_FLASH_CHANNEL			= 3'd7,
		parameter  C_UW_Channel7_TARGET_SLAVE_BASE_ADDR	= 32'h43C7_0000,
		parameter  C_UW_Channel7_BRAM_BASE_ADDR			= 32'h5000_0000,	  
		parameter integer C_UW_Channel7_BURST_LEN		= 16,
		parameter integer C_UW_Channel7_ID_WIDTH		= 1,
		parameter integer C_UW_Channel7_ADDR_WIDTH		= 32,
		parameter integer C_UW_Channel7_DATA_WIDTH		= 32,
		parameter integer C_UW_Channel7_AWUSER_WIDTH	= 0,
		parameter integer C_UW_Channel7_ARUSER_WIDTH	= 0,
		parameter integer C_UW_Channel7_WUSER_WIDTH		= 0,
		parameter integer C_UW_Channel7_RUSER_WIDTH		= 0,
		parameter integer C_UW_Channel7_BUSER_WIDTH		= 0,

	  // Parameters of Axi Master Bus Interface Host_Data_Transfer
		parameter  C_HOST_DATA_TRANSFER_TARGET_SLAVE_BASE_ADDR	= 32'h2FFF_E008,
		parameter integer C_HOST_DATA_TRANSFER_BURST_LEN		= 2, //only two signal
		parameter integer C_HOST_DATA_TRANSFER_ID_WIDTH			= 1,
		parameter integer C_HOST_DATA_TRANSFER_ADDR_WIDTH		= 32,
		parameter integer C_HOST_DATA_TRANSFER_DATA_WIDTH		= 32,
		parameter integer C_HOST_DATA_TRANSFER_AWUSER_WIDTH		= 0,
		parameter integer C_HOST_DATA_TRANSFER_ARUSER_WIDTH		= 0,
		parameter integer C_HOST_DATA_TRANSFER_WUSER_WIDTH		= 0,
		parameter integer C_HOST_DATA_TRANSFER_RUSER_WIDTH		= 0,
		parameter integer C_HOST_DATA_TRANSFER_BUSER_WIDTH		= 0,

	  // Parameters of BRAM Bus Interface
		parameter  Mapping_Table_Header_BaseAddress	= 32'h4580_0000,
    	parameter  OFFSET_CONST 					= 32'h0000_0004, 
	  // Parameters of CWBP_Decoder
		parameter integer C_CWBP_DATA_WIDTH		= 32	
	)
	(
	  // Control signal
	    //input			,
		input			UW_Host_Data_Transfer_En, // From Watershed
		output	wire 	UW_Finish, 	
		output  wire	UW_Busy,
		input	[7:0]	NFC_Channel_Busy,
		output  wire [14:0] debug_wait_count,
		output  wire [4:0]  debug_S_cur,
		//output  wire [3:0]  debug_UW_Finish_1,
		output  wire [3:0]  debug_UW_Finish_2,
		output  wire [4:0]  debug_S_cur4,
		output  wire [4:0]  debug_S_cur5,
		output  wire [4:0]  debug_S_cur6,
		output  wire [4:0]  debug_S_cur7,
	  // Ports of Axi Master Bus Interface UW_Channel0
		input wire  uw_channel0_aclk,
		input wire  uw_channel0_aresetn,
		output wire [C_UW_Channel0_ID_WIDTH-1 : 0] uw_channel0_awid,
		output wire [C_UW_Channel0_ADDR_WIDTH-1 : 0] uw_channel0_awaddr,
		output wire [7 : 0] uw_channel0_awlen,
		output wire [2 : 0] uw_channel0_awsize,
		output wire [1 : 0] uw_channel0_awburst,
		output wire  uw_channel0_awlock,
		output wire [3 : 0] uw_channel0_awcache,
		output wire [2 : 0] uw_channel0_awprot,
		output wire [3 : 0] uw_channel0_awqos,
		output wire [C_UW_Channel0_AWUSER_WIDTH-1 : 0] uw_channel0_awuser,
		output wire  uw_channel0_awvalid,
		input wire  uw_channel0_awready,
		output wire [C_UW_Channel0_DATA_WIDTH-1 : 0] uw_channel0_wdata,
		output wire [C_UW_Channel0_DATA_WIDTH/8-1 : 0] uw_channel0_wstrb,
		output wire  uw_channel0_wlast,
		output wire [C_UW_Channel0_WUSER_WIDTH-1 : 0] uw_channel0_wuser,
		output wire  uw_channel0_wvalid,
		input wire  uw_channel0_wready,
		input wire [C_UW_Channel0_ID_WIDTH-1 : 0] uw_channel0_bid,
		input wire [1 : 0] uw_channel0_bresp,
		input wire [C_UW_Channel0_BUSER_WIDTH-1 : 0] uw_channel0_buser,
		input wire  uw_channel0_bvalid,
		output wire  uw_channel0_bready,
		output wire [C_UW_Channel0_ID_WIDTH-1 : 0] uw_channel0_arid,
		output wire [C_UW_Channel0_ADDR_WIDTH-1 : 0] uw_channel0_araddr,
		output wire [7 : 0] uw_channel0_arlen,
		output wire [2 : 0] uw_channel0_arsize,
		output wire [1 : 0] uw_channel0_arburst,
		output wire  uw_channel0_arlock,
		output wire [3 : 0] uw_channel0_arcache,
		output wire [2 : 0] uw_channel0_arprot,
		output wire [3 : 0] uw_channel0_arqos,
		output wire [C_UW_Channel0_ARUSER_WIDTH-1 : 0] uw_channel0_aruser,
		output wire  uw_channel0_arvalid,
		input wire  uw_channel0_arready,
		input wire [C_UW_Channel0_ID_WIDTH-1 : 0] uw_channel0_rid,
		input wire [C_UW_Channel0_DATA_WIDTH-1 : 0] uw_channel0_rdata,
		input wire [1 : 0] uw_channel0_rresp,
		input wire  uw_channel0_rlast,
		input wire [C_UW_Channel0_RUSER_WIDTH-1 : 0] uw_channel0_ruser,
		input wire  uw_channel0_rvalid,
		output wire  uw_channel0_rready,

	  // Ports of Axi Master Bus Interface UW_Channel1
		input wire  uw_channel1_aclk,
		input wire  uw_channel1_aresetn,
		output wire [C_UW_Channel1_ID_WIDTH-1 : 0] uw_channel1_awid,
		output wire [C_UW_Channel1_ADDR_WIDTH-1 : 0] uw_channel1_awaddr,
		output wire [7 : 0] uw_channel1_awlen,
		output wire [2 : 0] uw_channel1_awsize,
		output wire [1 : 0] uw_channel1_awburst,
		output wire  uw_channel1_awlock,
		output wire [3 : 0] uw_channel1_awcache,
		output wire [2 : 0] uw_channel1_awprot,
		output wire [3 : 0] uw_channel1_awqos,
		output wire [C_UW_Channel1_AWUSER_WIDTH-1 : 0] uw_channel1_awuser,
		output wire  uw_channel1_awvalid,
		input wire  uw_channel1_awready,
		output wire [C_UW_Channel1_DATA_WIDTH-1 : 0] uw_channel1_wdata,
		output wire [C_UW_Channel1_DATA_WIDTH/8-1 : 0] uw_channel1_wstrb,
		output wire  uw_channel1_wlast,
		output wire [C_UW_Channel1_WUSER_WIDTH-1 : 0] uw_channel1_wuser,
		output wire  uw_channel1_wvalid,
		input wire  uw_channel1_wready,
		input wire [C_UW_Channel1_ID_WIDTH-1 : 0] uw_channel1_bid,
		input wire [1 : 0] uw_channel1_bresp,
		input wire [C_UW_Channel1_BUSER_WIDTH-1 : 0] uw_channel1_buser,
		input wire  uw_channel1_bvalid,
		output wire  uw_channel1_bready,
		output wire [C_UW_Channel1_ID_WIDTH-1 : 0] uw_channel1_arid,
		output wire [C_UW_Channel1_ADDR_WIDTH-1 : 0] uw_channel1_araddr,
		output wire [7 : 0] uw_channel1_arlen,
		output wire [2 : 0] uw_channel1_arsize,
		output wire [1 : 0] uw_channel1_arburst,
		output wire  uw_channel1_arlock,
		output wire [3 : 0] uw_channel1_arcache,
		output wire [2 : 0] uw_channel1_arprot,
		output wire [3 : 0] uw_channel1_arqos,
		output wire [C_UW_Channel1_ARUSER_WIDTH-1 : 0] uw_channel1_aruser,
		output wire  uw_channel1_arvalid,
		input wire  uw_channel1_arready,
		input wire [C_UW_Channel1_ID_WIDTH-1 : 0] uw_channel1_rid,
		input wire [C_UW_Channel1_DATA_WIDTH-1 : 0] uw_channel1_rdata,
		input wire [1 : 0] uw_channel1_rresp,
		input wire  uw_channel1_rlast,
		input wire [C_UW_Channel1_RUSER_WIDTH-1 : 0] uw_channel1_ruser,
		input wire  uw_channel1_rvalid,
		output wire  uw_channel1_rready,

	  // Ports of Axi Master Bus Interface UW_Channel2
		input wire  uw_channel2_aclk,
		input wire  uw_channel2_aresetn,
		output wire [C_UW_Channel2_ID_WIDTH-1 : 0] uw_channel2_awid,
		output wire [C_UW_Channel2_ADDR_WIDTH-1 : 0] uw_channel2_awaddr,
		output wire [7 : 0] uw_channel2_awlen,
		output wire [2 : 0] uw_channel2_awsize,
		output wire [1 : 0] uw_channel2_awburst,
		output wire  uw_channel2_awlock,
		output wire [3 : 0] uw_channel2_awcache,
		output wire [2 : 0] uw_channel2_awprot,
		output wire [3 : 0] uw_channel2_awqos,
		output wire [C_UW_Channel2_AWUSER_WIDTH-1 : 0] uw_channel2_awuser,
		output wire  uw_channel2_awvalid,
		input wire  uw_channel2_awready,
		output wire [C_UW_Channel2_DATA_WIDTH-1 : 0] uw_channel2_wdata,
		output wire [C_UW_Channel2_DATA_WIDTH/8-1 : 0] uw_channel2_wstrb,
		output wire  uw_channel2_wlast,
		output wire [C_UW_Channel2_WUSER_WIDTH-1 : 0] uw_channel2_wuser,
		output wire  uw_channel2_wvalid,
		input wire  uw_channel2_wready,
		input wire [C_UW_Channel2_ID_WIDTH-1 : 0] uw_channel2_bid,
		input wire [1 : 0] uw_channel2_bresp,
		input wire [C_UW_Channel2_BUSER_WIDTH-1 : 0] uw_channel2_buser,
		input wire  uw_channel2_bvalid,
		output wire  uw_channel2_bready,
		output wire [C_UW_Channel2_ID_WIDTH-1 : 0] uw_channel2_arid,
		output wire [C_UW_Channel2_ADDR_WIDTH-1 : 0] uw_channel2_araddr,
		output wire [7 : 0] uw_channel2_arlen,
		output wire [2 : 0] uw_channel2_arsize,
		output wire [1 : 0] uw_channel2_arburst,
		output wire  uw_channel2_arlock,
		output wire [3 : 0] uw_channel2_arcache,
		output wire [2 : 0] uw_channel2_arprot,
		output wire [3 : 0] uw_channel2_arqos,
		output wire [C_UW_Channel2_ARUSER_WIDTH-1 : 0] uw_channel2_aruser,
		output wire  uw_channel2_arvalid,
		input wire  uw_channel2_arready,
		input wire [C_UW_Channel2_ID_WIDTH-1 : 0] uw_channel2_rid,
		input wire [C_UW_Channel2_DATA_WIDTH-1 : 0] uw_channel2_rdata,
		input wire [1 : 0] uw_channel2_rresp,
		input wire  uw_channel2_rlast,
		input wire [C_UW_Channel2_RUSER_WIDTH-1 : 0] uw_channel2_ruser,
		input wire  uw_channel2_rvalid,
		output wire  uw_channel2_rready,

	  // Ports of Axi Master Bus Interface UW_Channel3
		input wire  uw_channel3_aclk,
		input wire  uw_channel3_aresetn,
		output wire [C_UW_Channel3_ID_WIDTH-1 : 0] uw_channel3_awid,
		output wire [C_UW_Channel3_ADDR_WIDTH-1 : 0] uw_channel3_awaddr,
		output wire [7 : 0] uw_channel3_awlen,
		output wire [2 : 0] uw_channel3_awsize,
		output wire [1 : 0] uw_channel3_awburst,
		output wire  uw_channel3_awlock,
		output wire [3 : 0] uw_channel3_awcache,
		output wire [2 : 0] uw_channel3_awprot,
		output wire [3 : 0] uw_channel3_awqos,
		output wire [C_UW_Channel3_AWUSER_WIDTH-1 : 0] uw_channel3_awuser,
		output wire  uw_channel3_awvalid,
		input wire  uw_channel3_awready,
		output wire [C_UW_Channel3_DATA_WIDTH-1 : 0] uw_channel3_wdata,
		output wire [C_UW_Channel3_DATA_WIDTH/8-1 : 0] uw_channel3_wstrb,
		output wire  uw_channel3_wlast,
		output wire [C_UW_Channel3_WUSER_WIDTH-1 : 0] uw_channel3_wuser,
		output wire  uw_channel3_wvalid,
		input wire  uw_channel3_wready,
		input wire [C_UW_Channel3_ID_WIDTH-1 : 0] uw_channel3_bid,
		input wire [1 : 0] uw_channel3_bresp,
		input wire [C_UW_Channel3_BUSER_WIDTH-1 : 0] uw_channel3_buser,
		input wire  uw_channel3_bvalid,
		output wire  uw_channel3_bready,
		output wire [C_UW_Channel3_ID_WIDTH-1 : 0] uw_channel3_arid,
		output wire [C_UW_Channel3_ADDR_WIDTH-1 : 0] uw_channel3_araddr,
		output wire [7 : 0] uw_channel3_arlen,
		output wire [2 : 0] uw_channel3_arsize,
		output wire [1 : 0] uw_channel3_arburst,
		output wire  uw_channel3_arlock,
		output wire [3 : 0] uw_channel3_arcache,
		output wire [2 : 0] uw_channel3_arprot,
		output wire [3 : 0] uw_channel3_arqos,
		output wire [C_UW_Channel3_ARUSER_WIDTH-1 : 0] uw_channel3_aruser,
		output wire  uw_channel3_arvalid,
		input wire  uw_channel3_arready,
		input wire [C_UW_Channel3_ID_WIDTH-1 : 0] uw_channel3_rid,
		input wire [C_UW_Channel3_DATA_WIDTH-1 : 0] uw_channel3_rdata,
		input wire [1 : 0] uw_channel3_rresp,
		input wire  uw_channel3_rlast,
		input wire [C_UW_Channel3_RUSER_WIDTH-1 : 0] uw_channel3_ruser,
		input wire  uw_channel3_rvalid,
		output wire  uw_channel3_rready,

	  // Ports of Axi Master Bus Interface UW_Channel4
		input wire  uw_channel4_aclk,
		input wire  uw_channel4_aresetn,
		output wire [C_UW_Channel4_ID_WIDTH-1 : 0] uw_channel4_awid,
		output wire [C_UW_Channel4_ADDR_WIDTH-1 : 0] uw_channel4_awaddr,
		output wire [7 : 0] uw_channel4_awlen,
		output wire [2 : 0] uw_channel4_awsize,
		output wire [1 : 0] uw_channel4_awburst,
		output wire  uw_channel4_awlock,
		output wire [3 : 0] uw_channel4_awcache,
		output wire [2 : 0] uw_channel4_awprot,
		output wire [3 : 0] uw_channel4_awqos,
		output wire [C_UW_Channel4_AWUSER_WIDTH-1 : 0] uw_channel4_awuser,
		output wire  uw_channel4_awvalid,
		input wire  uw_channel4_awready,
		output wire [C_UW_Channel4_DATA_WIDTH-1 : 0] uw_channel4_wdata,
		output wire [C_UW_Channel4_DATA_WIDTH/8-1 : 0] uw_channel4_wstrb,
		output wire  uw_channel4_wlast,
		output wire [C_UW_Channel4_WUSER_WIDTH-1 : 0] uw_channel4_wuser,
		output wire  uw_channel4_wvalid,
		input wire  uw_channel4_wready,
		input wire [C_UW_Channel4_ID_WIDTH-1 : 0] uw_channel4_bid,
		input wire [1 : 0] uw_channel4_bresp,
		input wire [C_UW_Channel4_BUSER_WIDTH-1 : 0] uw_channel4_buser,
		input wire  uw_channel4_bvalid,
		output wire  uw_channel4_bready,
		output wire [C_UW_Channel4_ID_WIDTH-1 : 0] uw_channel4_arid,
		output wire [C_UW_Channel4_ADDR_WIDTH-1 : 0] uw_channel4_araddr,
		output wire [7 : 0] uw_channel4_arlen,
		output wire [2 : 0] uw_channel4_arsize,
		output wire [1 : 0] uw_channel4_arburst,
		output wire  uw_channel4_arlock,
		output wire [3 : 0] uw_channel4_arcache,
		output wire [2 : 0] uw_channel4_arprot,
		output wire [3 : 0] uw_channel4_arqos,
		output wire [C_UW_Channel4_ARUSER_WIDTH-1 : 0] uw_channel4_aruser,
		output wire  uw_channel4_arvalid,
		input wire  uw_channel4_arready,
		input wire [C_UW_Channel4_ID_WIDTH-1 : 0] uw_channel4_rid,
		input wire [C_UW_Channel4_DATA_WIDTH-1 : 0] uw_channel4_rdata,
		input wire [1 : 0] uw_channel4_rresp,
		input wire  uw_channel4_rlast,
		input wire [C_UW_Channel4_RUSER_WIDTH-1 : 0] uw_channel4_ruser,
		input wire  uw_channel4_rvalid,
		output wire  uw_channel4_rready,

	  // Ports of Axi Master Bus Interface UW_Channel5
		input wire  uw_channel5_aclk,
		input wire  uw_channel5_aresetn,
		output wire [C_UW_Channel5_ID_WIDTH-1 : 0] uw_channel5_awid,
		output wire [C_UW_Channel5_ADDR_WIDTH-1 : 0] uw_channel5_awaddr,
		output wire [7 : 0] uw_channel5_awlen,
		output wire [2 : 0] uw_channel5_awsize,
		output wire [1 : 0] uw_channel5_awburst,
		output wire  uw_channel5_awlock,
		output wire [3 : 0] uw_channel5_awcache,
		output wire [2 : 0] uw_channel5_awprot,
		output wire [3 : 0] uw_channel5_awqos,
		output wire [C_UW_Channel5_AWUSER_WIDTH-1 : 0] uw_channel5_awuser,
		output wire  uw_channel5_awvalid,
		input wire  uw_channel5_awready,
		output wire [C_UW_Channel5_DATA_WIDTH-1 : 0] uw_channel5_wdata,
		output wire [C_UW_Channel5_DATA_WIDTH/8-1 : 0] uw_channel5_wstrb,
		output wire  uw_channel5_wlast,
		output wire [C_UW_Channel5_WUSER_WIDTH-1 : 0] uw_channel5_wuser,
		output wire  uw_channel5_wvalid,
		input wire  uw_channel5_wready,
		input wire [C_UW_Channel5_ID_WIDTH-1 : 0] uw_channel5_bid,
		input wire [1 : 0] uw_channel5_bresp,
		input wire [C_UW_Channel5_BUSER_WIDTH-1 : 0] uw_channel5_buser,
		input wire  uw_channel5_bvalid,
		output wire  uw_channel5_bready,
		output wire [C_UW_Channel5_ID_WIDTH-1 : 0] uw_channel5_arid,
		output wire [C_UW_Channel5_ADDR_WIDTH-1 : 0] uw_channel5_araddr,
		output wire [7 : 0] uw_channel5_arlen,
		output wire [2 : 0] uw_channel5_arsize,
		output wire [1 : 0] uw_channel5_arburst,
		output wire  uw_channel5_arlock,
		output wire [3 : 0] uw_channel5_arcache,
		output wire [2 : 0] uw_channel5_arprot,
		output wire [3 : 0] uw_channel5_arqos,
		output wire [C_UW_Channel5_ARUSER_WIDTH-1 : 0] uw_channel5_aruser,
		output wire  uw_channel5_arvalid,
		input wire  uw_channel5_arready,
		input wire [C_UW_Channel5_ID_WIDTH-1 : 0] uw_channel5_rid,
		input wire [C_UW_Channel5_DATA_WIDTH-1 : 0] uw_channel5_rdata,
		input wire [1 : 0] uw_channel5_rresp,
		input wire  uw_channel5_rlast,
		input wire [C_UW_Channel5_RUSER_WIDTH-1 : 0] uw_channel5_ruser,
		input wire  uw_channel5_rvalid,
		output wire  uw_channel5_rready,

	  // Ports of Axi Master Bus Interface UW_Channel6
		input wire  uw_channel6_aclk,
		input wire  uw_channel6_aresetn,
		output wire [C_UW_Channel6_ID_WIDTH-1 : 0] uw_channel6_awid,
		output wire [C_UW_Channel6_ADDR_WIDTH-1 : 0] uw_channel6_awaddr,
		output wire [7 : 0] uw_channel6_awlen,
		output wire [2 : 0] uw_channel6_awsize,
		output wire [1 : 0] uw_channel6_awburst,
		output wire  uw_channel6_awlock,
		output wire [3 : 0] uw_channel6_awcache,
		output wire [2 : 0] uw_channel6_awprot,
		output wire [3 : 0] uw_channel6_awqos,
		output wire [C_UW_Channel6_AWUSER_WIDTH-1 : 0] uw_channel6_awuser,
		output wire  uw_channel6_awvalid,
		input wire  uw_channel6_awready,
		output wire [C_UW_Channel6_DATA_WIDTH-1 : 0] uw_channel6_wdata,
		output wire [C_UW_Channel6_DATA_WIDTH/8-1 : 0] uw_channel6_wstrb,
		output wire  uw_channel6_wlast,
		output wire [C_UW_Channel6_WUSER_WIDTH-1 : 0] uw_channel6_wuser,
		output wire  uw_channel6_wvalid,
		input wire  uw_channel6_wready,
		input wire [C_UW_Channel6_ID_WIDTH-1 : 0] uw_channel6_bid,
		input wire [1 : 0] uw_channel6_bresp,
		input wire [C_UW_Channel6_BUSER_WIDTH-1 : 0] uw_channel6_buser,
		input wire  uw_channel6_bvalid,
		output wire  uw_channel6_bready,
		output wire [C_UW_Channel6_ID_WIDTH-1 : 0] uw_channel6_arid,
		output wire [C_UW_Channel6_ADDR_WIDTH-1 : 0] uw_channel6_araddr,
		output wire [7 : 0] uw_channel6_arlen,
		output wire [2 : 0] uw_channel6_arsize,
		output wire [1 : 0] uw_channel6_arburst,
		output wire  uw_channel6_arlock,
		output wire [3 : 0] uw_channel6_arcache,
		output wire [2 : 0] uw_channel6_arprot,
		output wire [3 : 0] uw_channel6_arqos,
		output wire [C_UW_Channel6_ARUSER_WIDTH-1 : 0] uw_channel6_aruser,
		output wire  uw_channel6_arvalid,
		input wire  uw_channel6_arready,
		input wire [C_UW_Channel6_ID_WIDTH-1 : 0] uw_channel6_rid,
		input wire [C_UW_Channel6_DATA_WIDTH-1 : 0] uw_channel6_rdata,
		input wire [1 : 0] uw_channel6_rresp,
		input wire  uw_channel6_rlast,
		input wire [C_UW_Channel6_RUSER_WIDTH-1 : 0] uw_channel6_ruser,
		input wire  uw_channel6_rvalid,
		output wire  uw_channel6_rready,

	  // Ports of Axi Master Bus Interface UW_Channel7
		input wire  uw_channel7_aclk,
		input wire  uw_channel7_aresetn,
		output wire [C_UW_Channel7_ID_WIDTH-1 : 0] uw_channel7_awid,
		output wire [C_UW_Channel7_ADDR_WIDTH-1 : 0] uw_channel7_awaddr,
		output wire [7 : 0] uw_channel7_awlen,
		output wire [2 : 0] uw_channel7_awsize,
		output wire [1 : 0] uw_channel7_awburst,
		output wire  uw_channel7_awlock,
		output wire [3 : 0] uw_channel7_awcache,
		output wire [2 : 0] uw_channel7_awprot,
		output wire [3 : 0] uw_channel7_awqos,
		output wire [C_UW_Channel7_AWUSER_WIDTH-1 : 0] uw_channel7_awuser,
		output wire  uw_channel7_awvalid,
		input wire  uw_channel7_awready,
		output wire [C_UW_Channel7_DATA_WIDTH-1 : 0] uw_channel7_wdata,
		output wire [C_UW_Channel7_DATA_WIDTH/8-1 : 0] uw_channel7_wstrb,
		output wire  uw_channel7_wlast,
		output wire [C_UW_Channel7_WUSER_WIDTH-1 : 0] uw_channel7_wuser,
		output wire  uw_channel7_wvalid,
		input wire  uw_channel7_wready,
		input wire [C_UW_Channel7_ID_WIDTH-1 : 0] uw_channel7_bid,
		input wire [1 : 0] uw_channel7_bresp,
		input wire [C_UW_Channel7_BUSER_WIDTH-1 : 0] uw_channel7_buser,
		input wire  uw_channel7_bvalid,
		output wire  uw_channel7_bready,
		output wire [C_UW_Channel7_ID_WIDTH-1 : 0] uw_channel7_arid,
		output wire [C_UW_Channel7_ADDR_WIDTH-1 : 0] uw_channel7_araddr,
		output wire [7 : 0] uw_channel7_arlen,
		output wire [2 : 0] uw_channel7_arsize,
		output wire [1 : 0] uw_channel7_arburst,
		output wire  uw_channel7_arlock,
		output wire [3 : 0] uw_channel7_arcache,
		output wire [2 : 0] uw_channel7_arprot,
		output wire [3 : 0] uw_channel7_arqos,
		output wire [C_UW_Channel7_ARUSER_WIDTH-1 : 0] uw_channel7_aruser,
		output wire  uw_channel7_arvalid,
		input wire  uw_channel7_arready,
		input wire [C_UW_Channel7_ID_WIDTH-1 : 0] uw_channel7_rid,
		input wire [C_UW_Channel7_DATA_WIDTH-1 : 0] uw_channel7_rdata,
		input wire [1 : 0] uw_channel7_rresp,
		input wire  uw_channel7_rlast,
		input wire [C_UW_Channel7_RUSER_WIDTH-1 : 0] uw_channel7_ruser,
		input wire  uw_channel7_rvalid,
		output wire  uw_channel7_rready,

	  //Ports of Axi Master Bus Interface Host_Data_Transfer M02_AXI 
		input wire  m02_axi_aclk,
		input wire  m02_axi_aresetn,
		output wire [C_HOST_DATA_TRANSFER_ID_WIDTH-1 : 0] m02_axi_awid,
		output wire [C_HOST_DATA_TRANSFER_ADDR_WIDTH-1 : 0] m02_axi_awaddr,
		output wire [7 : 0] m02_axi_awlen,
		output wire [2 : 0] m02_axi_awsize,
		output wire [1 : 0] m02_axi_awburst,
		output wire  m02_axi_awlock,
		output wire [3 : 0] m02_axi_awcache,
		output wire [2 : 0] m02_axi_awprot,
		output wire [3 : 0] m02_axi_awqos,
		output wire [C_HOST_DATA_TRANSFER_AWUSER_WIDTH-1 : 0] m02_axi_awuser,
		output wire  m02_axi_awvalid,
		input wire  m02_axi_awready,
		output wire [C_HOST_DATA_TRANSFER_DATA_WIDTH-1 : 0] m02_axi_wdata,
		output wire [C_HOST_DATA_TRANSFER_DATA_WIDTH/8-1 : 0] m02_axi_wstrb,
		output wire  m02_axi_wlast,
		output wire [C_HOST_DATA_TRANSFER_WUSER_WIDTH-1 : 0] m02_axi_wuser,
		output wire  m02_axi_wvalid,
		input wire  m02_axi_wready,
		input wire [C_HOST_DATA_TRANSFER_ID_WIDTH-1 : 0] m02_axi_bid,
		input wire [1 : 0] m02_axi_bresp,
		input wire [C_HOST_DATA_TRANSFER_BUSER_WIDTH-1 : 0] m02_axi_buser,
		input wire  m02_axi_bvalid,
		output wire  m02_axi_bready,
		output wire [C_HOST_DATA_TRANSFER_ID_WIDTH-1 : 0] m02_axi_arid,
		output wire [C_HOST_DATA_TRANSFER_ADDR_WIDTH-1 : 0] m02_axi_araddr,
		output wire [7 : 0] m02_axi_arlen,
		output wire [2 : 0] m02_axi_arsize,
		output wire [1 : 0] m02_axi_arburst,
		output wire  m02_axi_arlock,
		output wire [3 : 0] m02_axi_arcache,
		output wire [2 : 0] m02_axi_arprot,
		output wire [3 : 0] m02_axi_arqos,
		output wire [C_HOST_DATA_TRANSFER_ARUSER_WIDTH-1 : 0] m02_axi_aruser,
		output wire  m02_axi_arvalid,
		input wire  m02_axi_arready,
		input wire [C_HOST_DATA_TRANSFER_ID_WIDTH-1 : 0] m02_axi_rid,
		input wire [C_HOST_DATA_TRANSFER_DATA_WIDTH-1 : 0] m02_axi_rdata,
		input wire [1 : 0] m02_axi_rresp,
		input wire  m02_axi_rlast,
		input wire [C_HOST_DATA_TRANSFER_RUSER_WIDTH-1 : 0] m02_axi_ruser,
		input wire  m02_axi_rvalid,
		output wire  m02_axi_rready,

	  //base_address
		input 	wire 			base_address_rd_clk,
		input 	wire 			base_address_rd_rst_n,
		output 	wire 			ram_clk,
		output 	wire 			ram_rst,
		output 	wire [31:0]		ram_addr,
		output 	wire 			ram_en,
		input  	wire [31:0] 	ram_rd_data,
		output	wire [3:0] 		ram_we,
		output	wire [31:0] 	ram_wd_data
	);
// Sub-module Internal Setting
  //Sub-module Connect
	wire [7:0]	UW_ALL_init_axi_txn;   //m01_start_flag;
	reg  [1:0]	uw_c0_count,uw_c1_count,uw_c2_count,uw_c3_count;
	reg  [1:0]  uw_c7_count,uw_c6_count,uw_c5_count,uw_c4_count;

	wire uw_c0_finish, uw_c1_finish, uw_c2_finish, uw_c3_finish;
	wire uw_c7_finish, uw_c6_finish, uw_c5_finish, uw_c4_finish;
	
	wire uw_c0_busy, uw_c1_busy, uw_c2_busy, uw_c3_busy; 
	wire uw_c4_busy, uw_c5_busy, uw_c6_busy, uw_c7_busy; 

  //	
  	wire m01_start_flag;
	wire m01_02_state_flag;
	wire [3:0] Way;
	wire [C_CWBP_DATA_WIDTH -1 :0] Row_address;
	wire w_change_based_address;
	wire total_channel_UW_busy;


// Instantiation of Axi Bus Interface UW_Channel0
	Unet_Wrapper_v1_0_UW_Channel0 # ( 
		.C_M_FLASH_CHANNEL(C_UW_Channel0_FLASH_CHANNEL),
		.C_M_BRAM_BASE_ADDR(C_UW_Channel0_BRAM_BASE_ADDR),
		.C_M_TARGET_SLAVE_BASE_ADDR(C_UW_Channel0_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_BURST_LEN(C_UW_Channel0_BURST_LEN),
		.C_M_AXI_ID_WIDTH(C_UW_Channel0_ID_WIDTH),
		.C_M_AXI_ADDR_WIDTH(C_UW_Channel0_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH(C_UW_Channel0_DATA_WIDTH),
		.C_M_AXI_AWUSER_WIDTH(C_UW_Channel0_AWUSER_WIDTH),
		.C_M_AXI_ARUSER_WIDTH(C_UW_Channel0_ARUSER_WIDTH),
		.C_M_AXI_WUSER_WIDTH(C_UW_Channel0_WUSER_WIDTH),
		.C_M_AXI_RUSER_WIDTH(C_UW_Channel0_RUSER_WIDTH),
		.C_M_AXI_BUSER_WIDTH(C_UW_Channel0_BUSER_WIDTH)
	) Unet_Wrapper_v1_0_UW_Channel0_inst (
////
		// Users to add ports here
		.check_nfc_busy(NFC_Channel_Busy[0]),
		.check_M02_state_flag(m01_02_state_flag),
		.Row_address(Row_address),
		//.Way		(Way),
		//.UW_Busy  (UW_Busy_for_WS),
		//.UW_count	(UW_count),
		
		.UW_Finish	(uw_c0_finish),
		.UW_Busy  	(uw_c0_busy),	
		.change_based_address (w_change_based_address),

		.debug_wait_count(debug_wait_count),
		.debug_S_cur     (debug_S_cur     ),

		.INIT_AXI_TXN(UW_ALL_init_axi_txn[0]),
		.M_AXI_ACLK(uw_channel0_aclk),
		.M_AXI_ARESETN(uw_channel0_aresetn),
		.M_AXI_AWID(uw_channel0_awid),
		.M_AXI_AWADDR(uw_channel0_awaddr),
		.M_AXI_AWLEN(uw_channel0_awlen),
		.M_AXI_AWSIZE(uw_channel0_awsize),
		.M_AXI_AWBURST(uw_channel0_awburst),
		.M_AXI_AWLOCK(uw_channel0_awlock),
		.M_AXI_AWCACHE(uw_channel0_awcache),
		.M_AXI_AWPROT(uw_channel0_awprot),
		.M_AXI_AWQOS(uw_channel0_awqos),
		.M_AXI_AWUSER(uw_channel0_awuser),
		.M_AXI_AWVALID(uw_channel0_awvalid),
		.M_AXI_AWREADY(uw_channel0_awready),
		.M_AXI_WDATA(uw_channel0_wdata),
		.M_AXI_WSTRB(uw_channel0_wstrb),
		.M_AXI_WLAST(uw_channel0_wlast),
		.M_AXI_WUSER(uw_channel0_wuser),
		.M_AXI_WVALID(uw_channel0_wvalid),
		.M_AXI_WREADY(uw_channel0_wready),
		.M_AXI_BID(uw_channel0_bid),
		.M_AXI_BRESP(uw_channel0_bresp),
		.M_AXI_BUSER(uw_channel0_buser),
		.M_AXI_BVALID(uw_channel0_bvalid),
		.M_AXI_BREADY(uw_channel0_bready),
		.M_AXI_ARID(uw_channel0_arid),
		.M_AXI_ARADDR(uw_channel0_araddr),
		.M_AXI_ARLEN(uw_channel0_arlen),
		.M_AXI_ARSIZE(uw_channel0_arsize),
		.M_AXI_ARBURST(uw_channel0_arburst),
		.M_AXI_ARLOCK(uw_channel0_arlock),
		.M_AXI_ARCACHE(uw_channel0_arcache),
		.M_AXI_ARPROT(uw_channel0_arprot),
		.M_AXI_ARQOS(uw_channel0_arqos),
		.M_AXI_ARUSER(uw_channel0_aruser),
		.M_AXI_ARVALID(uw_channel0_arvalid),
		.M_AXI_ARREADY(uw_channel0_arready),
		.M_AXI_RID(uw_channel0_rid),
		.M_AXI_RDATA(uw_channel0_rdata),
		.M_AXI_RRESP(uw_channel0_rresp),
		.M_AXI_RLAST(uw_channel0_rlast),
		.M_AXI_RUSER(uw_channel0_ruser),
		.M_AXI_RVALID(uw_channel0_rvalid),
		.M_AXI_RREADY(uw_channel0_rready)
	);

// Instantiation of Axi Bus Interface UW_Channel1
	Unet_Wrapper_v1_0_UW_Channel1 # ( 
		.C_M_FLASH_CHANNEL			(C_UW_Channel1_FLASH_CHANNEL),
		.C_M_BRAM_BASE_ADDR			(C_UW_Channel1_BRAM_BASE_ADDR),
		.C_M_TARGET_SLAVE_BASE_ADDR	(C_UW_Channel1_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_BURST_LEN			(C_UW_Channel1_BURST_LEN),
		.C_M_AXI_ID_WIDTH			(C_UW_Channel1_ID_WIDTH),
		.C_M_AXI_ADDR_WIDTH			(C_UW_Channel1_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH			(C_UW_Channel1_DATA_WIDTH),
		.C_M_AXI_AWUSER_WIDTH		(C_UW_Channel1_AWUSER_WIDTH),
		.C_M_AXI_ARUSER_WIDTH		(C_UW_Channel1_ARUSER_WIDTH),
		.C_M_AXI_WUSER_WIDTH		(C_UW_Channel1_WUSER_WIDTH),
		.C_M_AXI_RUSER_WIDTH		(C_UW_Channel1_RUSER_WIDTH),
		.C_M_AXI_BUSER_WIDTH		(C_UW_Channel1_BUSER_WIDTH)
	) Unet_Wrapper_v1_0_UW_Channel1_inst (
		.check_nfc_busy(NFC_Channel_Busy[1]),	
		.Row_address(Row_address),
		.UW_Finish	(uw_c1_finish),
		.UW_Busy  (uw_c1_busy),

		.INIT_AXI_TXN(UW_ALL_init_axi_txn[1]),
		.M_AXI_ACLK(uw_channel1_aclk),
		.M_AXI_ARESETN(uw_channel1_aresetn),
		.M_AXI_AWID(uw_channel1_awid),
		.M_AXI_AWADDR(uw_channel1_awaddr),
		.M_AXI_AWLEN(uw_channel1_awlen),
		.M_AXI_AWSIZE(uw_channel1_awsize),
		.M_AXI_AWBURST(uw_channel1_awburst),
		.M_AXI_AWLOCK(uw_channel1_awlock),
		.M_AXI_AWCACHE(uw_channel1_awcache),
		.M_AXI_AWPROT(uw_channel1_awprot),
		.M_AXI_AWQOS(uw_channel1_awqos),
		.M_AXI_AWUSER(uw_channel1_awuser),
		.M_AXI_AWVALID(uw_channel1_awvalid),
		.M_AXI_AWREADY(uw_channel1_awready),
		.M_AXI_WDATA(uw_channel1_wdata),
		.M_AXI_WSTRB(uw_channel1_wstrb),
		.M_AXI_WLAST(uw_channel1_wlast),
		.M_AXI_WUSER(uw_channel1_wuser),
		.M_AXI_WVALID(uw_channel1_wvalid),
		.M_AXI_WREADY(uw_channel1_wready),
		.M_AXI_BID(uw_channel1_bid),
		.M_AXI_BRESP(uw_channel1_bresp),
		.M_AXI_BUSER(uw_channel1_buser),
		.M_AXI_BVALID(uw_channel1_bvalid),
		.M_AXI_BREADY(uw_channel1_bready),
		.M_AXI_ARID(uw_channel1_arid),
		.M_AXI_ARADDR(uw_channel1_araddr),
		.M_AXI_ARLEN(uw_channel1_arlen),
		.M_AXI_ARSIZE(uw_channel1_arsize),
		.M_AXI_ARBURST(uw_channel1_arburst),
		.M_AXI_ARLOCK(uw_channel1_arlock),
		.M_AXI_ARCACHE(uw_channel1_arcache),
		.M_AXI_ARPROT(uw_channel1_arprot),
		.M_AXI_ARQOS(uw_channel1_arqos),
		.M_AXI_ARUSER(uw_channel1_aruser),
		.M_AXI_ARVALID(uw_channel1_arvalid),
		.M_AXI_ARREADY(uw_channel1_arready),
		.M_AXI_RID(uw_channel1_rid),
		.M_AXI_RDATA(uw_channel1_rdata),
		.M_AXI_RRESP(uw_channel1_rresp),
		.M_AXI_RLAST(uw_channel1_rlast),
		.M_AXI_RUSER(uw_channel1_ruser),
		.M_AXI_RVALID(uw_channel1_rvalid),
		.M_AXI_RREADY(uw_channel1_rready)
	);

// Instantiation of Axi Bus Interface UW_Channel2
	Unet_Wrapper_v1_0_UW_Channel2 # ( 
		.C_M_FLASH_CHANNEL			(C_UW_Channel2_FLASH_CHANNEL),
		.C_M_BRAM_BASE_ADDR			(C_UW_Channel2_BRAM_BASE_ADDR),
		.C_M_TARGET_SLAVE_BASE_ADDR	(C_UW_Channel2_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_BURST_LEN			(C_UW_Channel2_BURST_LEN),
		.C_M_AXI_ID_WIDTH			(C_UW_Channel2_ID_WIDTH),
		.C_M_AXI_ADDR_WIDTH			(C_UW_Channel2_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH			(C_UW_Channel2_DATA_WIDTH),
		.C_M_AXI_AWUSER_WIDTH		(C_UW_Channel2_AWUSER_WIDTH),
		.C_M_AXI_ARUSER_WIDTH		(C_UW_Channel2_ARUSER_WIDTH),
		.C_M_AXI_WUSER_WIDTH		(C_UW_Channel2_WUSER_WIDTH),
		.C_M_AXI_RUSER_WIDTH		(C_UW_Channel2_RUSER_WIDTH),
		.C_M_AXI_BUSER_WIDTH		(C_UW_Channel2_BUSER_WIDTH)
	) Unet_Wrapper_v1_0_UW_Channel2_inst (
		.check_nfc_busy(NFC_Channel_Busy[2]),
		.Row_address(Row_address),
		.UW_Finish	(uw_c2_finish),
		.UW_Busy  (uw_c2_busy),

		.INIT_AXI_TXN(UW_ALL_init_axi_txn[2]),
		.M_AXI_ACLK(uw_channel2_aclk),
		.M_AXI_ARESETN(uw_channel2_aresetn),
		.M_AXI_AWID(uw_channel2_awid),
		.M_AXI_AWADDR(uw_channel2_awaddr),
		.M_AXI_AWLEN(uw_channel2_awlen),
		.M_AXI_AWSIZE(uw_channel2_awsize),
		.M_AXI_AWBURST(uw_channel2_awburst),
		.M_AXI_AWLOCK(uw_channel2_awlock),
		.M_AXI_AWCACHE(uw_channel2_awcache),
		.M_AXI_AWPROT(uw_channel2_awprot),
		.M_AXI_AWQOS(uw_channel2_awqos),
		.M_AXI_AWUSER(uw_channel2_awuser),
		.M_AXI_AWVALID(uw_channel2_awvalid),
		.M_AXI_AWREADY(uw_channel2_awready),
		.M_AXI_WDATA(uw_channel2_wdata),
		.M_AXI_WSTRB(uw_channel2_wstrb),
		.M_AXI_WLAST(uw_channel2_wlast),
		.M_AXI_WUSER(uw_channel2_wuser),
		.M_AXI_WVALID(uw_channel2_wvalid),
		.M_AXI_WREADY(uw_channel2_wready),
		.M_AXI_BID(uw_channel2_bid),
		.M_AXI_BRESP(uw_channel2_bresp),
		.M_AXI_BUSER(uw_channel2_buser),
		.M_AXI_BVALID(uw_channel2_bvalid),
		.M_AXI_BREADY(uw_channel2_bready),
		.M_AXI_ARID(uw_channel2_arid),
		.M_AXI_ARADDR(uw_channel2_araddr),
		.M_AXI_ARLEN(uw_channel2_arlen),
		.M_AXI_ARSIZE(uw_channel2_arsize),
		.M_AXI_ARBURST(uw_channel2_arburst),
		.M_AXI_ARLOCK(uw_channel2_arlock),
		.M_AXI_ARCACHE(uw_channel2_arcache),
		.M_AXI_ARPROT(uw_channel2_arprot),
		.M_AXI_ARQOS(uw_channel2_arqos),
		.M_AXI_ARUSER(uw_channel2_aruser),
		.M_AXI_ARVALID(uw_channel2_arvalid),
		.M_AXI_ARREADY(uw_channel2_arready),
		.M_AXI_RID(uw_channel2_rid),
		.M_AXI_RDATA(uw_channel2_rdata),
		.M_AXI_RRESP(uw_channel2_rresp),
		.M_AXI_RLAST(uw_channel2_rlast),
		.M_AXI_RUSER(uw_channel2_ruser),
		.M_AXI_RVALID(uw_channel2_rvalid),
		.M_AXI_RREADY(uw_channel2_rready)
	);

// Instantiation of Axi Bus Interface UW_Channel3
	Unet_Wrapper_v1_0_UW_Channel3 # ( 
		.C_M_FLASH_CHANNEL			(C_UW_Channel3_FLASH_CHANNEL),
		.C_M_BRAM_BASE_ADDR			(C_UW_Channel3_BRAM_BASE_ADDR),
		.C_M_TARGET_SLAVE_BASE_ADDR	(C_UW_Channel3_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_BURST_LEN			(C_UW_Channel3_BURST_LEN),
		.C_M_AXI_ID_WIDTH			(C_UW_Channel3_ID_WIDTH),
		.C_M_AXI_ADDR_WIDTH			(C_UW_Channel3_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH			(C_UW_Channel3_DATA_WIDTH),
		.C_M_AXI_AWUSER_WIDTH		(C_UW_Channel3_AWUSER_WIDTH),
		.C_M_AXI_ARUSER_WIDTH		(C_UW_Channel3_ARUSER_WIDTH),
		.C_M_AXI_WUSER_WIDTH		(C_UW_Channel3_WUSER_WIDTH),
		.C_M_AXI_RUSER_WIDTH		(C_UW_Channel3_RUSER_WIDTH),
		.C_M_AXI_BUSER_WIDTH		(C_UW_Channel3_BUSER_WIDTH)
	) Unet_Wrapper_v1_0_UW_Channel3_inst (
		.check_nfc_busy(NFC_Channel_Busy[3]),
		.Row_address(Row_address),
		.UW_Finish	(uw_c3_finish),
		.UW_Busy  (uw_c3_busy),

		.INIT_AXI_TXN(UW_ALL_init_axi_txn[3]),
		.M_AXI_ACLK(uw_channel3_aclk),
		.M_AXI_ARESETN(uw_channel3_aresetn),
		.M_AXI_AWID(uw_channel3_awid),
		.M_AXI_AWADDR(uw_channel3_awaddr),
		.M_AXI_AWLEN(uw_channel3_awlen),
		.M_AXI_AWSIZE(uw_channel3_awsize),
		.M_AXI_AWBURST(uw_channel3_awburst),
		.M_AXI_AWLOCK(uw_channel3_awlock),
		.M_AXI_AWCACHE(uw_channel3_awcache),
		.M_AXI_AWPROT(uw_channel3_awprot),
		.M_AXI_AWQOS(uw_channel3_awqos),
		.M_AXI_AWUSER(uw_channel3_awuser),
		.M_AXI_AWVALID(uw_channel3_awvalid),
		.M_AXI_AWREADY(uw_channel3_awready),
		.M_AXI_WDATA(uw_channel3_wdata),
		.M_AXI_WSTRB(uw_channel3_wstrb),
		.M_AXI_WLAST(uw_channel3_wlast),
		.M_AXI_WUSER(uw_channel3_wuser),
		.M_AXI_WVALID(uw_channel3_wvalid),
		.M_AXI_WREADY(uw_channel3_wready),
		.M_AXI_BID(uw_channel3_bid),
		.M_AXI_BRESP(uw_channel3_bresp),
		.M_AXI_BUSER(uw_channel3_buser),
		.M_AXI_BVALID(uw_channel3_bvalid),
		.M_AXI_BREADY(uw_channel3_bready),
		.M_AXI_ARID(uw_channel3_arid),
		.M_AXI_ARADDR(uw_channel3_araddr),
		.M_AXI_ARLEN(uw_channel3_arlen),
		.M_AXI_ARSIZE(uw_channel3_arsize),
		.M_AXI_ARBURST(uw_channel3_arburst),
		.M_AXI_ARLOCK(uw_channel3_arlock),
		.M_AXI_ARCACHE(uw_channel3_arcache),
		.M_AXI_ARPROT(uw_channel3_arprot),
		.M_AXI_ARQOS(uw_channel3_arqos),
		.M_AXI_ARUSER(uw_channel3_aruser),
		.M_AXI_ARVALID(uw_channel3_arvalid),
		.M_AXI_ARREADY(uw_channel3_arready),
		.M_AXI_RID(uw_channel3_rid),
		.M_AXI_RDATA(uw_channel3_rdata),
		.M_AXI_RRESP(uw_channel3_rresp),
		.M_AXI_RLAST(uw_channel3_rlast),
		.M_AXI_RUSER(uw_channel3_ruser),
		.M_AXI_RVALID(uw_channel3_rvalid),
		.M_AXI_RREADY(uw_channel3_rready)
	);

// Instantiation of Axi Bus Interface UW_Channel4
	Unet_Wrapper_v1_0_UW_Channel4 # ( 
		.C_M_FLASH_CHANNEL			(C_UW_Channel4_FLASH_CHANNEL),
		.C_M_BRAM_BASE_ADDR			(C_UW_Channel4_BRAM_BASE_ADDR),
		.C_M_TARGET_SLAVE_BASE_ADDR	(C_UW_Channel4_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_BURST_LEN			(C_UW_Channel4_BURST_LEN),
		.C_M_AXI_ID_WIDTH			(C_UW_Channel4_ID_WIDTH),
		.C_M_AXI_ADDR_WIDTH			(C_UW_Channel4_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH			(C_UW_Channel4_DATA_WIDTH),
		.C_M_AXI_AWUSER_WIDTH		(C_UW_Channel4_AWUSER_WIDTH),
		.C_M_AXI_ARUSER_WIDTH		(C_UW_Channel4_ARUSER_WIDTH),
		.C_M_AXI_WUSER_WIDTH		(C_UW_Channel4_WUSER_WIDTH),
		.C_M_AXI_RUSER_WIDTH		(C_UW_Channel4_RUSER_WIDTH),
		.C_M_AXI_BUSER_WIDTH		(C_UW_Channel4_BUSER_WIDTH)
	) Unet_Wrapper_v1_0_UW_Channel4_inst (
		.check_nfc_busy(NFC_Channel_Busy[4]),
		.Row_address(Row_address),
		.UW_Finish	(uw_c4_finish),
		.UW_Busy  (uw_c4_busy),

		.debug_S_cur     (debug_S_cur4     ),

		.INIT_AXI_TXN(UW_ALL_init_axi_txn[4]),
		.M_AXI_ACLK(uw_channel4_aclk),
		.M_AXI_ARESETN(uw_channel4_aresetn),
		.M_AXI_AWID(uw_channel4_awid),
		.M_AXI_AWADDR(uw_channel4_awaddr),
		.M_AXI_AWLEN(uw_channel4_awlen),
		.M_AXI_AWSIZE(uw_channel4_awsize),
		.M_AXI_AWBURST(uw_channel4_awburst),
		.M_AXI_AWLOCK(uw_channel4_awlock),
		.M_AXI_AWCACHE(uw_channel4_awcache),
		.M_AXI_AWPROT(uw_channel4_awprot),
		.M_AXI_AWQOS(uw_channel4_awqos),
		.M_AXI_AWUSER(uw_channel4_awuser),
		.M_AXI_AWVALID(uw_channel4_awvalid),
		.M_AXI_AWREADY(uw_channel4_awready),
		.M_AXI_WDATA(uw_channel4_wdata),
		.M_AXI_WSTRB(uw_channel4_wstrb),
		.M_AXI_WLAST(uw_channel4_wlast),
		.M_AXI_WUSER(uw_channel4_wuser),
		.M_AXI_WVALID(uw_channel4_wvalid),
		.M_AXI_WREADY(uw_channel4_wready),
		.M_AXI_BID(uw_channel4_bid),
		.M_AXI_BRESP(uw_channel4_bresp),
		.M_AXI_BUSER(uw_channel4_buser),
		.M_AXI_BVALID(uw_channel4_bvalid),
		.M_AXI_BREADY(uw_channel4_bready),
		.M_AXI_ARID(uw_channel4_arid),
		.M_AXI_ARADDR(uw_channel4_araddr),
		.M_AXI_ARLEN(uw_channel4_arlen),
		.M_AXI_ARSIZE(uw_channel4_arsize),
		.M_AXI_ARBURST(uw_channel4_arburst),
		.M_AXI_ARLOCK(uw_channel4_arlock),
		.M_AXI_ARCACHE(uw_channel4_arcache),
		.M_AXI_ARPROT(uw_channel4_arprot),
		.M_AXI_ARQOS(uw_channel4_arqos),
		.M_AXI_ARUSER(uw_channel4_aruser),
		.M_AXI_ARVALID(uw_channel4_arvalid),
		.M_AXI_ARREADY(uw_channel4_arready),
		.M_AXI_RID(uw_channel4_rid),
		.M_AXI_RDATA(uw_channel4_rdata),
		.M_AXI_RRESP(uw_channel4_rresp),
		.M_AXI_RLAST(uw_channel4_rlast),
		.M_AXI_RUSER(uw_channel4_ruser),
		.M_AXI_RVALID(uw_channel4_rvalid),
		.M_AXI_RREADY(uw_channel4_rready)
	);

// Instantiation of Axi Bus Interface UW_Channel5
	Unet_Wrapper_v1_0_UW_Channel5 # ( 
		.C_M_FLASH_CHANNEL			(C_UW_Channel5_FLASH_CHANNEL),
		.C_M_BRAM_BASE_ADDR			(C_UW_Channel5_BRAM_BASE_ADDR),
		.C_M_TARGET_SLAVE_BASE_ADDR	(C_UW_Channel5_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_BURST_LEN			(C_UW_Channel5_BURST_LEN),
		.C_M_AXI_ID_WIDTH			(C_UW_Channel5_ID_WIDTH),
		.C_M_AXI_ADDR_WIDTH			(C_UW_Channel5_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH			(C_UW_Channel5_DATA_WIDTH),
		.C_M_AXI_AWUSER_WIDTH		(C_UW_Channel5_AWUSER_WIDTH),
		.C_M_AXI_ARUSER_WIDTH		(C_UW_Channel5_ARUSER_WIDTH),
		.C_M_AXI_WUSER_WIDTH		(C_UW_Channel5_WUSER_WIDTH),
		.C_M_AXI_RUSER_WIDTH		(C_UW_Channel5_RUSER_WIDTH),
		.C_M_AXI_BUSER_WIDTH		(C_UW_Channel5_BUSER_WIDTH)
	) Unet_Wrapper_v1_0_UW_Channel5_inst (
		.check_nfc_busy(NFC_Channel_Busy[5]),
		.Row_address(Row_address),
		.UW_Finish	(uw_c5_finish),
		.UW_Busy  (uw_c5_busy),

		.debug_S_cur     (debug_S_cur5     ),

		.INIT_AXI_TXN(UW_ALL_init_axi_txn[5]),
		.M_AXI_ACLK(uw_channel5_aclk),
		.M_AXI_ARESETN(uw_channel5_aresetn),
		.M_AXI_AWID(uw_channel5_awid),
		.M_AXI_AWADDR(uw_channel5_awaddr),
		.M_AXI_AWLEN(uw_channel5_awlen),
		.M_AXI_AWSIZE(uw_channel5_awsize),
		.M_AXI_AWBURST(uw_channel5_awburst),
		.M_AXI_AWLOCK(uw_channel5_awlock),
		.M_AXI_AWCACHE(uw_channel5_awcache),
		.M_AXI_AWPROT(uw_channel5_awprot),
		.M_AXI_AWQOS(uw_channel5_awqos),
		.M_AXI_AWUSER(uw_channel5_awuser),
		.M_AXI_AWVALID(uw_channel5_awvalid),
		.M_AXI_AWREADY(uw_channel5_awready),
		.M_AXI_WDATA(uw_channel5_wdata),
		.M_AXI_WSTRB(uw_channel5_wstrb),
		.M_AXI_WLAST(uw_channel5_wlast),
		.M_AXI_WUSER(uw_channel5_wuser),
		.M_AXI_WVALID(uw_channel5_wvalid),
		.M_AXI_WREADY(uw_channel5_wready),
		.M_AXI_BID(uw_channel5_bid),
		.M_AXI_BRESP(uw_channel5_bresp),
		.M_AXI_BUSER(uw_channel5_buser),
		.M_AXI_BVALID(uw_channel5_bvalid),
		.M_AXI_BREADY(uw_channel5_bready),
		.M_AXI_ARID(uw_channel5_arid),
		.M_AXI_ARADDR(uw_channel5_araddr),
		.M_AXI_ARLEN(uw_channel5_arlen),
		.M_AXI_ARSIZE(uw_channel5_arsize),
		.M_AXI_ARBURST(uw_channel5_arburst),
		.M_AXI_ARLOCK(uw_channel5_arlock),
		.M_AXI_ARCACHE(uw_channel5_arcache),
		.M_AXI_ARPROT(uw_channel5_arprot),
		.M_AXI_ARQOS(uw_channel5_arqos),
		.M_AXI_ARUSER(uw_channel5_aruser),
		.M_AXI_ARVALID(uw_channel5_arvalid),
		.M_AXI_ARREADY(uw_channel5_arready),
		.M_AXI_RID(uw_channel5_rid),
		.M_AXI_RDATA(uw_channel5_rdata),
		.M_AXI_RRESP(uw_channel5_rresp),
		.M_AXI_RLAST(uw_channel5_rlast),
		.M_AXI_RUSER(uw_channel5_ruser),
		.M_AXI_RVALID(uw_channel5_rvalid),
		.M_AXI_RREADY(uw_channel5_rready)
	);

// Instantiation of Axi Bus Interface UW_Channel6
	Unet_Wrapper_v1_0_UW_Channel6 # ( 
		.C_M_FLASH_CHANNEL			(C_UW_Channel6_FLASH_CHANNEL),
		.C_M_BRAM_BASE_ADDR			(C_UW_Channel6_BRAM_BASE_ADDR),
		.C_M_TARGET_SLAVE_BASE_ADDR	(C_UW_Channel6_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_BURST_LEN			(C_UW_Channel6_BURST_LEN),
		.C_M_AXI_ID_WIDTH			(C_UW_Channel6_ID_WIDTH),
		.C_M_AXI_ADDR_WIDTH			(C_UW_Channel6_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH			(C_UW_Channel6_DATA_WIDTH),
		.C_M_AXI_AWUSER_WIDTH		(C_UW_Channel6_AWUSER_WIDTH),
		.C_M_AXI_ARUSER_WIDTH		(C_UW_Channel6_ARUSER_WIDTH),
		.C_M_AXI_WUSER_WIDTH		(C_UW_Channel6_WUSER_WIDTH),
		.C_M_AXI_RUSER_WIDTH		(C_UW_Channel6_RUSER_WIDTH),
		.C_M_AXI_BUSER_WIDTH		(C_UW_Channel6_BUSER_WIDTH)
	) Unet_Wrapper_v1_0_UW_Channel6_inst (
		.check_nfc_busy(NFC_Channel_Busy[6]),
		.Row_address(Row_address),
		.UW_Finish	(uw_c6_finish),
		.UW_Busy  (uw_c6_busy),

		.debug_S_cur     (debug_S_cur6     ),

		.INIT_AXI_TXN(UW_ALL_init_axi_txn[6]),
		.M_AXI_ACLK(uw_channel6_aclk),
		.M_AXI_ARESETN(uw_channel6_aresetn),
		.M_AXI_AWID(uw_channel6_awid),
		.M_AXI_AWADDR(uw_channel6_awaddr),
		.M_AXI_AWLEN(uw_channel6_awlen),
		.M_AXI_AWSIZE(uw_channel6_awsize),
		.M_AXI_AWBURST(uw_channel6_awburst),
		.M_AXI_AWLOCK(uw_channel6_awlock),
		.M_AXI_AWCACHE(uw_channel6_awcache),
		.M_AXI_AWPROT(uw_channel6_awprot),
		.M_AXI_AWQOS(uw_channel6_awqos),
		.M_AXI_AWUSER(uw_channel6_awuser),
		.M_AXI_AWVALID(uw_channel6_awvalid),
		.M_AXI_AWREADY(uw_channel6_awready),
		.M_AXI_WDATA(uw_channel6_wdata),
		.M_AXI_WSTRB(uw_channel6_wstrb),
		.M_AXI_WLAST(uw_channel6_wlast),
		.M_AXI_WUSER(uw_channel6_wuser),
		.M_AXI_WVALID(uw_channel6_wvalid),
		.M_AXI_WREADY(uw_channel6_wready),
		.M_AXI_BID(uw_channel6_bid),
		.M_AXI_BRESP(uw_channel6_bresp),
		.M_AXI_BUSER(uw_channel6_buser),
		.M_AXI_BVALID(uw_channel6_bvalid),
		.M_AXI_BREADY(uw_channel6_bready),
		.M_AXI_ARID(uw_channel6_arid),
		.M_AXI_ARADDR(uw_channel6_araddr),
		.M_AXI_ARLEN(uw_channel6_arlen),
		.M_AXI_ARSIZE(uw_channel6_arsize),
		.M_AXI_ARBURST(uw_channel6_arburst),
		.M_AXI_ARLOCK(uw_channel6_arlock),
		.M_AXI_ARCACHE(uw_channel6_arcache),
		.M_AXI_ARPROT(uw_channel6_arprot),
		.M_AXI_ARQOS(uw_channel6_arqos),
		.M_AXI_ARUSER(uw_channel6_aruser),
		.M_AXI_ARVALID(uw_channel6_arvalid),
		.M_AXI_ARREADY(uw_channel6_arready),
		.M_AXI_RID(uw_channel6_rid),
		.M_AXI_RDATA(uw_channel6_rdata),
		.M_AXI_RRESP(uw_channel6_rresp),
		.M_AXI_RLAST(uw_channel6_rlast),
		.M_AXI_RUSER(uw_channel6_ruser),
		.M_AXI_RVALID(uw_channel6_rvalid),
		.M_AXI_RREADY(uw_channel6_rready)
	);

// Instantiation of Axi Bus Interface UW_Channel7
	Unet_Wrapper_v1_0_UW_Channel7 # (
		.C_M_FLASH_CHANNEL			(C_UW_Channel7_FLASH_CHANNEL),
		.C_M_BRAM_BASE_ADDR			(C_UW_Channel7_BRAM_BASE_ADDR), 
		.C_M_TARGET_SLAVE_BASE_ADDR	(C_UW_Channel7_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_BURST_LEN			(C_UW_Channel7_BURST_LEN),
		.C_M_AXI_ID_WIDTH			(C_UW_Channel7_ID_WIDTH),
		.C_M_AXI_ADDR_WIDTH			(C_UW_Channel7_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH			(C_UW_Channel7_DATA_WIDTH),
		.C_M_AXI_AWUSER_WIDTH		(C_UW_Channel7_AWUSER_WIDTH),
		.C_M_AXI_ARUSER_WIDTH		(C_UW_Channel7_ARUSER_WIDTH),
		.C_M_AXI_WUSER_WIDTH		(C_UW_Channel7_WUSER_WIDTH),
		.C_M_AXI_RUSER_WIDTH		(C_UW_Channel7_RUSER_WIDTH),
		.C_M_AXI_BUSER_WIDTH		(C_UW_Channel7_BUSER_WIDTH)
	) Unet_Wrapper_v1_0_UW_Channel7_inst (
		.check_nfc_busy(NFC_Channel_Busy[7]),
		.Row_address(Row_address),
		.UW_Finish	(uw_c7_finish),
		.UW_Busy  (uw_c7_busy),

		.debug_S_cur     (debug_S_cur7     ),

		.INIT_AXI_TXN(UW_ALL_init_axi_txn[7]),
		.M_AXI_ACLK(uw_channel7_aclk),
		.M_AXI_ARESETN(uw_channel7_aresetn),
		.M_AXI_AWID(uw_channel7_awid),
		.M_AXI_AWADDR(uw_channel7_awaddr),
		.M_AXI_AWLEN(uw_channel7_awlen),
		.M_AXI_AWSIZE(uw_channel7_awsize),
		.M_AXI_AWBURST(uw_channel7_awburst),
		.M_AXI_AWLOCK(uw_channel7_awlock),
		.M_AXI_AWCACHE(uw_channel7_awcache),
		.M_AXI_AWPROT(uw_channel7_awprot),
		.M_AXI_AWQOS(uw_channel7_awqos),
		.M_AXI_AWUSER(uw_channel7_awuser),
		.M_AXI_AWVALID(uw_channel7_awvalid),
		.M_AXI_AWREADY(uw_channel7_awready),
		.M_AXI_WDATA(uw_channel7_wdata),
		.M_AXI_WSTRB(uw_channel7_wstrb),
		.M_AXI_WLAST(uw_channel7_wlast),
		.M_AXI_WUSER(uw_channel7_wuser),
		.M_AXI_WVALID(uw_channel7_wvalid),
		.M_AXI_WREADY(uw_channel7_wready),
		.M_AXI_BID(uw_channel7_bid),
		.M_AXI_BRESP(uw_channel7_bresp),
		.M_AXI_BUSER(uw_channel7_buser),
		.M_AXI_BVALID(uw_channel7_bvalid),
		.M_AXI_BREADY(uw_channel7_bready),
		.M_AXI_ARID(uw_channel7_arid),
		.M_AXI_ARADDR(uw_channel7_araddr),
		.M_AXI_ARLEN(uw_channel7_arlen),
		.M_AXI_ARSIZE(uw_channel7_arsize),
		.M_AXI_ARBURST(uw_channel7_arburst),
		.M_AXI_ARLOCK(uw_channel7_arlock),
		.M_AXI_ARCACHE(uw_channel7_arcache),
		.M_AXI_ARPROT(uw_channel7_arprot),
		.M_AXI_ARQOS(uw_channel7_arqos),
		.M_AXI_ARUSER(uw_channel7_aruser),
		.M_AXI_ARVALID(uw_channel7_arvalid),
		.M_AXI_ARREADY(uw_channel7_arready),
		.M_AXI_RID(uw_channel7_rid),
		.M_AXI_RDATA(uw_channel7_rdata),
		.M_AXI_RRESP(uw_channel7_rresp),
		.M_AXI_RLAST(uw_channel7_rlast),
		.M_AXI_RUSER(uw_channel7_ruser),
		.M_AXI_RVALID(uw_channel7_rvalid),
		.M_AXI_RREADY(uw_channel7_rready)
	);

// Instantiation of Axi Bus Interface Host_Data_Transfer
	Host_Data_Transfer # ( 
		.C_M_TARGET_SLAVE_BASE_ADDR	(C_HOST_DATA_TRANSFER_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_BURST_LEN			(C_HOST_DATA_TRANSFER_BURST_LEN),
		.C_M_AXI_ID_WIDTH			(C_HOST_DATA_TRANSFER_ID_WIDTH),
		.C_M_AXI_ADDR_WIDTH			(C_HOST_DATA_TRANSFER_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH			(C_HOST_DATA_TRANSFER_DATA_WIDTH),
		.C_M_AXI_AWUSER_WIDTH		(C_HOST_DATA_TRANSFER_AWUSER_WIDTH),
		.C_M_AXI_ARUSER_WIDTH		(C_HOST_DATA_TRANSFER_ARUSER_WIDTH),
		.C_M_AXI_WUSER_WIDTH		(C_HOST_DATA_TRANSFER_WUSER_WIDTH),
		.C_M_AXI_RUSER_WIDTH		(C_HOST_DATA_TRANSFER_RUSER_WIDTH),
		.C_M_AXI_BUSER_WIDTH		(C_HOST_DATA_TRANSFER_BUSER_WIDTH)
	) Host_Data_Transfer_inst (
	  //user port		
		//.WS_ALL_Done(U_L0_Finish),
	  // original	
		.INIT_AXI_TXN	(UW_Host_Data_Transfer_En),
		.M_AXI_ACLK		(m02_axi_aclk),
		.M_AXI_ARESETN	(m02_axi_aresetn),
		.M_AXI_AWID		(m02_axi_awid),
		.M_AXI_AWADDR	(m02_axi_awaddr),
		.M_AXI_AWLEN	(m02_axi_awlen),
		.M_AXI_AWSIZE	(m02_axi_awsize),
		.M_AXI_AWBURST	(m02_axi_awburst),
		.M_AXI_AWLOCK	(m02_axi_awlock),
		.M_AXI_AWCACHE	(m02_axi_awcache),
		.M_AXI_AWPROT	(m02_axi_awprot),
		.M_AXI_AWQOS	(m02_axi_awqos),
		.M_AXI_AWUSER	(m02_axi_awuser),
		.M_AXI_AWVALID	(m02_axi_awvalid),
		.M_AXI_AWREADY	(m02_axi_awready),
		.M_AXI_WDATA	(m02_axi_wdata),
		.M_AXI_WSTRB	(m02_axi_wstrb),
		.M_AXI_WLAST	(m02_axi_wlast),
		.M_AXI_WUSER	(m02_axi_wuser),
		.M_AXI_WVALID	(m02_axi_wvalid),
		.M_AXI_WREADY	(m02_axi_wready),
		.M_AXI_BID	(m02_axi_bid),
		.M_AXI_BRESP	(m02_axi_bresp),
		.M_AXI_BUSER	(m02_axi_buser),
		.M_AXI_BVALID	(m02_axi_bvalid),
		.M_AXI_BREADY	(m02_axi_bready),
		.M_AXI_ARID	(m02_axi_arid),
		.M_AXI_ARADDR	(m02_axi_araddr),
		.M_AXI_ARLEN	(m02_axi_arlen),
		.M_AXI_ARSIZE	(m02_axi_arsize),
		.M_AXI_ARBURST	(m02_axi_arburst),
		.M_AXI_ARLOCK	(m02_axi_arlock),
		.M_AXI_ARCACHE	(m02_axi_arcache),
		.M_AXI_ARPROT(m02_axi_arprot),
		.M_AXI_ARQOS(m02_axi_arqos),
		.M_AXI_ARUSER(m02_axi_aruser),
		.M_AXI_ARVALID(m02_axi_arvalid),
		.M_AXI_ARREADY(m02_axi_arready),
		.M_AXI_RID(m02_axi_rid),
		.M_AXI_RDATA(m02_axi_rdata),
		.M_AXI_RRESP(m02_axi_rresp),
		.M_AXI_RLAST(m02_axi_rlast),
		.M_AXI_RUSER(m02_axi_ruser),
		.M_AXI_RVALID(m02_axi_rvalid),
		.M_AXI_RREADY(m02_axi_rready)
	);

// Instantiation of base_address_rd
	base_address_rd #(
		.START_ADDR		(Mapping_Table_Header_BaseAddress),
		.OFFSET_CONST	(OFFSET_CONST)
	)base_address_rd_inst(
		.clk		(base_address_rd_clk),
		.rst_n		(base_address_rd_rst_n),
		//ram
		.ram_clk	(ram_clk),
		.ram_rst	(ram_rst),
		//addr
		.ram_addr	(ram_addr),
		//read
		.ram_en		(ram_en),
		.ram_rd_data(ram_rd_data),
		//write(not use)
		.ram_we		(ram_we),
		.ram_wd_data(ram_wd_data),
		.Trans_done_onehot	(UW_ALL_init_axi_txn),
		//user use
		.change_based_address(w_change_based_address)
		//.data_get(m01_start_flag)
	);

// Instantiation of CWBP_Decoder
	CWBP_Decoder #(
    	.C_DATA_WIDTH	(C_CWBP_DATA_WIDTH)
	) CWBP_Decoder_inst(
		.mapping_pointer(ram_rd_data),
		.Way			(Way),
		.Row_address	(Row_address)
	);

// Control Signal 
	// assign	UW_Finish	=	(UW_count == 2'd2) ? 1'b1 : 1'b0;
	// always @(posedge uw_channel0_aclk) begin
	// 	if (!uw_channel0_aresetn) begin
	// 		uw_c0_count	<=	2'b0;
	// 	end 
	// 	else begin
	// 		if(uw_c0_finish)
	// 			uw_c0_count	<=	uw_c0_count;	
	// 		else if(UW_ALL_init_axi_txn[0])
	// 			uw_c0_count	<=	uw_c0_count + 1'b1;			
	// 	end
	// end

	// always @(posedge uw_channel1_aclk) begin
	// 	if (!uw_channel1_aresetn) begin
	// 		uw_c1_count	<=	2'b0;
	// 	end 
	// 	else begin
	// 		if(uw_c1_finish)
	// 			uw_c1_count	<=	uw_c1_count;	
	// 		else if(UW_ALL_init_axi_txn[1])
	// 			uw_c1_count	<=	uw_c1_count + 1'b1;			
	// 	end
	// end

	// always @(posedge uw_channel2_aclk) begin
	// 	if (!uw_channel2_aresetn) begin
	// 		uw_c2_count	<=	2'b0;
	// 	end 
	// 	else begin
	// 		if(uw_c2_finish)
	// 			uw_c2_count	<=	uw_c2_count;	
	// 		else if(UW_ALL_init_axi_txn[2])
	// 			uw_c2_count	<=	uw_c2_count + 1'b1;			
	// 	end
	// end

	// always @(posedge uw_channel3_aclk) begin
	// 	if (!uw_channel3_aresetn) begin
	// 		uw_c3_count	<=	2'b0;
	// 	end 
	// 	else begin
	// 		if(uw_c3_finish)
	// 			uw_c3_count	<=	uw_c3_count;	
	// 		else if(UW_ALL_init_axi_txn[3])
	// 			uw_c3_count	<=	uw_c3_count + 1'b1;			
	// 	end
	// end

	// always @(posedge uw_channel4_aclk) begin
	// 	if (!uw_channel4_aresetn) begin
	// 		uw_c4_count	<=	2'b0;
	// 	end 
	// 	else begin
	// 		if(uw_c4_finish)
	// 			uw_c4_count	<=	uw_c4_count;	
	// 		else if(UW_ALL_init_axi_txn[4])
	// 			uw_c4_count	<=	uw_c4_count + 1'b1;			
	// 	end
	// end

	// always @(posedge uw_channel5_aclk) begin
	// 	if (!uw_channel5_aresetn) begin
	// 		uw_c5_count	<=	2'b0;
	// 	end 
	// 	else begin
	// 		if(uw_c5_finish)
	// 			uw_c5_count	<=	uw_c5_count;	
	// 		else if(UW_ALL_init_axi_txn[5])
	// 			uw_c5_count	<=	uw_c5_count + 1'b1;			
	// 	end
	// end

	// always @(posedge uw_channel6_aclk) begin
	// 	if (!uw_channel6_aresetn) begin
	// 		uw_c6_count	<=	2'b0;
	// 	end 
	// 	else begin
	// 		if(uw_c6_finish)
	// 			uw_c6_count	<=	uw_c6_count;	
	// 		else if(UW_ALL_init_axi_txn[6])
	// 			uw_c6_count	<=	uw_c6_count + 1'b1;			
	// 	end
	// end

	// always @(posedge uw_channel7_aclk) begin
	// 	if (!uw_channel7_aresetn) begin
	// 		uw_c7_count	<=	2'b0;
	// 	end 
	// 	else begin
	// 		if(uw_c7_finish)
	// 			uw_c7_count	<=	uw_c7_count;	
	// 		else if(UW_ALL_init_axi_txn[7])
	// 			uw_c7_count	<=	uw_c7_count + 1'b1;			
	// 	end
	// end

	// assign	uw_c0_finish	=	(uw_c0_count == 2'd1) ? 1'b1 : 1'b0;
	// assign	uw_c1_finish	=	(uw_c1_count == 2'd1) ? 1'b1 : 1'b0;
	// assign	uw_c2_finish	=	(uw_c2_count == 2'd1) ? 1'b1 : 1'b0;
	// assign	uw_c3_finish	=	(uw_c3_count == 2'd1) ? 1'b1 : 1'b0;
	// assign	uw_c4_finish	=	(uw_c4_count == 2'd1) ? 1'b1 : 1'b0;
	// assign	uw_c5_finish	=	(uw_c5_count == 2'd1) ? 1'b1 : 1'b0;
	// assign	uw_c6_finish	=	(uw_c6_count == 2'd1) ? 1'b1 : 1'b0;
	// assign	uw_c7_finish	=	(uw_c7_count == 2'd1) ? 1'b1 : 1'b0;
	reg reg_uw_c0_f,reg_uw_c1_f, reg_uw_c2_f, reg_uw_c3_f, reg_uw_c4_f, reg_uw_c5_f , reg_uw_c6_f , reg_uw_c7_f;

	always @(posedge uw_channel0_aclk) begin
		if(!uw_channel0_aresetn) begin
			reg_uw_c0_f	<=	1'b0;
		end
		else if(uw_c0_finish) begin
			reg_uw_c0_f	<=	1'b1;
		end
	end

	always @(posedge uw_channel1_aclk) begin
		if(!uw_channel1_aresetn) begin
			reg_uw_c1_f	<=	1'b0;
		end
		else if(uw_c1_finish) begin
			reg_uw_c1_f	<=	1'b1;
		end
	end

	always @(posedge uw_channel2_aclk) begin
		if(!uw_channel2_aresetn) begin
			reg_uw_c2_f	<=	1'b0;
		end
		else if(uw_c2_finish) begin
			reg_uw_c2_f	<=	1'b1;
		end
	end

	always @(posedge uw_channel3_aclk) begin
		if(!uw_channel3_aresetn) begin
			reg_uw_c3_f	<=	1'b0;
		end
		else if(uw_c3_finish) begin
			reg_uw_c3_f	<=	1'b1;
		end
	end

	always @(posedge uw_channel4_aclk) begin
		if(!uw_channel4_aresetn) begin
			reg_uw_c4_f	<=	1'b0;
		end
		else if(uw_c4_finish) begin
			reg_uw_c4_f	<=	1'b1;
		end
	end

	always @(posedge uw_channel5_aclk) begin
		if(!uw_channel5_aresetn) begin
			reg_uw_c5_f	<=	1'b0;
		end
		else if(uw_c5_finish) begin
			reg_uw_c5_f	<=	1'b1;
		end
	end

	always @(posedge uw_channel6_aclk) begin
		if(!uw_channel6_aresetn) begin
			reg_uw_c6_f	<=	1'b0;
		end
		else if(uw_c6_finish) begin
			reg_uw_c6_f	<=	1'b1;
		end
	end

	always @(posedge uw_channel7_aclk) begin
		if(!uw_channel7_aresetn) begin
			reg_uw_c7_f	<=	1'b0;
		end
		else if(uw_c7_finish) begin
			reg_uw_c7_f	<=	1'b1;
		end
	end

	assign UW_Finish	=  reg_uw_c0_f && reg_uw_c1_f && reg_uw_c2_f && reg_uw_c3_f && reg_uw_c4_f && reg_uw_c5_f && reg_uw_c6_f && reg_uw_c7_f;//(UW_Host_Data_Transfer_En) ? 1'b0 : (uw_c0_finish && uw_c1_finish && uw_c2_finish && uw_c3_finish && uw_c4_finish && uw_c5_finish) ;//&& uw_c6_finish && uw_c7_finish;	
	assign total_channel_UW_busy	=	uw_c0_busy || uw_c1_busy || uw_c2_busy || uw_c3_busy || uw_c4_busy || uw_c5_busy || uw_c6_busy || uw_c7_busy;
	assign UW_Busy = (UW_Host_Data_Transfer_En) ? 1'b1 : total_channel_UW_busy;

	//debug 
	//assign debug_UW_Finish_1 = {reg_uw_c3_f, reg_uw_c2_f, reg_uw_c1_f, reg_uw_c0_f};
	assign debug_UW_Finish_2 = {reg_uw_c7_f, reg_uw_c6_f, reg_uw_c5_f, reg_uw_c4_f};


endmodule
