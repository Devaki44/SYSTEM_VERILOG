class A;
  int data ;
  mailbox m_A;
  
  function new(mailbox m1);
    this.m_A = m1;
  endfunction
  
  task disp_A();
    data = 8'hff;
    m_A.put(data);
    $display(" A : data=%0h ",data);
  endtask
endclass

class B;
  int data ;
  mailbox m_B;
  
  function new(mailbox m2);
    this.m_B = m2;
  endfunction
  
  
  task disp_B();
    m_B.get(data);
    $display(" B : data=%0h ",data);
  endtask
endclass

module test;
  A a1;
  B b1;
  mailbox mb;
  
  initial begin
    mb = new();
    a1 = new(mb);
    b1 = new(mb);
    
    a1.disp_A();
    b1.disp_B();
  end
endmodule


//OUTPUT

 A : data=ff 
 B : data=ff 







