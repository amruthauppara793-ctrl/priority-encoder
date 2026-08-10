`timescale 1ns/1ps

module priority_encoder_tb;

    reg  [3:0] D;
    wire [1:0] Y;
    wire       V;

    priority_encoder uut (
        .D(D),
        .Y(Y),
        .V(V)
    );

    initial begin
        $monitor("Time=%0t | D=%b | Y=%b | Valid=%b",
                  $time, D, Y, V);

        D = 4'b0000; #10;
        D = 4'b0001; #10;
        D = 4'b0010; #10;
        D = 4'b0100; #10;
        D = 4'b1000; #10;
        D = 4'b1010; #10;
        D = 4'b0111; #10;
        D = 4'b1111; #10;

        $finish;
    end

endmodule