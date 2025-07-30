//CODE(with this. )
class example;
  int a=112;
  int b=67;
  function void display();
    int a=123;
    int b=678;
    
    this.a=a;
    this.b=b;
    $display("Display the values of the a=%0d and b=%0d",a,b);
    
  endfunction
endclass

module sample;
  example e1;
  initial begin
    e1=new;
    e1.display();
    $display("values of a=%0d b=%0d",e1.a,e1.b);
  end
endmodule

//OUTPUT
Display the values of the a=123 and b=678
values of a=112 b=67

//CODE(without this. )
class example;
  int a=112;
  int b=67;
  function void display();
    int a=123;
    int b=678;
    
//     this.a=a;
//     this.b=b;
    $display("Display the values of the a=%0d and b=%0d",a,b);
    
  endfunction
endclass

module sample;
  example e1;
  initial begin
    e1=new;
    e1.display();
    $display("values of a=%0d b=%0d",e1.a,e1.b);
  end
endmodule


//OUTPUT
Display the values of the a=123 and b=678
values of a=112 b=67
