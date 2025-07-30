//CODE
// Code your design here
class packet;
  randc bit[3:0] data;
  rand bit temp;
  
  //pre_randomize()
  function void pre_randomize();
    if(temp) data.rand_mode(1);  //enable
    else 	 data.rand_mode(0);  //disable
    $display("Inside pre_randomize");
    $display(" temp=%0d ",temp);
    
  endfunction
  
  //post_randomize
  function void post_randomize();
    $display("Inside post_randomize");
    $display(" data=%0d , temp=%0d ",data,temp);
    $display("-------------------------");
  endfunction
endclass

module test;
  packet pkt;
  initial begin
    pkt = new();
    
    repeat(5)begin
      pkt.randomize();
    end
  end
endmodule



//OUTPUT


Inside pre_randomize
 temp=0 
Inside post_randomize
 data=0 , temp=1 
-------------------------
Inside pre_randomize
 temp=1 
Inside post_randomize
 data=6 , temp=0 
-------------------------
Inside pre_randomize
 temp=0 
Inside post_randomize
 data=6 , temp=0 
-------------------------
Inside pre_randomize
 temp=0 
Inside post_randomize
 data=6 , temp=1 
-------------------------
Inside pre_randomize
 temp=1 
Inside post_randomize
 data=12 , temp=0 
-------------------------
           V C S   S i m u l a t i o n   R e p o r t 
