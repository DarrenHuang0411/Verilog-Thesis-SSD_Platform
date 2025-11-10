module CWBP_Decoder #(
    parameter integer C_DATA_WIDTH	= 32
    ) 
    (
    //addr
    input [C_DATA_WIDTH -1:0] mapping_pointer,
    //Channel Way Block Page 
    output wire [3:0]  Way,
    output wire [11:0] Block,
    output wire [15:0] Page,
    output wire [C_DATA_WIDTH -1:0] Row_address
    );

    assign Way      = mapping_pointer[0];
    assign Block    = mapping_pointer[15:4];
    assign Page     = mapping_pointer[31:16];
    assign Row_address = (Block << 8) + Page;
    //{12'd0, Block, 8'd0} + {16'd0 , Page};

endmodule