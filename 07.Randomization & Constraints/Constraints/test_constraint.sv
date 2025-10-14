// class packet;
//   rand bit [5:0]data;
  
//   constraint data_c{ !(data inside {10,20,30,40});}
// endclass

// module test;
//   packet p1;
//   initial begin
//     p1 = new();
    
//     repeat(41)begin
//     	void'(p1.randomize());
//     	$display( "data = %0d ",p1.data);
//     end
//   end
// endmodule




// class packet;
//   rand bit[64:0]data;
  
//   constraint data_a{ foreach(data[i]){if(i>= 0 && i<33)	data[i] == 1;
//                                       else        		data[i] == 0;}}
// endclass

// module tst;
//   packet p1;
  
//   initial begin
//     p1 = new();
    
//     void'(p1.randomize());
//     $display(" data = %b ",p1.data);
//   end
// endmodule
    
  

// class packet;
//   rand bit[7:0]data;
  
//   constraint data_a{ data dist { [0:100] := 80, [101:255] := 20 };} 
// endclass

// module tst;
//   packet p1;
  
//   initial begin
//     p1 = new();
    
//     repeat(20)begin
//     	void'(p1.randomize());
//     	$display(" data = %d ",p1.data);
//     end
//   end
// endmodule
  
  



// class packet;
//   randc bit[2:0]arr[10];
  
//   constraint arr_c{foreach(arr[i]){ arr[i] inside {[1:5]};}}
// endclass
      
      
// module test;
//   packet p1;
  
//   initial begin
//     p1 = new();
    
//     void'(p1.randomize());
//     foreach(p1.arr[i])begin
//       $display(" arr[%0d] = %0d ",i,p1.arr[i]);
//   	end
    
//   end
// endmodule




// class Randclass;
//   rand bit[7:0]var1;
//   randc bit[7:0]var2;
  
//   constraint var1_c{ var1 < 50 ;}
// endclass

// module test;
//   Randclass r1;
//   initial begin
//     r1 = new();
    
//     repeat(10)begin
//     	void'(r1.randomize() with {r1.var1 == 40;});
//     	$display(" var1 = %0d , var2 = %0d ", r1.var1,r1.var2);
//     end
//   end
// endmodule
    
  


// module semaphores;
//   semaphore sem = new(6);

//   initial begin
//     sem.get(3);
    
//     $display("%t A started ",$time);
//     #10;
//     $display("%t A completed ",$time);
    
//     sem.put(4);
//   end
  
//   initial begin
   
//     sem.get(4);
//     #5;
//     sem.get(3);
//     #5;
//     $display("%t B started ",$time);
//     #10;
//     $display("%t B completed ",$time);
    
//     sem.put(4);
//   end
// endmodule





// class packet;
//   bit[15:0]data = 16'hfaff;
//   static bit[3:0]count = 0;
  
//   constraint data_c{count == $countones(data) ;}
 
// endclass
  
// module test;
//   packet p1;
  
//   initial begin
//     p1 = new();

//     void'(p1.randomize());
//     $display(" data = %b , count = %0d  ",p1.data,p1.count);
//   end
// endmodule
  
  














  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
