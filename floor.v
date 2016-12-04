module floorf(
	input wire [31:0] inputf,
	output reg	[31:0] result,
	input wire clk
);

reg [31:0] 	temp;
reg signed [7:0]	i;
reg signed [7:0]	i2;
always @ (posedge clk)
begin
	i = (150 - inputf[30:23]);
	
	if (i < 0) begin
		i = 0;
	end
	else begin
		i = i;
	end
	
	temp[22:0] <= inputf[22:0] >> i;
	temp[31:23] <= inputf[31:23];
	i2 <= i;
	
	result[22:0] <= temp[22:0] << i2;
	result[31:23] <= temp[31:23];
end

endmodule
