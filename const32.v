module div4(
	output wire	[31:0] result
);

assign result = {data[31], data[30:23] - 2, data[22:0]};

endmodule
