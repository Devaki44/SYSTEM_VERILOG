/////////////////////////////////this.///////////////////////////////////////
// class parent ;
//   int data = 8'hea;
//   int addr = 8'hdd;
  
//   function void display(int data,int addr);
//     this.data = data ;
//     this.addr = addr ;
    
//     $display(" data = %0h ,addr = %0h ",data,addr);
//   endfunction
// endclass

// module test;
//   parent p;
//   initial begin
//     p = new();
//     $display(" data = %0h ,addr = %0h ",p.data,p.addr);

//     p.display(8'hff,8'h07);
//     $display(" data = %0h ,addr = %0h ",p.data,p.addr);
   
//   end
// endmodule
    
    


// class parent ;
//   int data = 8'hea;
//   int addr = 8'hdd;
  
//   function void display(int data,int addr);
//     data = data ;
//     addr = addr ;
    
//     $display(" data = %0h ,addr = %0h ",data,addr);
//   endfunction
// endclass

// module test;
//   parent p;
//   initial begin
//     p = new();
//     $display(" data = %0h ,addr = %0h ",p.data,p.addr);

//     p.display(8'hff,8'h07);
//     $display(" data = %0h ,addr = %0h ",p.data,p.addr);
   
//   end
// endmodule



/////////////////////////////////super.////////////////////////////////////////////

// class parent;
//   int a;
  
//   function void disp1(int a);
//     $display(" a= %0d ",a);
//   endfunction
  
// endclass

// class child extends parent;
//   int b;
//   function void disp1(int a,int b);
//     super.disp1(a);

//     $display(" b = %0d ",b);
//   endfunction
// endclass

// module test;
//   child c;
//   initial begin
//     c = new();
//     c.disp1(4,5);
//   end
// endmodule
    


/////////////////////////////////////scope-resolution///////////////////////////////////

// class parent;
//   static int a;
  
//   static  function void display(int x);
//     a = x;
//     $display(" a= %0d ",a);
//   endfunction
  
// endclass

// module test;
//   initial begin
    
//     parent::display(90);
//   end
// endmodule





// class parent;// error because non-static variable inside the staic function
//    int a;
  
//   static  function void display(int x);
//     a = x;
//     $display(" a= %0d ",a);
//   endfunction
  
// endclass

// module test;
//   initial begin
    
//     parent::display(90);
//   end
// endmodule


//////////////////////////////////extern-keyword///////////////////////////////
  
// class parent;
//   int a;
  
//   extern function void display(int a);
// endclass

//   function void parent :: display(int a);
//     $display(" a= %0d ",a);
//   endfunction
  
// module test;
//   parent p;
//   initial begin
//     p = new();
//     p.display(9);
//   end
// endmodule
  
  
///////////////////////////chaining construct////////////////////////////////////

// class parent;
//   int x;
  
//   function new(int a);
//    this.x = a;
//     $display(" x =%0d ",x);
//   endfunction
  
// endclass

// class child extends parent;
//   int y;
  
//   function new(int a,int b);
//     super.new(a);
//     this.y = b;
//     $display(" y =%0d ",y);

//   endfunction
// endclass

// module test;
//   child c ;
//   initial begin
//     c = new(4,9);
//   end
// endmodule
            
    
/////////////////////////////////////constant ckass properties/////////////////////////////



					//////global constant property///////


// class parent;
//   int a;
//   const int b = 1;    
  
//   function void display();
//     $display(" a=%0d ,b=%0d ",a,b);
//   endfunction
// endclass

// module test;
//   parent p;
//   initial begin
//     p = new();
//     p.display();
//     $display(" a=%0d ,b=%0d ",p.a,p.b);
//     p.a=8;
//     $display(" a=%0d ,b=%0d ",p.a,p.b);
    

//     //error---> because const value is not assigned in this way 1.during declaration or using constructor
//     p.b=8;
//     $display(" a=%0d ,b=%0d ",p.a,p.b);


    
//   end
// endmodule


					//////instance constant property///////

// class parent;
//   int a;
//   const int b ;    
  
//   function new(int x,int y);
//     a = x;
//     b = y;
//     $display(" a=%0d ,b=%0d ",a,b);
//   endfunction
    
  
//   function void display();
//     $display(" a=%0d ,b=%0d ",a,b);
//   endfunction
// endclass

// module test;
//   parent p;
//   initial begin
//     p = new(4,8);//value for const is  assigned,afetr this assignment thevalue of the b cannot be changed
//     p.display();
//     $display(" a=%0d ,b=%0d ",p.a,p.b);
//     p.a=8;
//     $display(" a=%0d ,b=%0d ",p.a,p.b);


    
//   end
// endmodule



////////////////////////////////////////parameterized class/////////////////////////////////

// class parent;
//   bit[3:0] a;
//   string b;
  
//   function void display(bit[3:0] a,string b);
//     $display("a = %0d ,b= %0s",a,b);
//   endfunction
  
// endclass

// module test;
//   parent p;
//   initial begin
//     p = new();
//     p.display(7,"dhoni");
//   end
// endmodule






// class parent#(parameter WIDTH = 3);//parameterized by value
//   bit[WIDTH-1:0] a;
//   string b;
  
//   function void display(bit[WIDTH-1:0] a,string b);
//     $display("a = %0d ,b= %0s",a,b);
//   endfunction
  
// endclass


// module test;
//   parent#(5)p;
//   initial begin
//     p = new();
//     p.display(28,"dhoni");
//   end
// endmodule




// class parent#(parameter WIDTH = 3,type T = bit);//parameterized by type
//   bit[WIDTH-1:0] a;
//   T b;
  
//   function void display(bit[WIDTH-1:0] a,T b);
//     $display("a = %0d ,b= %0d",a,b);
//   endfunction
  
// endclass


// module test;
//   parent#(5,byte)p;
//   initial begin
//     p = new();
//     p.display(28,11);
//   end
// endmodule



// //////////////////////////////////////static variable and methods/////////////////////////////////////////


// non-static variable and non-static function

// class parent;
//   int a=10;
  
//   function void display();
//     $display(" a= %0d ",a);
//   endfunction
// endclass

// module test;
//   parent p;
//   initial begin
//     p = new;
//     p.display();
//   end
// endmodule
    


// //static variable and non-static function

// class parent;
//   static int a=10;
  
//   function void display();
//     $display(" a= %0d ",a);
//   endfunction
// endclass

// module test;
//   parent p;
//   initial begin
//     p = new;
//     p.display();
//   end
// endmodule



// //static variable and static function

// class parent;
//   static int a=10;
  
//   static function void display();
//     $display(" a= %0d ",a);
//   endfunction
// endclass

// module test;
//   parent p;
//   initial begin
//     p = new;
//     p.display();
//   end
// endmodule



// //non-static variable and static function

// class parent;
//   int a=10;
  
//   static function void display();//------------ERROR---------- non-static variable is not allowed inside the static function
//     $display(" a= %0d ",a);
//   endfunction
// endclass

// module test;
//   parent p;
//   initial begin
//     p = new;
//     p.display();
//   end
// endmodule




// //example code
// class parent;
//   static int a;
//   int b;
  
//   function void display();
//     a++;
//     b++;
//     $display(" a= %0d ,b =%0d",a,b);
//   endfunction
// endclass

// module test;
//   parent p[5];
//   initial begin
//     foreach(p[i])begin
//       p[i] = new;
//       p[i].display();
//     end
//   end
// endmodule




//////////////////////////overiding class members/////////////////////////////////////

// class parent;
//   int a;
//   int b;
//   string c;
  
//   function new();
//     a=87;
//     b=88;
//     c="devaki";

//   endfunction
  
//   function void display();
//     $display(" a= %0d,b=%0b,c=%0s",a,b,c);
//   endfunction
// endclass

// class child extends parent;
//   int a;
//   int b;
// //   string c;
  
//   function new();
//     a=23;
//     b=32;
//   endfunction
  
//   function void display();
//     $display(" a= %0d,b=%0b,c=%0s",a,b,c);
//   endfunction
// endclass

// module test;
//   child c;
//   initial begin
//     c = new();
//     c.display();
//     c.c="devaki";
//     c.display();
//   end
// endmodule
    

///////////////creating object for an array/////////////////
// class packet;
  
//   function new(int a);
//     a++;
//     $display(" a=%0d ",a);
//   endfunction
  
// endclass

// module test;
//   packet p[5];
  
//   initial begin
//     for(int i=0; i < $size(p) ;i++)begin
//       p[i] = new(i);
//     end
//   end
// endmodule
