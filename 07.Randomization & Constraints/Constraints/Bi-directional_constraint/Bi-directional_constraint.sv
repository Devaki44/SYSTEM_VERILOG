//CODE
class packet;
  rand bit[3:0] a,b,c ;
  
  constraint name{ a == b+c ;
                   b <  8	;
                   c <  12  ;}
endclass

module test;
  packet pkt;
  initial begin
    pkt =  new();
    
    repeat(5)begin
      pkt.randomize();
      $display(" a=%0d , b=%0d ,c=%0d ",pkt.a,pkt.b,pkt.c);
    end
  end
endmodule


//OUTPUT
# KERNEL:  a=4 , b=4 ,c=0 
# KERNEL:  a=11 , b=6 ,c=5 
# KERNEL:  a=11 , b=6 ,c=5 
# KERNEL:  a=10 , b=5 ,c=5 
# KERNEL:  a=2 , b=7 ,c=11 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
