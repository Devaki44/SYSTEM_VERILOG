// Code your design here
class A;
  int data ;
  mailbox m_A;
  
  function new(mailbox m1);
    this.m_A = m1;
  endfunction
  
  task disp_A();
    for(int i=0;i<=5;i++)begin
      if(m_A.num() == 5)
        $display("mailbox is full");
      else begin
        data++;
        if(m_A.try_put(data))
    		$display(" A : data=%0h ",data);        
        else
          $display(" failed to put data in mailbox ");
      end
    end
  endtask
      
endclass

class B;
  int data ;
  mailbox m_B;
  
  function new(mailbox m2);
    this.m_B = m2;
  endfunction
  
  
  task disp_B();
    begin
      if(m_B.num() == 0)	$display(" mailbox is null ");
      else begin
        
        if(m_B.try_get(data))
    		$display(" B : data=%0h ",data);
        else
          $display(" failed to get data from the mailbox ");
      end
    end
  endtask
endclass

module test;
  A a1;
  B b1;
  mailbox mb;
  
  initial begin
    mb = new(5);
    a1 = new(mb);
    b1 = new(mb);
    
    a1.disp_A();
    
    b1.disp_B();
    b1.disp_B();
    b1.disp_B();
    b1.disp_B();
    b1.disp_B();
    b1.disp_B();
  end
endmodule




A : data=1 
 A : data=2 
 A : data=3 
 A : data=4 
 A : data=5 
mailbox is full
 B : data=1 
 B : data=2 
 B : data=3 
 B : data=4 
 B : data=5 
 mailbox is null 
