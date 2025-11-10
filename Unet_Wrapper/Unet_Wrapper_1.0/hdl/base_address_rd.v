module base_address_rd #(
    parameter  START_ADDR   = 32'h4580_0000,
    parameter  OFFSET_CONST = 32'h0000_0004    
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
reg [31:0]  reg_ram_rd_data;
reg [31:0]  data_input_change;
wire        Transfer_Done;
// change to pulse
assign Transfer_Done = (reg_ram_rd_data == data_input_change) ? 1'b1 : 1'b0;//(counter && ((&ram_rd_data) != 0)) ? 1'b1 : 1'b0;
//   assign Transfer_Done  =  (counter == 1'b1) ? 1'b1 : 1'b0;
//--------------------- rd data reg ---------------------//
    always @(posedge clk  or negedge rst_n) begin
        if (!rst_n) begin
            data_input_change <=  32'h0001_0030;
            //data_input_change <=  32'h0000_0010;
        end 
        else begin //if(Transfer_Done)begin
            // data_input_change <=  32'h0003_0010;    
            // data_input_change <=  data_input_change - 32'h0001_0000;        
          //Watershed version    
            // data_input_change <=  data_input_change + 32'h0001_0000;
        //   //8 channel version 
        //        case (address_counter)
        //         3'd0: data_input_change <=  32'h0000_0010;
        //         3'd1: data_input_change <=  32'h0000_0010;
        //         3'd2: data_input_change <=  32'h0000_0010;
        //         3'd3: data_input_change <=  32'h0000_0011;
        //         3'd4: data_input_change <=  32'h0000_0010;
        //         3'd5: data_input_change <=  32'h0000_0010;
        //         3'd6: data_input_change <=  32'h0000_0010;
        //         3'd7: data_input_change <=  32'h6F6D_001F;
        //         default: data_input_change <=  32'h0;
        //        endcase    

          //8 channel version 
               case (address_counter)
                3'd0: data_input_change <=  32'h0001_0030;
                3'd1: data_input_change <=  32'h0002_0030;
                3'd2: data_input_change <=  32'h0000_0010;
                3'd3: data_input_change <=  32'h0000_0010;
                3'd4: data_input_change <=  32'h0000_0010;
                3'd5: data_input_change <=  32'h0000_0011;
                3'd6: data_input_change <=  32'h0000_0010;
                3'd7: data_input_change <=  32'h0000_0010;
                default: data_input_change <=  32'h0;
               endcase    

               //data_input_change <=  data_input_change + 32'h0001_0000;
        end 
    end

  //address to one hot
    always @(*) begin
        if (Transfer_Done) begin
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
        else if(Transfer_Done)begin
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


    // always @(posedge clk or negedge rst_n) begin
    //     if (!rst_n) begin
    //         counter <= 1'b0;    
    //     end 
    //     else begin
    //         if ((counter == 1'b1) && (!Transfer_Done)) begin
    //             counter <= counter;        
    //         end
    //         else if (change_based_address)  begin
    //             counter <=  1'b0;
    //         end
    //         else if (reg_ram_rd_data == data_input_change) begin
    //             counter <= counter + 1'b1;
    //         end
    //         // else 
    //         //     counter <=  counter + 1'b1;
    //     end
    //end

// Watershed version
    // always @(posedge clk or negedge rst_n) begin
    //     if(!rst_n) begin
    //         ram_addr <= START_ADDR;
    //     end
    //     else begin
    //         if (change_based_address)  begin
    //             ram_addr    <= ram_addr +   32'h0000_0004;
    //         end
    //         else
    //             ram_addr    <= ram_addr;
    //     end
    // end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            ram_addr <= START_ADDR;
        end
        else if(Transfer_Done) begin
                ram_addr    <= ram_addr +  OFFSET_CONST;//32'h0000_0010;
        end
    end


endmodule
