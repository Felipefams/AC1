module dff (output reg q, input d, input rstn, input clk);   
    always @ (posedge clk)  
       if (!rstn)  
          q <= 0;  
       else  
          q <= d;  
endmodule 

module DFF(Q,Clk,CE,reset,D,set);
        
//list the inputs 
    input Clk;
    input CE;
     input reset;
     input D;
     input set;
//list the outputs 
    output Q;
//Internal variables
     reg Q;
     
    //flip flop state is affected only on postive edge of clock 
    always @(posedge(Clk))
    begin
        if(Clk == 1) 
        begin
            if (reset == 1) //check for active high reset
                Q = 0;  
            else if(set == 1)   //check for set
             Q = 1; 
         else if (CE == 1) //check if clock is enabled
                 Q = D;     
      end      
    end 
    
endmodule

module tff ( output q, output qnot,
input t, input clk,
input preset, input clear );
reg q, qnot;
always @( posedge clk )
begin
if ( ~clear )
begin
q <= 0;
 qnot <= 1;
end
else
if ( ~preset )
begin
q <= 1;
 qnot <= 0;
end
else
begin
if ( t )
begin
q <= ~q;
 qnot <= ~qnot;
end
end
end
endmodule // tff

module srff ( output q, output qnot,
input s, input r, input clk );
reg q, qnot;
always @( posedge clk )
begin
if ( s & ~r )
begin
 q <= 1;
 qnot <= 0; end
else
if ( ~s & r )
begin q <= 0;
 qnot <= 1; end
else
if ( s & r )
begin
q <= 0;
 qnot <= 0; // arbitrary
end
end
endmodule // srff

module jkff ( output q, output qnot,
input j, input k, input clk );
reg q, qnot;
always @( posedge clk )
begin
if ( j & ~k )
begin
 q <= 1;
 qnot <= 0;
 end
else
if ( ~j & k )
begin q <= 0;
 qnot <= 1;
 end
else
if ( j & k )
begin q <= ~q;
 qnot <= ~qnot; end
end
endmodule // jkff

