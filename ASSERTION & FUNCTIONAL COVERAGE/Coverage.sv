// module tst;

//   bit a;
//   bit b;

//   covergroup cgrp;
//     coverpoint a;
//     coverpoint b;
//   endgroup

//   cgrp cp = new();

//   initial begin
//     repeat(5)begin
//     a = $random;
//     b = $random;
//     cp.sample();
//     $display("a = %0d, b = %0d, instance coverage = %.2f%%", a, b, cp.get_inst_coverage());
//     end
//   end

//   initial begin
//     $display("Overall coverage = %.2f%%", cp.get_coverage());
//   end

// endmodule


// ///////coverage inside module with class////////

// class packet;
//   rand bit [2:0] a;
//   rand bit [2:0] b;
  
// endclass

// module tb;
//   packet p = new();
  
//   covergroup cgrp(ref bit[2:0]a,ref bit[2:0]b);
//     coverpoint a;
//     coverpoint b;
//   endgroup
  
//   cgrp cg = new(p.a,p.b);
  
//   initial begin
//     repeat(20)begin
//    	 void'(p.randomize());
//      cg.sample();
//      $display(" a=%d ,b=%d ,coverage %%= %.2f%% ",p.a,p.b,cg.get_inst_coverage());
//     end
//   end
//   initial begin
//   $display(" overall_coverage = %.2f%%",cg.get_coverage());
//   end
// endmodule
    
    

///////////////////covergroup inside class/////////////////////

// class packet;
//   rand bit [2:0] a;
//   rand bit [2:0] b;
  
//   covergroup cgrp;
//     coverpoint a;
//     coverpoint b;
//   endgroup
   
//   function new();
//       cgrp = new();
//   endfunction
      
      
// endclass
      
// module tb;
//   packet p = new() ;
  
//   initial begin
//     void'(p.randomize());
//     p.cgrp.sample();
    
//     $display(" a=%d ,b=%d ,covergroup = %.2f%% ",p.a,p.b,p.cgrp.get_inst_coverage());
//   end
// endmodule
  
  
      
////////////////////covergroup outside class _module///////////

// class cover_group;
//   rand bit[2:0]a ;
//   rand bit[2:0]b ;
  
// endclass

// cover_group c = new();

// covergroup cgrp;
//   coverpoint c.a;
//   coverpoint c.b;
// endgroup

// module tb;
//   cgrp cg = new();
  
//   initial begin
//     repeat(10)begin
//     void'(c.randomize());
//     cg.sample();
    
//     $display(" a=%b ,b=%d ,coverage =%.2f%% ",c.a,c.b,cg.get_inst_coverage());
//     end
//   end
// endmodule
      


//////////////////TRiggering over group////////////////////////
 

// class packet;
//   rand bit[2:0]a;
//   rand bit[2:0]b;
// endclass


// module tb;
//   bit clk ;
//   packet p = new();
  
//   initial begin
//  	 clk =0;
//   	 forever #5 clk = ~clk ;
//   end
  
//   covergroup cgrp@(posedge clk);
//     coverpoint p.a;
//     coverpoint p.b;
//   endgroup
  
//   initial begin
//     cgrp cg = new();
    
//     repeat(5)begin
//         @(posedge clk)
//     	void'(p.randomize());
//     	cg.sample();
//       $display("time =%0t,clk=%b, a=%d ,b=%d ,coverage = %.2f%% ",$time,clk,p.a,p.b,cg.get_inst_coverage());
//     end
//   end
//   initial begin
//     #200;
//     $finish;
//   end
  
// endmodule
    
///////////////////////////////////////////@trigger//////////////////////////  

// class packet;
//   rand bit[2:0]a;
//   rand bit[2:0]b;
// endclass


// module tb;
//   bit clk ;
//   event e;
//   packet p = new();
  
//   covergroup cgrp@(e);
//     coverpoint p.a;
//     coverpoint p.b;
//   endgroup
  
//   initial begin
//     cgrp cg = new();
    
//     repeat(5)begin
//         ->e;
//     	void'(p.randomize());
//     	cg.sample();
//       $display("time =%0t,clk=%b, a=%d ,b=%d ,coverage = %.2f%% ",$time,clk,p.a,p.b,cg.get_inst_coverage());
//     end
//   end
//   initial begin
//     #200;
//     $finish;
//   end
  
// endmodule
    
  
 
      
      
      
      
