/* 3.10 constraint */


// 1. constraint data_c{ data inside {[1:10]};}	//inside constraint
// 2. constraint data_c{ (data%2)  ->  (out == 1);}	//implication constraint
// 3. constraint  data_c{foreach(data[i]){
//   							data[i] inside {[2:20]};}}	//foreach constraint
// 4. static constraint data_c{ data < 16 ;}	//staic constraint
// 5. //
//    constraint data_c{ data < 16 ;}
//    //
//   module ..
//     void'(pkt.randomize() with {data == 7 ;};
//           ..
//   endmodule									//inline constraint
          
// 6. //
//           constraint data_c{ soft data < 16 ;}
//    //
//   module ..
//     void'(pkt.randomize() with {data > 17 ;};
//           ..
//   endmodule									//soft constraint
// 7. constraint data_c{ unique {data};}		//unique constraint
          
// 8.  constraint data_c{ data == func();}    //function in constraint
          
// 9. constraint data_c{ value < 16 ; value >5;}
//           constraint data_c{ value >10;}		 //bidirectional constraint
          
// 10. constraint data_c{ (a==1) -> (b==0); solve a before b;}
          
        
////////////////////////////////////////////////////////////////////////////////////////////////////////////
/* 4. write the constraint range between 1000 to 2000 (it won't repeat the
value) */

// class packet;
//   randc int data;
  
//   constraint data_c{ data inside {[1000:2000]};}
// endclass

// module test;
//   packet p1;
//   initial begin
//     p1  = new();
    
//     repeat(10)begin
//    	 void'(p1.randomize());
//    	 $display(" data =%0d ",p1.data);
//     end
      
//   end
// endmodule


////////////////////////////////////////////////////////////////////////////////////////////////////////////
/* 5.Write a constraint to generate 18 zeros and no consecutive ones in a 32 bit
variable */

// class packet;
//   rand int data;
  
//   constraint data_c1{foreach(data[i]){ if (i == 5 || i == 10 || i == 13)	data[i] == 0;
//     								   else if(i%2)							data[i] == 1;
//                                        else     							data[i] == 0;}}
// endclass

// module test;
//   packet p1;
//   initial begin
//     p1  = new();
//    	void'(p1.randomize());
//     $display(" data =%b ",p1.data);
  
//   end
// endmodule

// /////////////////////////////////////////////////////////////////////////////////////////////////////////////

/*6.Write a code for without using rand keyword how we can randomize the
Variable. */
// class packet;
//    int data;
// endclass

// module test;
//   initial begin
//     int data;
//     void'(std::randomize(data));
//     $display(" data =%0d ",data);
      
//   end
// endmodule



/////////////////////////////////////////////////////////////////////////////////////////////////////////
/*7.Write a constraint for the 8-bit variable that provides distribution 80%
for range 0-100 and the remaining 20% for range 101-255. Declare a class "Generic" with
data properties var1, var2, var3, var4 */

// class packet;
//   randc int data;
  
//   constraint data_c{ data inside {[1000:2000]};}
// endclass

// module test;
//   packet p1;
//   initial begin
//     p1  = new();
    
//     repeat(10)begin
//    	 void'(p1.randomize());
//    	 $display(" data =%0d ",p1.data);
//     end
      
//   end
// endmodule


////////////////////////////////////////////////////////////////////////////////////////////////////////////
/* 12.
 	hard_constraint : hard_constraint is used to override the soft_constraint that is present in the class_ .
 					  No keyword to represent the hard_constraint.
 					  It is present in the module along with randomize function with "with" keyword.
     Soft_constraint : Soft_constraint is overriden by the hard constraint_ which is present in the module_.
 					  soft keyword is used to declare the soft_constraint.
                       It is present in the class.*/

// 			These constraints are used to rectify the conflict that occurs in the Inline_constraint.
                        
////////////////////////////////////////////////////////////////////////////////////////////////////////////

/* 11. What are the possible values of random variable data in the following code
 snippet .
 		class abc ;
 		rand bit [3:0] data;
 		constraint c1 { soft data >=4;
 		data <=12; }
 		endclass
 		module tb;
 		abc a;
 		initial begin
 		a =new ();
 		a.randomize() with { data ==3; } ;
 		$display("a.data = %0d",a.data);
 		end
 		endmodule */
                        

//    The output_ of the code is 3 because hard_constraint override the soft_constraint.

///////////////////////////////////////////////////////////////////////////////////////////////////////////

/* 10. Without using rand keyword how we can randomize the variable? */
                
//      2.  using system_task : $random,$urandom,$urandom_range()				
                        

////////////////////////////////////////////////////////////////////////////////////////////////////////////
/*8. Write a single constraint to generate a random value for bit [8:0] var1 in the
below range,1-34, 127, 129-156, 192-202,257-260. i. Randomize all
variables. ii. Randomize only var2. iii.Randomize var1, var4 iv.Randomize
var1,var3,var4   */                     
                    
// class packet;
//   rand bit [8:0]var1,var2,var3,var4;
  
//   constraint data_c{ var1 inside {[1:34], 127, [129:156], [192:202],[257:260]};}
// endclass
// module test;
//   packet p1;
//   initial begin
//     p1 = new();
    
//     void'(p1.randomize());
//     $display(" var1 = %b ,var2 = %b ,var3 = %b ,var4 = %b",p1.var1,p1.var2,p1.var3,p1.var4);
    
//     $display(" var2 = %b ",p1.var2);
    
//     $display(" var1 = %b ,var4 = %b ",p1.var1,p1.var4);
    
//     $display(" var1 = %b ,var3 = %b ,var4 = %b",p1.var1,p1.var3,p1.var4);
    
    
//   end
// endmodule
                        
//////////////////////////////////////////////////////////////////////////////////////////////////////////          
/* 7. Write a constraint for the 8-bit variable that provides distribution 80%
for range 0-100 and the remaining 20% for range 101-255. Declare a class "Generic" with
data properties var1, var2, var3, var4 and */                       
                        
                        
// class packet;
//   rand bit [7:0]var1,var2,var3,var4;
  
//   constraint data_c{ var1 dist {[0:100] := 8 , [101:255] := 2};}
// endclass
// module test;
//   packet p1;
//   initial begin
//     p1 = new();
    
//     void'(p1.randomize());
//     $display(" var1 = %b ,var2 = %b ,var3 = %b ,var4 = %b",p1.var1,p1.var2,p1.var3,p1.var4);

//   end
// endmodule                  
                        

////////////////////////////////////////////////////////////////////////////////////////////////////////////
/*9. Write a SV program to generate clock signal of different frequencies. Declare
a global variable "clock", use a method to generate clock. The method must
not use directly the global variable. After each 150 time unit change the
frequency of clock. Show me three frequency changes */


                        
// class packet;
//   rand bit clock;
//   constraint clk_c{ clock == ;}
// endclass
    
//     function out(input int clk);
//           forever #5 out = ~clk ;
//            return out;
//     endfunction
                      
// module test;
//   packet p1;
//   initial begin
//     p1 = new();
    
//     forever begin	
//     	void'(p1.randomize());
//     	$display(" clock = %b ",p1.clock);
//     end
//   end
//   initial begin
//     #100;
//     $finish;
//   end
// endmodule 


  

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
/* 1.Find the output:
            class array_abc;
            rand unsigned int myarray[];
            endclass
            constraint c_abc_val {
            myarray.size inside { [10:16] };
            foreach (myarray[i])
            if (i>0) myarray[i] < myarray[i-1];
            } 
            */
                        
//                OUTPUT :error

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
/* 2. What is wrong with the below code? What is the correct process to write the
constraint?
Class const;
rand bit [7:0] low, mid, high;
constraint Const_1 {low <mid<high;}
end class */
                   
// class cont;
// 	rand bit [7:0] low, mid, high;
// 	constraint Const_1 {low <mid<high;}
// endclass 
// module test;
//   cont c1;
  
//   initial begin
//     c1 = new();
    
//     void'(c1.randomize());
//     $display(" low = %d ,mid = %d ,high = %0d ",c1.low,c1.mid,c1.high);
//   end
// endmodule


// 	-------ANS----------- : the class name should be a non-primitive,not_ keyword....in this_ code the class_ name is a keyword that is the mistake in this_ code
