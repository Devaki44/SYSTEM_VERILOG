// module test;
// initial begin
// fork begin
//   $display($time, "Process-1");
//   #5 $display($time, "Process-2");
// end

// begin
//   #10 $display($time, "Process-3");
//   #20 $display($time, "Process-4");
// end
// join_any

// $display($time, "Process-5");  //parent process wait for one simulation time and execute in the next simulation time
// end
// endmodule



// class packet;
//   rand bit [3:0] addr;   // 4-bit random variable
// endclass

// class packet2 extends packet;
//   constraint addr_range { addr < 5; }   // addr must be 0–4
// endclass

// module const_inhe;
//   initial begin
//     packet pkt1;
//     packet2 pkt2;

//     pkt1 = new();
//     pkt2 = new();

//     repeat(2) begin
//       pkt1.randomize();
//       $display("\tpkt2 :: addr=%0d", pkt2.addr);
//     end
//   end
// endmodule




// class base;
//   static int i;   // static variable (shared by all objects)

//   static function static get();
//     int a;        // local automatic variable (new every call)
//     a++;          // increments local variable
//     i++;          // increments shared static variable
//     $display(a);
//     $display(i);
//   endfunction
// endclass

// base b1_h, b2_h;

// module test();
//   initial begin
//     b1_h.get();   // call 1
//     b1_h.get();   // call 2
//     b2_h.get();   // call 3
//   end
// endmodule



// module tb;		//packed datatype should be bit,reg,logic
//   bit [2:0] devaki;
//   initial begin
//     devaki=5;
//     $display("scorce of devaki =[%0d]",devaki);
//   end
// endmodule


module test;

  class abc;

    function void display(input int a, input int b, input int c = 6);//last argument should be default  or  pass by value
      $display("value of a = %0d, b = %0d c = %0d", a, b, c);
    endfunction

  endclass

  initial begin
    abc obj;        
    obj = new();    
    obj.display(4,3);
  end

endmodule

