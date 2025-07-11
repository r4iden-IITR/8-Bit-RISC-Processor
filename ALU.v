module ALU (
  input [7:0] a, b,
  input [2:0] ctrl,       
  output reg [7:0] result
);

  always @(*) 
    begin
    case (ctrl)
      3'b000: result = a + b;      // ADD
      3'b001: result = a - b;      // SUB
      3'b010: result = a & b;      // AND
      3'b011: result = a | b;      // OR
      3'b100: result = a ^ b;      // XOR
      3'b101: result = ~(a | b);   // NOR
      default: result = 8'h00;
    endcase
  	end
endmodule
