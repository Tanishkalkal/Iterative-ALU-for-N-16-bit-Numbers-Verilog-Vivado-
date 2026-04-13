`timescale 1ns / 1ps

module alu_verilog (
    input  [95:0] A,        
    input  [2:0]  sel_op,
    output reg [31:0] out
);

    integer t, z;

    reg [15:0] a_mem [0:5];
    reg [31:0] temp;

    always @(*) begin
        
        a_mem[0] = A[15:0];
        a_mem[1] = A[31:16];
        a_mem[2] = A[47:32];
        a_mem[3] = A[63:48];
        a_mem[4] = A[79:64];
        a_mem[5] = A[95:80];

        temp = 0;
        out  = 0;

        case (sel_op)

            
            3'b000: begin
                temp = 0;
                for (t = 0; t < 6; t = t + 1)
                    temp = temp + a_mem[t];
                out = temp;
            end

           
            3'b001: begin
                temp = a_mem[0];
                for (t = 1; t < 6; t = t + 1)
                    temp = temp - a_mem[t];
                out = temp;
            end

           
            3'b010: begin
                temp = a_mem[0];
                for (t = 1; t < 6; t = t + 1)
                    temp = temp * a_mem[t];
                out = temp;
            end

           
            3'b011: begin
                temp = a_mem[0];
                for (t = 1; t < 6; t = t + 1) begin
                    if (a_mem[t] != 0)
                        temp = temp / a_mem[t];
                    else
                        temp = 0;
                end
                out = temp;
            end

            
            3'b100: begin
                out = 0;
                for (z = 0; z <= 255; z = z + 1) begin
                    if (z*z <= a_mem[0])
                        out = z;
                end
            end

            default: begin
                out = 0;
            end

        endcase
    end

endmodule
