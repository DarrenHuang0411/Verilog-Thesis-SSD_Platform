module MT_info_buffer (
    input                  clk,
    input                  rst,
    input                  WE,
    input                  RE,
    input   [31:0]         MT_info_in,
    output  [31:0]         MT_info_out,
    output  [2:0]          state_check
);
    reg [4:0] MT_info_buffer [31:0];

    always @(posedge clk or rst) begin
		if (m01_axi_aresetn) begin
			for ( i = 0 ; i < 5;  i = i+1 ) begin
				MT_info_buffer[i]	<=	32'd0;
			end
		end 
		else (WE && !state_check)begin
			for ( i = 1 ; i < 5;  i = i+1 ) begin
				MT_info_buffer[i]	<=	MT_info_buffer[i-1];
			end            
		end
	end
endmodule