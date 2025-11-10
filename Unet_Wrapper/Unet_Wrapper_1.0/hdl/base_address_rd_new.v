//Purpose: waiting for Mapping Table Header to get ready, then Wrapper can start execute command to transfer 
//
//

module base_address_rd #(
    // parameter  START_ADDR   = 32'h4580_0000,
    parameter  START_ADDR   = 32'h4580_0000,        //Mapping Table Header start address (aka channel0's data start address)
    parameter  OFFSET_CONST = 32'h0000_0004         //address offset
    )
    (
    input clk ,
    input rst_n ,

    output ram_clk , 
    output ram_rst,
    //addr
    output reg  [31:0]  ram_addr,
    //read
    output              ram_en ,
    input       [31:0]  ram_rd_data,
    //write(not use)
    output      [3:0]   ram_we,
    output      [31:0]  ram_wd_data,
    //to m01_signal
    output reg  [7:0]   Trans_done_onehot,
    //user use
    input               change_based_address
    //input   data_get
    );

assign ram_rst  = 1'b0;
assign ram_clk  = clk ;
assign ram_en   = 1'b1;
assign ram_we   = 4'b0;
assign ram_wd_data = 32'd0;

reg [2:0]   address_counter;
reg [31:0]  reg_ram_rd_data;        //register store data from bram
wire        Transfer_Done;          //Whether Mapping Table Header is ready, check the value stored in the ram_addr(4580_0020) equal to 1
reg         flag;                   //Once Transfer_Done is rise, flag will be set to 1 forever. Channels know data start point and ready to transfer
// change to pulse
assign Transfer_Done = (reg_ram_rd_data == 32'd1) ? 1'b1 : 1'b0;
//--------------------- rd data reg ---------------------//
  //address to one hot
    always @(*) begin
        if (flag) begin
            case (address_counter)
                3'd0:   Trans_done_onehot   =   8'b00000001;
                3'd1:   Trans_done_onehot   =   8'b00000010;
                3'd2:   Trans_done_onehot   =   8'b00000100;
                3'd3:   Trans_done_onehot   =   8'b00001000;
                3'd4:   Trans_done_onehot   =   8'b00010000;
                3'd5:   Trans_done_onehot   =   8'b00100000;
                3'd6:   Trans_done_onehot   =   8'b01000000;
                3'd7:   Trans_done_onehot   =   8'b10000000;
                default:   Trans_done_onehot   =   8'b00000000; 
            endcase
        end
        else begin
            Trans_done_onehot   =   8'b00000000; 
        end
    end

  //address counter
    always @(posedge clk  or negedge rst_n) begin
        if (!rst_n) begin
            address_counter <=  3'd0;
        end 
        else if(flag)begin
            if(address_counter == 3'd7)
                address_counter <= address_counter;
            else
                address_counter <=  address_counter + 3'd1;
        end 
    end        

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            reg_ram_rd_data <=  32'd0;
        end 
        else begin
            reg_ram_rd_data <=  ram_rd_data;            
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            flag <= 1'b0;
        else if(Transfer_Done)
            flag <= 1'b1;
        else 
            flag <= flag;
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            ram_addr <= 32'h4580_0020;                  //if Mapping Table Header is ready, value stored in 32'h4580_0020 will be 1 
        end
        else if(flag)begin
            ram_addr <= ram_addr + OFFSET_CONST;
        end
        else if(Transfer_Done) begin
            ram_addr    <= START_ADDR;//32'h0000_0010;
        end
        else begin
            ram_addr <= ram_addr;
        end
    end


endmodule
