
//CODE
// class packet;
//   rand byte data;
//   randc byte addr;
  
//   //pre_randomize()
//   function void pre_randomize();
//     $display("Inside pre_randomize");
//     $display(" data=%0d , addr=%0d ",data,addr);
    
//   endfunction
  
//   //post_randomize
//   function void post_randomize();
//         $display(" data=%0d , addr=%0d ",data,addr);

//     $display("Inside post_randomize");
// //     $display(" data=%0d , addr=%0d ",data,addr);
//   endfunction
// endclass

// module test;
//   packet pkt;
//   initial begin
//     pkt = new();
// 	pkt.randomize();
//   end
// endmodule



// class packet;
//   rand int data;
//   rand bit temp;
  
//   function void pre_randomize();
//     if(temp)    data.rand_mode(1);
//   	else		data.rand_mode(0);
//     $display(" temp = %0b ",temp);
//   endfunction
  
//   function void post_randomize();
//     $display(" temp = %0b ,data = %0d ",temp,data);
//   endfunction
// endclass

// module test;
//   packet p1;
//   initial begin
//     p1 = new();
    
//     repeat(6)begin
//     	if(p1.randomize())
//       		$display("randomized");
//     	else
//       		$display(" not randommized");
//     end
//   end
// endmodule

// class packet;
//   rand bit [3:0]data;
//   rand bit [3:0]addr;
  
// endclass
// module tst;
//   packet p1;
  
//   initial begin
//     p1 = new();
    
//     p1.addr.rand_mode(0);
    
//     begin
//     if(p1.randomize())	$display("randomized");
//     else				$display("not randomized");
//     end
//     $display(" data =%0d ,addr  = %0d ",p1.data,p1.addr);
//   end
// endmodule



// module tst;
//   int data;
  
//   initial begin
//     void'(std::randomize(data));
//     $display(" data = %0d  ",data);
//   end
// endmodule


// class packet;
//   rand int data[10];
  
//   constraint data_c{foreach(data[i]){
//     					foreach(data[j]){
//                           if(i<j)   data[i] != data[j];}}}
// endclass
    
// module tset;
//   packet p;
//   initial begin
//     p = new();
//     void'(p.randomize());
//     begin
//       foreach(p.data[i])	$display(" data[%0d] = %0d ",i,p.data[i]);
//     end
//   end
// endmodule
    


// class packet;
//   rand bit [7:0]data;
  
//   constraint data_c{foreach(data[i])	if(i%2)		data[i] == 0;
//                     					else		data[i] == 1;}
// endclass

// module test;
//   packet p;
  
//   initial begin
//     p = new();
//     void'(p.randomize());
//     $display(" data = %b ",p.data);
//   end
// endmodule


// class packet;
//   rand int data[10];
  
//   constraint data_c{foreach(data[i])	if(i%2)		data[i] == (i+1)/2;
//                     					else		data[i] == 0;}
// endclass

// module test;
//   packet p;
  
//   initial begin
//     p = new();
//     void'(p.randomize());
//     $display(" data = %0p ",p.data);
//   end
// endmodule



// class packet;
//   rand bit [2:0]data[10];
  
//   constraint data_c{ foreach(data[i])    data[i] inside {[0:7]};}
//   constraint sort_c{ foreach(data[i])    if(i<9)	data[i] <= data[i+1];}
// endclass

// module tset;
//   packet p;
  
//   initial begin
//     p = new();
//     void'(p.randomize());
//     $display(" data =%0p ",p.data);
//   end
  
// endmodule


// class packet;
//   rand bit [15:0]data;
  
//   constraint data_c{ data[0]  inside {0,1};
//                     foreach(data[i])
//                       if(i>0){
//                         if(data[i] == 1)	data[i+1] == 0;
// //                         else				data[i+1] = 1;
//                       }}
                    
                    
// endclass
// module test;
//   packet p;
//   initial begin
//     p = new();
//     void'(p.randomize());
//     $display(" data = %b ",p.data);
//   end
// endmodule
                    



// class packet;
//   rand int f[10];
  
//   constraint data_c{ f[0] == 0;
//                      f[1] == 1;
//                     foreach(f[i]){
//                       if(i>=2) 		f[i] == (f[i-1] + f[i-2]);}}
                    
                    
// endclass
// module test;
//   packet p;
//   initial begin
//     p = new();
//     void'(p.randomize());
//     foreach(p.f[i])
//       $display(" f[%0d] = %0d ",i,p.f[i]);
//   end
// endmodule

  

// class packet;
//   rand bit[2:0] data[1:0][2:0];
  
//   constraint data_c{foreach(data[i,j]) data[i][j] inside {[0:7]};}
//   constraint unique_c{foreach(data[i1,j1]){
//     					foreach(data[i2,j2]){
//       						if((i1 != i2) || (j1 != j2))		data[i1][j1] != data[i2][j2] ;}}}
// endclass
// module test;
//   packet p;
//   initial begin
//     p = new();
//     void'(p.randomize());
    
//     foreach(p.data[i,j])	$display(" data[%0d][%0d] = %0d ",i,j,p.data[i][j]);
//   end
// endmodule



// class packet ;
//   rand bit[31:0] data;
//   rand bit[4:0] k;

//   constraint power_of_two {k inside {[0:31]};        
//                          data == (1 << k);}
// endclass

// module test;
//   packet pkt;
//   initial begin
//     pkt = new();
    
//     repeat(32)begin
//       pkt.randomize();
//       $display(" data = %b ",pkt.data);
//     end
//   end
// endmodule



// class packet;
//   rand bit[2:0]data;
//   rand bit even;
  
//   constraint data_c{ if(even)  data%2 == 0 ;
//                      else	   data%2 != 0 ;}
// endclass

// module test;
//   initial begin
//     packet pkt = new();
    
//     repeat(10)begin
//       pkt.randomize();
//       $display(" even=%0d ,data =%0d ",pkt.even,pkt.data);
//     end
//   end
// endmodule

// class packet;
//   rand int data;
  
//   constraint data_c{!(data inside {[9:23]});}
// endclass
// module test;
//   packet p;
  
//   initial begin
//     p = new();
    
//     repeat(5)begin
//     	void'(p.randomize());
//       $display(" data = %0d ",p.data);
//     end
//   end
// endmodule


// class packet;
//   rand int data;
  
//   constraint data_c{data dist {2:/5 , [10:12] :/ 8};}
// endclass
// module test;
//   packet p;
  
//   initial begin
//     p = new();
    
//     repeat(5)begin
//     	void'(p.randomize());
//       $display(" data = %0d ",p.data);
//     end
//   end
// endmodule



// class packet;
//   rand int data[10];
  
//   constraint data_c{foreach(data[i])		{data[i] inside {1,2,3,4,8};}}
// endclass
// module test;
//   packet p;
  
//   initial begin
//     p = new();
    
//     repeat(5)begin
//       void'(p.randomize());
//       $display(" data = %p ",p.data);
//     end
//   end
// endmodule



// class packet;
//   rand int data[10];
  
//   constraint data_c{unique {data};}
// endclass
// module test;
//   packet p;
  
//   initial begin
//     p = new();
    
//     repeat(5)begin
//       void'(p.randomize());
//       $display(" data = %p ",p.data);
//     end
//   end
// endmodule




// class packet;
//   rand int data[10];
  
//   constraint data_c{unique {data};}
// endclass
// module test;
//   packet p;
  
//   initial begin
//     p = new();
    
//     repeat(5)begin
//       void'(p.randomize());
//       $display(" data = %p ",p.data);
//     end
//   end
// endmodule



// class packet;
//   rand bit [3:0] data[10];
  
//   static constraint data_c{unique {data};}
// endclass
// module test;
//   packet p1,p2;
  
//   initial begin
//     p1 = new();
//     p2 = new();
    
//     p1.constraint_mode(0);
//     void'(p1.randomize());
//     $display(" p1.data = %p ",p1.data);
    
//     void'(p2.randomize());
//     $display("p2. data = %p ",p2.data);
    
//   end
// endmodule





// class packet;
//   rand int data[10];
  
//   constraint data_c{unique {data};}
// endclass
// module test;
//   packet p;
  
//   initial begin
//     p = new();
// //     p.rand_mode(0);
//     repeat(5)begin
//       void'(p.randomize());
//       $display(" data = %p ",p.data);
//     end
//   end
// endmodule





// class packet;
//   rand bit[3:0] data[10];
//   rand bit temp;
  
//   constraint data_c{(temp) -> unique {data};}
// endclass
// module test;
//   packet p;
  
//   initial begin
//     p = new();
//     repeat(5)begin
//       void'(p.randomize());
//       $display(" temp = %0b ,data = %p ",p.temp,p.data);
//     end
//   end
// endmodule



// class packet;
//   rand bit[3:0] data;
//   rand bit temp;
  
//   constraint data_c{if(temp)   data < 10;
//                     else       data > 10;}
// endclass
// module test;
//   packet p;
  
//   initial begin
//     p = new();
//     repeat(5)begin
//       void'(p.randomize());
//       $display(" temp = %0b ,data = %p ",p.temp,p.data);
//     end
//   end
// endmodule




// class packet;
//   rand bit[3:0] data;
  
//   constraint data_c{ data > 2; data < 30;}
  
// endclass
// module test;
//   packet p;
  
//   initial begin
//     p = new();
// //     p.rand_mode(0);
//     repeat(5)begin
//       void'(p.randomize() with {data == 9;});
//       $display(" data = %d ",p.data);
//     end
//   end
// endmodule




// class packet;
//   rand bit[5:0] data;
  
//   constraint data_c{ data > 2; data < 30;}
//   constraint data_c1{data >21;}
// endclass
// module test;
//   packet p;
  
//   initial begin
//     p = new();
// //     p.rand_mode(0);
//     repeat(5)begin
//       void'(p.randomize());
//       $display(" data = %0d ",p.data);
//     end
//   end
// endmodule




