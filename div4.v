module div4(
	input wire	[31:0] data,
	input wire clk,
	output reg	[31:0] result
);

reg [7:0] temp = 0;

always @ (posedge clk)
begin
	if (data[30:23] != 0) 
	begin
		temp[7:0] = data[30:23] - 2;
	end
	result = {data[31], temp, data[22:0]};
end
endmodule
