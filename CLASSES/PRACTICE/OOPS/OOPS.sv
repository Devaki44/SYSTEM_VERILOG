// class parent;
//   byte data = 8'hff;
  
//   function void display();
//     $display("data = %h ",data);
//   endfunction
// endclass

// class child extends parent;
//   byte data = 8'haa;
  
//   function void display();
//     $display(" data = %0h ",data);
//   endfunction
  
// endclass

// module test;
//   parent p;
//   child c;
  
//   initial begin
//     c = new() ;
//     p = c;
    
//     p.display();
//   end
// endmodule





// class parent;
//   byte data = 8'hff;
  
//   function void display();
//     $display("data = %h ",data);
//   endfunction
// endclass

// class child extends parent;
//   byte data = 8'haa;
  
//   function void display();
//     $display(" data = %0h ",data);
//   endfunction
  
// endclass

// module test;
//   parent p;
//   child c;
  
//   initial begin
//     p = new() ;
//     c = p;
    
//     c.display();//cause an error ecause parent class object does not contain the child class part
//   end
// endmodule





// class parent;
//   byte data = 8'hff;
  
//   function void display();
//     $display("data = %h ",data);
//   endfunction
// endclass

// class child extends parent;
//   byte data = 8'haa;
  
//   function void display();
//     $display(" data = %0h ",data);
//   endfunction
  
// endclass

// module test;
//   parent p;
//   child c,c2;
  
//   initial begin
//     c2 = new();
//     p = c2;
    
//     assert($cast(c,p))
//       else	$display("error");
    
//     c.display();

    
//   end
// endmodule
    





// class parent;
//   byte data = 8'hff;
  
//   function void display();
//     $display("data = %h ",data);
//   endfunction
// endclass

// class child extends parent;
//   byte data = 8'haa;
  
//   function new(int data);
//     int data;
//     $display("data = %0h",data);
//   endfunction
  
//   function void display();
//     $display(" data = %0h ",data);
//   endfunction
  
// endclass

// module test;
//   parent p;
//   child c;
  
//   initial begin
//     c = new(8'hd4) ;
//     p = c;
    
//     p.display();
//   end
// endmodule



//polymorphism
// class parent;
//   byte data = 8'hff;
  
//   virtual function void display();
//     $display("data = %h ",data);
//   endfunction
// endclass

// class child extends parent;
//   byte data = 8'haa;
  
//   function void display();
//     $display(" data = %0h ",data);
//   endfunction
  
// endclass

// module test;
//   parent p;
//   child c;
  
//   initial begin
//     c = new() ;
//     p = c;
    
//     p.display();
//     $display(" data = %0h",p.data);
//   end
// endmodule



// class existing_class;
//   int addr=123;
//   function  new();
//     this.addr=addr;
//     $display("addr=%0d ",addr);
//   endfunction
// endclass
  
// class extended_class extends existing_class;
//       int data=98765;
//   function new(int data);
// //         super.new(addr);
//         this.data=data;
//         $display("data=%0d",data);
//       endfunction
//  endclass
    
// module example;
//   extended_class e1;
//   initial begin
//     e1=new(89);
//     $display("display the values of addr=%0d and data=%0d",e1.addr,e1.data);
    
//     $display("initialize value=%0d",e1.addr);
//     $display("initialize value=%0d",e1.data);
    
//   end
//     endmodule


// class parent;
//   int data  = 8'd4;
  
//   function new();
//     $display(" data = %0d ",data);
//   endfunction
// endclass


// class child extends parent;
//   int addr = 8'd5;
//   function new(int addr);
//     $display(" addr = %0d ",addr);
//   endfunction
// endclass

// module test;
//   parent p;
//   child c;
//   initial begin
//     c = new(8'h7);
//   end
// endmodule
    


// //variable hiding and method overidding
// class parent;
//   byte data = 8'hff;
  
//   virtual function void display();
//     $display("data = %h ",data);
//   endfunction
// endclass

// class child extends parent;
//   byte data = 8'haa;
  
//   function void display();
//     $display(" data = %0h ",data);
//   endfunction
  
// endclass

// module test;
//   parent p;
//   child c;
  
//   initial begin
//     c = new() ;
//     p = c;
    
//     p.display();
//     $display(" data = %0h",p.data);
//   end
// endmodule





//virtual/abstraction class

virtual class parent;
  
  pure virtual function void sum(int a,int b);
    
endclass
class child extends parent;
  virtual function void sum(int a,int b);
    int result;
    result = a + b;
    $display(" sum = %0d ",result);
    
  endfunction
endclass

module test;
  child c;
  initial begin
    c = new();
    c.sum(5,7);
  end
endmodule



virtual class animal;
  
  pure virtual function void sound();
    
endclass
    
    class dog extends animal;   
      virtual function void sound();
        $display("--------wow----------");
      endfunction
    endclass
    class cat extends dog;
      virtual function void sound();
        $display("--------meow----------");
      endfunction
    endclass
    
module test;
  cat c;
  dog d;
  initial begin
    c = new();
    d = new();
    c.sound();
    d.sound();
  end
endmodule
