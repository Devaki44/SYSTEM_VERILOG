
// virtual class parent;
//   int data;
//   int addr;
  
//   function new();
//     data = 8'hff;
//     addr = 8'haa;
//   endfunction
  
//   function void display();
//     $display("parent: data = %0h,addr=%0h",data,addr);
//   endfunction
// endclass

// class child extends parent;
//   int data;
//   int addr;
  
//   function new();
//     data = 8'hdd;
//     addr = 8'hee;
//   endfunction
  
//   function void  display();
// //     super.display();
//     $display(" data = %0h,addr = %0h",data ,addr);
//   endfunction
  
// endclass

// class child1 extends child;
//   int data;
//   int addr;
  
//   function new();
//     data = 8'h04;
//     addr = 8'h07;
//   endfunction
  
//   function void  display();
// //     super.display();
//     $display(" data = %0h,addr = %0h",data ,addr);
//   endfunction
  
// endclass


// module test;
  
//   child  c;
//   child1 c1;
  
//   initial begin
//     c  = new();
//     c1 = new();
//     c1.display();
//     c.display();
    
//   end
// endmodule
    



// class parent;
//   int data;
//   int addr;
  
//   function new();
//     data = 8'hff;
//     addr = 8'hee;
//   endfunction 
  
//   virtual function void display();
//     $display("data = %h ,addr = %h ",data,addr);
//   endfunction
// endclass

// class child extends parent;
//   int data;
//   int addr;
  
//   function new();
//     data = 8'h04;
//     addr = 8'h08;
//   endfunction 
  
//   function void display();
//     $display("data = %h ,addr = %h ",data,addr);
//   endfunction
// endclass

// module test;
//   parent p[1:0];
//   child c1;
  
//   initial begin
//     c1 = new();
//     p[1] = c1 ;
//     p[1].display();
//     p[0] = new();
//     p[0].display();
//   end
  
// endmodule





// class parent;
//   static int data;
//   int addr;
  
//   function new();
//     data++ ;
//     addr++ ;
//   endfunction
//   function display();
//     $display(" data = %0h , addr = %0h ",data,addr);

//   endfunction
  
// endclass

// module test;
//   parent p[5];
//   initial begin
  
//   foreach(p[i])begin
//     p[i] = new();
//     p[i].display();
//   end
//   end
// endmodule










    
// class parent;
//   int data ;
//   int addr;
  
// /////////////////////////////////////////////////////////////
//   class child;
//   int data_1 ;
//   int addr_1;
  
//   function  new();
//     data_1 = 8'h00 ;
//     addr_1 = 8'h66 ;
//   endfunction
  
//   function void display();
//     $display("data_1 =%0h ,addr_1 = %0h",data_1,addr_1);
//   endfunction
  
// endclass
// //////////////////////////////////////////////////////////////
  
//   child ch;
  
//   function  new();
//     data = 8'hff ;
//     addr = 8'hdd ;
//     ch = new();
//   endfunction
  
//   function void display();
//     $display("data =%0h ,addr = %0h",data,addr);
//   endfunction
  
// endclass

// module test;
//   parent p1,p2;
  
//   initial begin
//     p1 = new();
//     p2 = p1;
    
//     p1.display();
//     p2.display();
    
//     $display("_________________________________");
    
//     p1.ch.display();
//     p2.ch.display();
//   end
// endmodule





    
// class parent;
//   int data ;
//   int addr;
  
// /////////////////////////////////////////////////////////////
//   class child;
//   int data_1 ;
//   int addr_1;
  
//   function  new();
//     data_1 = 8'h00 ;
//     addr_1 = 8'h66 ;
//   endfunction
  
//   function void display();
//     $display("data_1 =%0h ,addr_1 = %0h",data_1,addr_1);
//   endfunction
  
// endclass
// //////////////////////////////////////////////////////////////
  
//   child ch;
  
//   function  new();
//     data = 8'hff ;
//     addr = 8'hdd ;
//     ch = new();
//   endfunction
  
//   function void display();
//     $display("data =%0h ,addr = %0h",data,addr);
//   endfunction
  
// endclass

// module test;
//   parent p1,p2;
  
//   initial begin
//     p1 = new();
//     p2 = new p1 ;
    
//     p1.display();
//     p2.display();
    
//     $display("_________________________________");
    
//     p1.ch.display();
//     p2.ch.display();
    
//     $display("----------------------------------");
    
//     p1.addr = 8'h22;
//     p1.data = 8'hee;
    
//     p1.ch.addr_1 = 8'h10;
//     p1.ch.data_1 = 8'h01;
    
//     p1.display();
//     p2.display();
    
//     $display("_________________________________");
    
//     p1.ch.display();
//     p2.ch.display();
    
//     $display("----------------------------------");
    
    
//   end
// endmodule

  
  
  
// typedef list;
  
// class packet;
//   int data;
//   int addr;
//   list ls;
  
//   function new();
//     data = 8'hbb ;
//     addr =  8'hcc ;
//     ls = new();
//   endfunction
  
//   function void display();
//     $display("data =%0h ,addr = %0h",data,addr);
//   endfunction
  
//   function packet copy();
//     copy       = new();
//     copy.data  = this.data;
//     copy.addr  = this.addr;
//     copy.ls    = ls.copy;
//   endfunction
  
// endclass

// class list;
//   int data_1;
//   int addr_1;
  
//   function new();
//     data_1 = 8'hff;
//     addr_1 = 8'hdd;
//   endfunction
  
//   function void display();
//     $display("data_1 = %0h ,addr_1 = %0h ",data_1,addr_1);
//   endfunction
  
//   function list copy();
//     copy		= new();
//     copy.data_1 = this.data_1 ;
//     copy.addr_1 = this.addr_1;
//   endfunction
  
// endclass

// module test;
//   packet p1,p2;
  
//   initial begin
//     p1 = new();
//     p2 = new();
    
//     p2 = p1.copy();
    
//     p1.display();
//     p2.display();
    
//     $display("_________________________________");
    
//     p1.ls.display();
//     p2.ls.display();
    
//     $display("----------------------------------");
    
//     p1.addr = 8'h22;
//     p1.data = 8'hee;
    
//     p1.ls.addr_1 = 8'h10;
//     p1.ls.data_1 = 8'h01;
    
//     p1.display();
//     p2.display();
    
//     $display("_________________________________");
    
//     p1.ls.display();
//     p2.ls.display();
    
//     $display("----------------------------------");
    
    
//   end
// endmodule
  
  
  
  
// //public
// class packet1;
//   int a = 5;

//   function new();
//     a++ ;
//     $display(" d1 : a = %0d ",a);
//   endfunction
  
// endclass

// class packet2 extends packet1;
  
//   function new();
//     $display(" d3 : a = %0d ",a);
//   endfunction

// endclass


// module test;
//   packet2 p2;

//   initial begin
//     p2 = new();
//   end
// endmodule
  
  


// class packet;
//   int data = 8'h07 ;
  
//   function new();
//     data = 8'hff ;
    
//     $display(" data =%0h ",data);

//     this.data = data;

//   endfunction
  
//   function void display();
//     $display(" data =%0h ",data);
//   endfunction
  
// endclass

// module test;
//   packet p1;
  
//   initial begin   
//     p1 = new();
//     $display(" data =%0h ",p1.data);

//     p1.display();
    
//     p1.data = 8'hee;
//     $display(" data =%0h ",p1.data);

//   end
// endmodule



// class packet #(parameter P=4);
//   bit[P-1:0]data;
  
//   function new();
//     data = 14;
//     $display(" dat = %0h ",data); 
//   endfunction
  
// endclass

// module test;
//   packet p1;
  
//   initial begin
//     p1 = new();
//   end
// endmodule
    
  


// class packet#(parameter P=8);
//   bit[P-1:0]data;
  
//   function new();
//     data = 14;
//     $display(" dat = %0h ",data); 
//   endfunction
  
// endclass

// module test;
//   packet#(4) p1;
  
//   initial begin
//     p1 = new();
//   end
// endmodule
    
  
// class packet#(parameter P=4,T = string);
//   bit[P-1:0]data;
//   T name;
  
//   function new();
//     data = 14;
//     name = "devaki";
//     $display(" data = %0h ,name = %0s",data,name); 
//   endfunction
  
// endclass

// module test;
//   packet#(4,string) p1;
  
//   initial begin
//     p1 = new();
//   end
// endmodule
  
  
// class packet ;
//   const int data = 8'hcc;
//   const int addr;
  
//   function new();
//     addr = 8'hee;
//   endfunction
  
//   function void display();
//     $display(" data = %0h,addr =%0h ",data ,addr);
//   endfunction
// endclass

// module test;
//   packet p1;
  
//   initial begin
//     p1 = new();

//     p1.display();
//   end
// endmodule
  




class packet ;
  int data = 8'hcc;
  int addr;
  
//   function new();
//     addr = 8'hee;
//   endfunction
  
  extern function void display();
  
endclass

  function void packet::display();
    int addr = 8'hee;
    $display(" data = %0h,addr =%0h ",data ,addr);
  endfunction

module test;
  packet p1;
  
  initial begin
    p1 = new();

    p1.display();
  end
endmodule
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
