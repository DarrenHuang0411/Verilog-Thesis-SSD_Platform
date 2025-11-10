`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/01 17:01:52
// Design Name: 
// Module Name: Host_data_Trasfer
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module Host_Data_Transfer #
(
    // Users to add parameters here
    
    // 0x2FFF_E008
    // 0X2FFF_E00C

    // User parameters ends
    // Do not modify the parameters beyond this line

    // Base address of targeted slave
    parameter  C_M_TARGET_SLAVE_BASE_ADDR	= 32'h2FFFF_E008,
    // Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths
    parameter integer C_M_AXI_BURST_LEN	= 8,
    // Thread ID Width
    parameter integer C_M_AXI_ID_WIDTH	= 1,
    // Width of Address Bus
    parameter integer C_M_AXI_ADDR_WIDTH	= 32,
    // Width of Data Bus
    parameter integer C_M_AXI_DATA_WIDTH	= 32,
    // Width of User Write Address Bus
    parameter integer C_M_AXI_AWUSER_WIDTH	= 0,
    // Width of User Read Address Bus
    parameter integer C_M_AXI_ARUSER_WIDTH	= 0,
    // Width of User Write Data Bus
    parameter integer C_M_AXI_WUSER_WIDTH	= 0,
    // Width of User Read Data Bus
    parameter integer C_M_AXI_RUSER_WIDTH	= 0,
    // Width of User Response Bus
    parameter integer C_M_AXI_BUSER_WIDTH	= 0
)(
		// Users to add ports here
		input		WS_ALL_Done,
		// User ports ends
		// Do not modify the ports beyond this line

		// Initiate AXI transactions
		input wire  INIT_AXI_TXN,
		// Asserts when transaction is complete
		output wire  TXN_DONE,
		// Asserts when ERROR is detected
		output reg  ERROR,
		// Global Clock Signal.
		input wire  M_AXI_ACLK,
		// Global Reset Singal. This Signal is Active Low
		input wire  M_AXI_ARESETN,
		// Master Interface Write Address ID
		output wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_AWID,
		// Master Interface Write Address
		output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_AWADDR,
		// Burst length. The burst length gives the exact number of transfers in a burst
		output wire [7 : 0] M_AXI_AWLEN,
		// Burst size. This signal indicates the size of each transfer in the burst
		output wire [2 : 0] M_AXI_AWSIZE,
		// Burst type. The burst type and the size information, 
    // determine how the address for each transfer within the burst is calculated.
		output wire [1 : 0] M_AXI_AWBURST,
		// Lock type. Provides additional information about the
    // atomic characteristics of the transfer.
		output wire  M_AXI_AWLOCK,
		// Memory type. This signal indicates how transactions
    // are required to progress through a system.
		output wire [3 : 0] M_AXI_AWCACHE,
		// Protection type. This signal indicates the privilege
    // and security level of the transaction, and whether
    // the transaction is a data access or an instruction access.
		output wire [2 : 0] M_AXI_AWPROT,
		// Quality of Service, QoS identifier sent for each write transaction.
		output wire [3 : 0] M_AXI_AWQOS,
		// Optional User-defined signal in the write address channel.
		output wire [C_M_AXI_AWUSER_WIDTH-1 : 0] M_AXI_AWUSER,
		// Write address valid. This signal indicates that
    // the channel is signaling valid write address and control information.
		output wire  M_AXI_AWVALID,
		// Write address ready. This signal indicates that
    // the slave is ready to accept an address and associated control signals
		input wire  M_AXI_AWREADY,
		// Master Interface Write Data.
		output wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_WDATA,
		// Write strobes. This signal indicates which byte
    // lanes hold valid data. There is one write strobe
    // bit for each eight bits of the write data bus.
		output wire [C_M_AXI_DATA_WIDTH/8-1 : 0] M_AXI_WSTRB,
		// Write last. This signal indicates the last transfer in a write burst.
		output wire  M_AXI_WLAST,
		// Optional User-defined signal in the write data channel.
		output wire [C_M_AXI_WUSER_WIDTH-1 : 0] M_AXI_WUSER,
		// Write valid. This signal indicates that valid write
    // data and strobes are available
		output wire  M_AXI_WVALID,
		// Write ready. This signal indicates that the slave
    // can accept the write data.
		input wire  M_AXI_WREADY,
		// Master Interface Write Response.
		input wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_BID,
		// Write response. This signal indicates the status of the write transaction.
		input wire [1 : 0] M_AXI_BRESP,
		// Optional User-defined signal in the write response channel
		input wire [C_M_AXI_BUSER_WIDTH-1 : 0] M_AXI_BUSER,
		// Write response valid. This signal indicates that the
    // channel is signaling a valid write response.
		input wire  M_AXI_BVALID,
		// Response ready. This signal indicates that the master
    // can accept a write response.
		output wire  M_AXI_BREADY,
		// Master Interface Read Address.
		output wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_ARID,
		// Read address. This signal indicates the initial
    // address of a read burst transaction.
		output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_ARADDR,
		// Burst length. The burst length gives the exact number of transfers in a burst
		output wire [7 : 0] M_AXI_ARLEN,
		// Burst size. This signal indicates the size of each transfer in the burst
		output wire [2 : 0] M_AXI_ARSIZE,
		// Burst type. The burst type and the size information, 
    // determine how the address for each transfer within the burst is calculated.
		output wire [1 : 0] M_AXI_ARBURST,
		// Lock type. Provides additional information about the
    // atomic characteristics of the transfer.
		output wire  M_AXI_ARLOCK,
		// Memory type. This signal indicates how transactions
    // are required to progress through a system.
		output wire [3 : 0] M_AXI_ARCACHE,
		// Protection type. This signal indicates the privilege
    // and security level of the transaction, and whether
    // the transaction is a data access or an instruction access.
		output wire [2 : 0] M_AXI_ARPROT,
		// Quality of Service, QoS identifier sent for each read transaction
		output wire [3 : 0] M_AXI_ARQOS,
		// Optional User-defined signal in the read address channel.
		output wire [C_M_AXI_ARUSER_WIDTH-1 : 0] M_AXI_ARUSER,
		// Write address valid. This signal indicates that
    // the channel is signaling valid read address and control information
		output wire  M_AXI_ARVALID,
		// Read address ready. This signal indicates that
    // the slave is ready to accept an address and associated control signals
		input wire  M_AXI_ARREADY,
		// Read ID tag. This signal is the identification tag
    // for the read data group of signals generated by the slave.
		input wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_RID,
		// Master Read Data
		input wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_RDATA,
		// Read response. This signal indicates the status of the read transfer
		input wire [1 : 0] M_AXI_RRESP,
		// Read last. This signal indicates the last transfer in a read burst
		input wire  M_AXI_RLAST,
		// Optional User-defined signal in the read address channel.
		input wire [C_M_AXI_RUSER_WIDTH-1 : 0] M_AXI_RUSER,
		// Read valid. This signal indicates that the channel
    // is signaling the required read data.
		input wire  M_AXI_RVALID,
		// Read ready. This signal indicates that the master can
    // accept the read data and response information.
		output wire  M_AXI_RREADY
	);


	// function called clogb2 that returns an integer which has the
	//value of the ceiling of the log base 2

	  // function called clogb2 that returns an integer which has the 
	  // value of the ceiling of the log base 2.                      
	  function integer clogb2 (input integer bit_depth);              
	  begin                                                           
	    for(clogb2=0; bit_depth>0; clogb2=clogb2+1)                   
	      bit_depth = bit_depth >> 1;                                 
	    end                                                           
	  endfunction                                                     

	// C_TRANSACTIONS_NUM is the width of the index counter for 
	// number of write or read transaction.
	 localparam integer C_TRANSACTIONS_NUM = clogb2(C_M_AXI_BURST_LEN-1);

	// Burst length for transactions, in C_M_AXI_DATA_WIDTHs.
	// Non-2^n lengths will eventually cause bursts across 4K address boundaries.
	 localparam integer C_MASTER_LENGTH	= 12;
	// total number of burst transfers is master length divided by burst length and burst size
	 localparam integer C_NO_BURSTS_REQ = C_MASTER_LENGTH-clogb2((C_M_AXI_BURST_LEN*C_M_AXI_DATA_WIDTH/8)-1);


	 reg [1:0] mst_exec_state;
// <-------------internal_signals------------------>
	reg [C_M_AXI_ADDR_WIDTH-1 : 0] 		axi_awaddr;
	reg  								axi_awvalid;
	reg [C_M_AXI_DATA_WIDTH-1 : 0] 		axi_wdata;
	reg [C_M_AXI_DATA_WIDTH/8-1 : 0] 	axi_wstrb;
	reg  								axi_wlast;
	reg  								axi_wvalid;
	reg  								axi_bready;
	reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	reg  	axi_arvalid;
	reg  	axi_rready;
	//write beat count in a burst
	reg [C_TRANSACTIONS_NUM : 0] 	write_index;
	//read beat count in a burst
	reg [C_TRANSACTIONS_NUM : 0] 	read_index;
	//size of C_M_AXI_BURST_LEN length burst in bytes
	wire [C_TRANSACTIONS_NUM+2 : 0] 	burst_size_bytes;
	//The burst counters are used to track the number of burst transfers of C_M_AXI_BURST_LEN burst length needed to transfer 2^C_MASTER_LENGTH bytes of data.
	reg [C_NO_BURSTS_REQ : 0] 	write_burst_counter;
	reg [C_NO_BURSTS_REQ : 0] 	read_burst_counter;
	reg  	start_single_burst_write;
	reg  	start_single_burst_read;
	reg  	writes_done;
	reg  	reads_done;
	reg  	error_reg;
	reg  	compare_done;
	reg  	read_mismatch;
	reg  	burst_write_active;
	reg  	burst_read_active;
	reg [C_M_AXI_DATA_WIDTH-1 : 0] 	expected_rdata;
	//Interface response error flags
	wire  	write_resp_error;
	wire  	read_resp_error;
	wire  	wnext;
	wire  	rnext;
	reg  	init_txn_ff;
	reg  	init_txn_ff2;
	reg  	init_txn_edge;
	wire  	init_txn_pulse;


// <----------- I/O Connection---------------------->

	//I/O Connections. Write Address (AW)
	assign M_AXI_AWID	= 'b0;
	//The AXI address is a concatenation of the target base address + active offset range
	assign M_AXI_AWADDR	= axi_awaddr;
	//Burst LENgth is number of transaction beats, minus 1
	assign M_AXI_AWLEN	= C_M_AXI_BURST_LEN - 1;
	//Size should be C_M_AXI_DATA_WIDTH, in 2^SIZE bytes, otherwise narrow bursts are used
	assign M_AXI_AWSIZE	= clogb2((C_M_AXI_DATA_WIDTH/8)-1);
	//INCR burst type is usually used, except for keyhole bursts
	assign M_AXI_AWBURST	= 2'b01;
	assign M_AXI_AWLOCK	= 1'b0;
	//Update value to 4'b0011 if coherent accesses to be used via the Zynq ACP port. Not Allocated, Modifiable, not Bufferable. Not Bufferable since this example is meant to test memory, not intermediate cache. 
	assign M_AXI_AWCACHE	= 4'b0010;
	assign M_AXI_AWPROT	= 3'h0;
	assign M_AXI_AWQOS	= 4'h0;
	assign M_AXI_AWUSER	= 'b1;
	assign M_AXI_AWVALID	= axi_awvalid;
	//Write Data(W)
	assign M_AXI_WDATA	= axi_wdata;
	//All bursts are complete and aligned in this example
	assign M_AXI_WSTRB	= axi_wstrb;
	assign M_AXI_WLAST	= axi_wlast;
	assign M_AXI_WUSER	= 'b0;
	assign M_AXI_WVALID	= axi_wvalid;
	//Write Response (B)
	assign M_AXI_BREADY	= axi_bready;
	//Read Address (AR)
	assign M_AXI_ARID	= 'b0;
	assign M_AXI_ARADDR	= axi_araddr;
	//Burst LENgth is number of transaction beats, minus 1
	assign M_AXI_ARLEN	= C_M_AXI_BURST_LEN - 1;
	//Size should be C_M_AXI_DATA_WIDTH, in 2^n bytes, otherwise narrow bursts are used
	assign M_AXI_ARSIZE	= clogb2((C_M_AXI_DATA_WIDTH/8)-1);
	//INCR burst type is usually used, except for keyhole bursts
	assign M_AXI_ARBURST	= 2'b01;
	assign M_AXI_ARLOCK	= 1'b0;
	//Update value to 4'b0011 if coherent accesses to be used via the Zynq ACP port. Not Allocated, Modifiable, not Bufferable. Not Bufferable since this example is meant to test memory, not intermediate cache. 
	assign M_AXI_ARCACHE	= 4'b0010;
	assign M_AXI_ARPROT	= 3'h0;
	assign M_AXI_ARQOS	= 4'h0;
	assign M_AXI_ARUSER	= 'b1;
	assign M_AXI_ARVALID	= axi_arvalid;
	//Read and Read Response (R)
	assign M_AXI_RREADY	= axi_rready;
	//Example design I/O
	assign TXN_DONE	= compare_done;
	//Burst size in bytes
	assign burst_size_bytes	= C_M_AXI_BURST_LEN * C_M_AXI_DATA_WIDTH/8;
	assign init_txn_pulse	= (!init_txn_ff2) && init_txn_ff;


// <----------- Initialize Pulse-------------------->
	always @(posedge M_AXI_ACLK)										      
	begin                                                                        
	// Initiates AXI transaction delay    
	if (M_AXI_ARESETN == 0 )                                                   
		begin                                                                    
		init_txn_ff <= 1'b0;                                                   
		init_txn_ff2 <= 1'b0;                                                   
		end                                                                               
	else                                                                       
		begin  
		init_txn_ff <= INIT_AXI_TXN;
		//init_txn_ff <= 1'b1;
		init_txn_ff2 <= init_txn_ff;                                                                 
		end                                                                      
	end    

// <-------------------FSM------------------------->
  //parameter for FSM
	parameter [1:0] Init     		= 2'b00,
					WCDMA			= 2'b01,
					FINISH   		= 2'b10;

//<---------------Control Signal------------------->
	wire addr_done;
	reg [2:0] count;
	reg [4:0] S_cur, S_next;

	wire WCDMA_done; 

	wire R_done, W_done;

	assign R_done	= axi_rready && M_AXI_RVALID && M_AXI_RLAST;
	assign W_done	= M_AXI_BVALID && axi_bready;
	
	assign WCDMA_done = ((S_cur == WCDMA) && W_done)? 1'b1 : 1'b0;
	
	
	//wire mp_counter_flag;// (use pulse)	
	//assign	mp_counter_flag	=	Trans_done;	
	//assign check_M02_state_flag	 =	Trigger_done;


// <------------------- UW reset --------------------->
	reg	UW_reset;
	always @(posedge M_AXI_ACLK)begin
		if(M_AXI_ARESETN == 0) 			  UW_reset <= 1;
		else if (init_txn_pulse == 1'b1)  UW_reset <= 0;
		else          					  UW_reset <= UW_reset;
	end	

// <-----------------------FSM----------------------->
	//Changing FSM state from State_next to State_current
	always @(posedge M_AXI_ACLK)begin
		if(M_AXI_ARESETN == 0) 			  S_cur <= Init;
		//else if (init_txn_pulse == 1'b1)  S_cur <= Init;
		else          					  S_cur <= S_next;
	end
	//FSM
	always @(*)begin
		case(S_cur)
			Init: begin
				// if (init_txn_pulse) S_next = Trigger; // && axi_awvalid && M_AXI_AWREADY
				// else 				S_next = Init;
				if (init_txn_pulse) S_next = WCDMA;
				else				S_next = Init;
			end
			WCDMA: begin
				if(WCDMA_done)  	S_next = FINISH;      
				else              	S_next = WCDMA;
			end
			// if(Transfer_comp_report == 32'hFF_A501)
			FINISH: begin
				S_next = FINISH;				  	
			end
			default:begin       
				S_next	=	Init;
			end
		endcase
	end

//<-----------------count-------------------------->
	// <Conut the number of command write into prticular place>
		always @(posedge M_AXI_ACLK) begin
		if (!M_AXI_ARESETN || init_txn_pulse )   count <= 3'b0;   
		else            
			case (S_cur)
				WCDMA:		count <= (WCDMA_done)? 3'd0 : (axi_wvalid && M_AXI_WREADY) ? count + 1 : count;
				default: 		count <= count;  
			endcase
		end


// <---------start_single_burst_write---------------->
	always @ ( posedge M_AXI_ACLK) begin          
		if (M_AXI_ARESETN == 1'b0 ) 
			begin                           
				start_single_burst_write <= 1'b0;                                
			end                                                                   
		else 
			case (S_cur)
				WCDMA:  begin				
	                if (~axi_awvalid && ~start_single_burst_write && ~burst_write_active)                       
	                  begin                                                                                     
	                    start_single_burst_write <= 1'b1;                                                       
	                  end                                                                                       
	                else                                                                                        
	                  begin                                                                                     
	                    start_single_burst_write <= 1'b0; //Negate to generate a pulse                          
	                  end 
				end
				default:  start_single_burst_write <= 1'b0;
			endcase                                          
	end 	

// <----------- burst_write_active ----------------->
	always @(posedge M_AXI_ACLK)                                                                              
	  begin                                                                                                     
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                                                 
	      burst_write_active <= 1'b0;                                                                           
	                                                                                                            
	    //The burst_write_active is asserted when a write burst transaction is initiated                        
	    else if (start_single_burst_write)                                                                      
	      burst_write_active <= 1'b1;                                                                           
	    else if (M_AXI_BVALID && axi_bready)                                                                    
	      burst_write_active <= 0;                                                                              
	  end 

// <---------- Write Address Channel ---------------->
	always @(posedge M_AXI_ACLK)	begin                                                                																	
		if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                           
			begin                                                            
			axi_awvalid <= 1'b0;                                           
			end                                                              
		// If previously not valid , start next transaction                
		else if (~axi_awvalid && start_single_burst_write)                 
			begin                                                            
			axi_awvalid <= 1'b1;                                           
			end                                                              
		/* Once asserted, VALIDs cannot be deasserted, so axi_awvalid      
		must wait until transaction is accepted */                         
		else if (M_AXI_AWREADY && axi_awvalid)                             
			begin                                                            
			axi_awvalid <= 1'b0;                                           
			end                                                              
		else                                                               
			axi_awvalid <= axi_awvalid;                                      
	end

	always @(posedge M_AXI_ACLK)                                         
	  begin                                                                
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                            
	      begin                                                            
	        axi_awaddr <= 'b0;                                             
	      end                                                              
		else begin
		  case (S_cur)
			WCDMA: 		axi_awaddr <= C_M_TARGET_SLAVE_BASE_ADDR;  
			default: 	axi_awaddr <= 32'b0;   
		  endcase          
		end                                         
	 end     

// <---------- Write Data Channel ---------------->  //HAVE WRONG
	always @(posedge M_AXI_ACLK)	begin                                                                															
		if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                                                                                      
			axi_wvalid <= 1'b0;                                                                                                                       
		else if (~axi_awvalid && ~axi_wvalid && start_single_burst_write) 
			axi_wvalid <= 1'b1;                                                            
	    else if (wnext && axi_wlast)                                                    
	      axi_wvalid <= 1'b0;                                              
	    else                                                                            
	      axi_wvalid <= axi_wvalid;                                                     
	end   

	always @(*) begin
	  case(S_cur)
		WCDMA: begin
			axi_wstrb	 = {(C_M_AXI_DATA_WIDTH/8){1'b1}};
			case (count)
				3'd0: begin             //write opcode into nsc_base_address + SP_register_offset
				axi_wdata    = 32'h0000_0001;
				end
				3'd1: begin             //write way into nsc_base_address + SP_register_offset + 4
				axi_wdata    = 32'h0000_0001;
				end
				default: begin           //otherwise
				axi_wstrb	 = {(C_M_AXI_DATA_WIDTH/8){1'b0}};
				axi_wdata    = 32'h0000_0000;
				end
			endcase			
		end
		default: begin
			axi_wdata    = 32'h0000_0000;			
		end
	  endcase			
	end

// <-------------- Write Data Last ------------------->
	always @(posedge M_AXI_ACLK)                                                      
	  begin                                                                             
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                                        
	      begin                                                                         
	        axi_wlast <= 1'b0;                                                          
	      end
		else if (((write_index == C_M_AXI_BURST_LEN-2 && C_M_AXI_BURST_LEN >= 2) && wnext) || (C_M_AXI_BURST_LEN == 1 ))
	      begin                                                                         
	        axi_wlast <= 1'b1;                                                          
	      end
		else if (wnext)                                                                 
	      axi_wlast <= 1'b0;                                                            
	    else if (axi_wlast && C_M_AXI_BURST_LEN == 1)                                   
	      axi_wlast <= 1'b0;                                                            
	    else                                                                            
	      axi_wlast <= axi_wlast;                                                       
	  end                                                         

// <-------------- Write Response ------------------->
	always @(posedge M_AXI_ACLK)                                     
	begin                                                                 
	if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                            
		begin                                                             
		axi_bready <= 1'b0;                                             
		end                                                               
	// accept/acknowledge bresp with axi_bready by the master           
	// when M_AXI_BVALID is asserted by slave                           
	else if (M_AXI_BVALID && ~axi_bready)                               
		begin                                                             
		axi_bready <= 1'b1;                                             
		end
	else if (axi_wlast)
		begin
		axi_bready <= 1'b1;  			
		end                                                               
	// deassert after one clock cycle                                   
	else if (M_AXI_BVALID && axi_bready)                                                
		begin                                                             
		axi_bready <= 1'b0;                                             
		end                                                               
	// retain the previous value                                        
	else                                                                
		axi_bready <= axi_bready;                                         
	end  

// <---------- write_Brust_counter----------------> 
	  always @(posedge M_AXI_ACLK)                                                                              
	  begin                                                                                                     
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                                                                 
	      begin                                                                                                 
	        write_burst_counter <= 'b0;                                                                         
	      end                                                                                                   
	    else if (M_AXI_AWREADY && axi_awvalid)                                                                  
	      begin                                                                                                 
	        if (write_burst_counter[C_NO_BURSTS_REQ] == 1'b0)                                                   
	          begin                                                                                             
	            write_burst_counter <= write_burst_counter + 1'b1;                                              
	            //write_burst_counter[C_NO_BURSTS_REQ] <= 1'b1;                                                 
	          end                                                                                               
	      end                                                                                                   
	    else                                                                                                    
	      write_burst_counter <= write_burst_counter;                                                           
	  end  

// <---------- write_index (Brust Len counter)----------------> 
	  always @(posedge M_AXI_ACLK)                                                      
	  begin                                                                             
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 || start_single_burst_write == 1'b1)    
	      begin                                                                         
	        write_index <= 0;                                                           
	      end                                                                           
	    else if (wnext && (write_index != C_M_AXI_BURST_LEN-1))                         
	      begin                                                                         
	        write_index <= write_index + 1;                                             
	      end                                                                           
	    else                                                                            
	      write_index <= write_index;                                                   
	  end  
//Forward movement occurs when the write channel is valid and ready
	  assign wnext = M_AXI_WREADY & M_AXI_WVALID;//axi_wvalid;  

//READ
// <---------start_single_burst_read---------------->
	always @ ( posedge M_AXI_ACLK) begin          
		if (M_AXI_ARESETN == 1'b0 ) 
			begin                           
				start_single_burst_read <= 1'b0;                                
			end                                                                                                        
	end

// <----------- burst_read_active ----------------->
	always @(posedge M_AXI_ACLK)                                                                              
	  begin                                                                                                     
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                                                 
	      burst_read_active <= 1'b0;                                                                                                                                                                
	    //The burst_write_active is asserted when a write burst transaction is initiated                        
	    else if (start_single_burst_read)                                                                      
	      burst_read_active <= 1'b1;                                                                           
	    else if (M_AXI_RVALID && axi_rready)                                                                    
	      burst_read_active <= 0;                                                                              
	  end 

// <---------- Read Address Channel ---------------->
	always @(posedge M_AXI_ACLK) begin                                                              																			
		if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                         
		begin                                                          
			axi_arvalid <= 1'b0;                                         
		end                                                            
		// If previously not valid , start next transaction              
		else if (~axi_arvalid && start_single_burst_read)                
		begin                                                          
			axi_arvalid <= 1'b1;                                         
		end                                                            
		else if (M_AXI_ARREADY && axi_arvalid)// && ~M_AXI_RLAST)//M_AXI_ARREADY &&                           
		begin                                                          
			axi_arvalid <= 1'b0;                                         
		end                                                            
		else                                                             
		axi_arvalid <= axi_arvalid;                                    
	end 

	always @(posedge M_AXI_ACLK)                                         
	  begin                                                                
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                            
	      begin                                                            
	        axi_araddr <= 'b0;                                             
	      end                                    
	 end 

//<---------------- Read data Channel -------------------> 
	  always @(posedge M_AXI_ACLK)                                          
	  begin                                                                 
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                  
	      begin                                                             
	        axi_rready <= 1'b0;                                             
	      end                                                               
	    // accept/acknowledge rdata/rresp with axi_rready by the master     
	    // when M_AXI_RVALID is asserted by slave                           
	    else if (M_AXI_RVALID)                       
	      begin                                      
	         if (M_AXI_RLAST && axi_rready)          
	          begin                                  
	            axi_rready <= 1'b0;                  
	          end                                    
	         else                                    
	           begin                                 
	             axi_rready <= 1'b1;                 
	           end                                   
	      end                                        
	    // retain the previous value                 
	  end   


// //Finish Signal (TEMP for WS)
// 	always @(posedge M_AXI_ACLK) begin
// 		if (!M_AXI_ARESETN) begin
// 			UW_Finish	<=	1'b0;				
// 		end 
// 		else begin
// 			if (S_cur	== FINISH) begin
// 				UW_Finish	<=	1'b1;
// 			end 
// 			else begin
// 				UW_Finish	<=	1'b0;				
// 			end	
// 		end
// 	end


endmodule
