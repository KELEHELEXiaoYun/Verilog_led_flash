module Led_flash(
    Clk,
    Reset_n,
    Led
);

    input Clk;
    input Reset_n;
    output reg Led;
    
    reg [24:0]counter;
    //<=非阻塞赋值的意思
    
        /*always@(posedge Clk or negedge Reset_n)
    if(!Reset_n)begin
        counter <= 0;
        Led <= 0;
    end
    else if(counter == 25000000)begin 
        Led <= !Led;
        counter <= 0;
     end
    else 
        counter <=counter + 1'd1;*/
        
    always@(posedge Clk or negedge Reset_n)
    if(!Reset_n)
        counter <= 0;
    else if(counter == 24999999)
        counter <= 0;
    else 
        counter <=counter + 1'd1;
        
    always@(posedge Clk or negedge Reset_n)
    if(!Reset_n)
        Led <= 0;
    else if(counter == 24999999)
        Led <= !Led;
        
endmodule