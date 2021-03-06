module EXMEM (
    clk_i,
    start_i,
    //in
    RegWrite_i,
    MemtoReg_i,
    MemRead_i,
    MemWrite_i,
    ALUresult_i,
    RS2data_i,
    RDaddr_i,
    //out
    RegWrite_o,
    MemtoReg_o,
    MemRead_o,
    MemWrite_o,
    ALUresult_o,
    RS2data_o,
    RDaddr_o
);

input clk_i, start_i;
input RegWrite_i, MemtoReg_i, MemRead_i, MemWrite_i;
input [31:0] ALUresult_i, RS2data_i;
input [4:0] RDaddr_i;

output RegWrite_o, MemtoReg_o, MemRead_o, MemWrite_o;
output [31:0] ALUresult_o, RS2data_o;
output [4:0] RDaddr_o;

reg RegWrite_o, MemtoReg_o, MemRead_o, MemWrite_o;
reg signed [31:0] ALUresult_o, RS2data_o;
reg RDaddr_o;

always @(posedge clk_i) begin
    if (start_i) begin
        RegWrite_o <= RegWrite_i;
        MemtoReg_o <= MemtoReg_i;
        MemRead_o <= MemRead_i;
        MemWrite_o <= MemWrite_i;
        ALUresult_o <= ALUresult_i;
        RS2data_o <= RS2data_i;
        RDaddr_o <= RDaddr_i;
    end
    else begin
        RegWrite_o <= RegWrite_o;
        MemtoReg_o <= MemtoReg_o;
        MemRead_o <= MemRead_o;
        MemWrite_o <= MemWrite_o;
        ALUresult_o <= ALUresult_o;
        RS2data_o <= RS2data_o;
        RDaddr_o <= RDaddr_o;
    end
end
endmodule