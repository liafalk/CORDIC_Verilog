module CORDIC_iteration( clk, theta, cos, sin );

input wire clk;
input wire [31:0] theta;

output reg [31:0] cos; //x
output reg [31:0] sin; //y

reg [31:0] x = 1; // 1/K
reg [31:0] y = 0;

genvar i;
localparam numiterations = 30;

// ANGLES
wire signed [31:0] angles [1:30];
assign angles[01] = 32'b00100101110010000000101000111011; //633866811
assign angles[02] = 32'b00010011111101100111000010110111; //334917815
assign angles[03] = 32'b00001010001000100010001110101000; //170009512
assign angles[04] = 32'b00000101000101100001101010000110; //85334662
assign angles[05] = 32'b00000010100010111010111111000011; //42708931
assign angles[06] = 32'b00000001010001011110110000111101; //21359677
assign angles[07] = 32'b00000000101000101111100010101010; //10680490
assign angles[08] = 32'b00000000010100010111110010100111; //5340327
assign angles[09] = 32'b00000000001010001011111001011101; //2670173
assign angles[10] = 32'b00000000000101000101111100110000; //1335088
assign angles[11] = 32'b00000000000010100010111110011000; //667544
assign angles[12] = 32'b00000000000001010001011111001100; //333772
assign angles[13] = 32'b00000000000000101000101111100110; //166886
assign angles[14] = 32'b00000000000000010100010111110011; //83443
assign angles[15] = 32'b00000000000000001010001011111010; //41722
assign angles[16] = 32'b00000000000000000101000101111101; //20861
assign angles[17] = 32'b00000000000000000010100010111110; //10430
assign angles[18] = 32'b00000000000000000001010001011111; //5215
assign angles[19] = 32'b00000000000000000000101000110000; //2608
assign angles[20] = 32'b00000000000000000000010100011000; //1304
assign angles[21] = 32'b00000000000000000000001010001100; //652
assign angles[22] = 32'b00000000000000000000000101000110; //326
assign angles[23] = 32'b00000000000000000000000010100011; //163
assign angles[24] = 32'b00000000000000000000000001010001; //81
assign angles[25] = 32'b00000000000000000000000000101001; //41
assign angles[26] = 32'b00000000000000000000000000010100; //20
assign angles[27] = 32'b00000000000000000000000000001010; //10
assign angles[28] = 32'b00000000000000000000000000000101; //5
assign angles[29] = 32'b00000000000000000000000000000011; //3
assign angles[30] = 32'b00000000000000000000000000000001; //1
assign angles[31] = 32'b00000000000000000000000000000001; //1

// X Y Z modules
reg signed [31:0] X 	[0:numiterations-1];
reg signed [31:0] Y 	[0:numiterations-1];
reg signed [31:0] TH 	[0:numiterations-1];

for (i=0; i<numiterations; i=i+1) 
begin
	if (TH > 0)	begin
		TH = TH - at
	end
	else begin
	
	end
		
end


generate
  for (i=0; i < (STG-1); i=i+1)
  begin: XYZ
    wire Z_sign;
    wire signed [WXY-1:0] X_shr, Y_shr; 

    assign X_shr = X[i] >>> i; // signed shift right
    assign Y_shr = Y[i] >>> i;

    //the sign of the current rotation angle
    assign Z_sign = Z[i][31]; // Z_sign = 1 if Z[i] < 0

    always @(posedge clock)
    begin
      // add/subtract shifted data
      X[i+1] <= Z_sign ? X[i] + Y_shr         : X[i] - Y_shr;
      Y[i+1] <= Z_sign ? Y[i] - X_shr         : Y[i] + X_shr;
      Z[i+1] <= Z_sign ? Z[i] + atan_table[i] : Z[i] - atan_table[i];
    end
  end
endgenerate

endmodule