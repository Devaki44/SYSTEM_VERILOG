❖ Write a constraint to ensure that two queues contain different elements.

//CODE
class packet;
  rand int q1[$];
  rand int q2[$];
  rand bit out;
  
  constraint size1_c { q1.size() == 6; } 
  constraint q1_c{foreach(q1[i])	q1[i] inside {[0:10]};}
  
  constraint size2_c { q2.size() == 6; } 
  constraint q2_c{foreach(q2[i])	q2[i] inside {[0:10]};}
  
  constraint unique_c{foreach(q1[i])
   					  if(q1[i] == q2[i])		out == 1;
                      else                    	out == 0;}
endclass

module test;
  packet pkt;
  initial begin
    pkt = new();
    
    repeat(5)begin
  	  void'(pkt.randomize());
      $display(" q1 = %p ",pkt.q1);
      $display(" q2 = %p ",pkt.q2);
      $display(" out = %0d ",pkt.out);
      $display("-------------------------------");
    end
    
  end
endmodule



//OUTPUT
xcelium> run
 q1 = '{7, 0, 3, 9, 2, 7} 
 q2 = '{3, 5, 9, 2, 7, 1} 
 out = 0 
-------------------------------
 q1 = '{0, 5, 8, 8, 1, 2} 
 q2 = '{0, 5, 8, 8, 1, 2} 
 out = 1 
-------------------------------
 q1 = '{8, 3, 8, 0, 3, 3} 
 q2 = '{8, 3, 8, 0, 3, 3} 
 out = 1 
-------------------------------
 q1 = '{5, 8, 6, 0, 7, 9} 
 q2 = '{8, 4, 8, 4, 9, 7} 
 out = 0 
-------------------------------
 q1 = '{7, 7, 3, 3, 10, 5} 
 q2 = '{4, 1, 6, 0, 3, 8} 
 out = 0 
-------------------------------
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
