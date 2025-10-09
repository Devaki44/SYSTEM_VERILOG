class A;
  string data ;
  mailbox #(string) m_A;
  
  function new(mailbox #(string)m1);
    this.m_A = m1;
  endfunction
  
  task disp_A();
    for(int i=0;i<4;i++)begin
      if(m_A.num() == 3)begin
        $display("mailbox is full");
        break;
      end
      else begin
        data = {"devaki "};
    	m_A.put(data);
        $display(" A : data=%0s ",data);
        
        data = {"muthuvel"};
    	m_A.put(data);
        $display(" A : data=%0s ",data);
        
        data = {"muthuv"};
    	m_A.put(data);
        $display(" A : data=%0s ",data);
      end
    end
  endtask
      
endclass

class B;
  string data ;
  mailbox #(string) m_B;
  
  function new(mailbox #(string)m2);
    this.m_B = m2;
  endfunction
  
  
  task disp_B();
    begin
      if(m_B.num() == 0)	$display(" mailbox is null ");
      else begin
    	m_B.get(data);
        $display(" B : data=%0s ",data);
      end
    end
  endtask
endclass

module test;
  A a1;
  B b1;
  mailbox #(string) mb = new(3);
  
  initial begin
//     mb = new(5);
    a1 = new(mb);
    b1 = new(mb);
    
    a1.disp_A();
#1;
    
    b1.disp_B();
    b1.disp_B();
    b1.disp_B();
    b1.disp_B();
  end
endmodule



//OUTPUT

A : data=devaki  
 A : data=muthuvel 
 A : data=muthuv 
mailbox is full
 B : data=devaki  
 B : data=muthuvel 
 B : data=muthuv 
 mailbox is null 
