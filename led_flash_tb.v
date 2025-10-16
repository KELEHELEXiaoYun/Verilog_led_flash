`timescale 1ns /1ns

module Led_flash_tb;

    reg Clk;
    reg Reset_n;
    wire Led;
    
    Led_flash Led_flash (
        .Clk(Clk),
        .Reset_n(Reset_n),
        .Led(Led)
    );
    
   initial Clk = 1;
   always #10 Clk = !Clk;
   
   initial begin
        Reset_n = 0;
        #201;
        Reset_n = 1;
        #2000000000;
        $stop;
    end
   
   
endmodule
