module RegFile(
  input clk,
  input WriteReg,
  input[2:0] rs,
  input[2:0] rt,
  input[2:0] rd,
  input [7:0] data,
  output [7:0] read1,
  output [7:0] read2
);
  reg[7:0] regfile[7:0];
  assign read1=regfile[rs],
    read2=regfile[rt];
  
  always@( posedge clk) begin
    if(WriteReg && rd!=3'b0)
      regfile[rd]<=data;
    regfile[0]<=8'b0;
  end
endmodule
  
