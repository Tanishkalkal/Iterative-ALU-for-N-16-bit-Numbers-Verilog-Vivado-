`timescale 1ns / 1ps
module alu_verilog_tb;
    reg  [95:0] A;
    reg  [2:0]  sel_op;
    wire [31:0] out;
    alu_verilog uut (
        .A(A),
        .sel_op(sel_op),
        .out(out)
    );
    initial begin
        A = {16'd1, 16'd4, 16'd3, 16'd2, 16'd5, 16'd10};
        sel_op = 3'b000;
        #10;
        $display("ADD  = %d", out);
        A = {16'd5, 16'd10, 16'd5, 16'd5, 16'd10, 16'd50};
        sel_op = 3'b001;
        #10;
        $display("SUB  = %d", out);
        A = {16'd1, 16'd1, 16'd1, 16'd2, 16'd3, 16'd2};
        sel_op = 3'b010;
        #10;
        $display("MUL  = %d", out);  
        A = {16'd1, 16'd1, 16'd1, 16'd5, 16'd2, 16'd100};
        sel_op = 3'b011;
        #10;
        $display("DIV  = %d", out);
        A = {16'd0, 16'd0, 16'd0, 16'd0, 16'd0, 16'd144};
        sel_op = 3'b100;
        #10;
        $display("SQRT = %d", out);
       #80 ;
    end
endmodule
