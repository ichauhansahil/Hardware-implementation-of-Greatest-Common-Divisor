module gcd_calculator(
    input  clk,reset,
    input  [31:0] x,
    input  [31:0] y,
    output reg [31:0] gcd);
    

reg [31:0]a;
reg [31:0]b;
reg [31:0]w1=0;
reg [31:0]w2=0;
reg [31:0]rem=0;
reg [31:0]quo=0;


// Maximum Value 
always @(posedge clk)
begin
      if (x>y) 
            begin
            w1<=y;
            w2<=x;
            end 
      else 
            begin 
            w1<=x;
            w2<=y;
            end
 end


// Division and reminder
always @(posedge w1 & w2 )
begin
      if (reset==1)
      begin
           quo <= 0;
           rem <=0;
      end     
      
      else 
          begin
           quo <= w1/w2;              
           rem <= w1%w2;
          end       
end

//Shifting and Reminder is equal to zero

always @(posedge quo & rem )
begin
      if (rem == 0)
      begin
           gcd <= quo;
      end 
      
      else
           begin
           w2<=rem;
           w1<=w2;
           end 
end
       
endmodule
