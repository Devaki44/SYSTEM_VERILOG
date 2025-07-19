class packet;
  bit [7:0]add;
  bit [7:0]data;
  
  function void packet();
     add = 8'hfa;
     data =8'hac;
    
     $display(" IN : add = %0h , data = %0h ",add,data);
  
  endfunction
endclass
module test;
 initial begin
  packet pkt1,pkt2;
   pkt1 = new() ;		//object for pkt1
   pkt2 = new pkt1;
   
  pkt1.packet();
   
   pkt2.add = 8'h11;
   pkt2.data =8'h13;
    
  $display(" OUT : add = %0h , data = %0h ",pkt1.add,pkt1.data);

 end
endmodule
  

//OUTPUT
# KERNEL:  IN : add = fa , data = ac 
# KERNEL:  OUT : add = fa , data = ac 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
