//CODE
module test;
  packet pkt1,pkt2;
  initial begin
    pkt1 = new();
    pkt2 = new();
    
    repeat(5)begin

      pkt1.data_c.constraint_mode(1);		//constraint_mode   enabled
      pkt2.data_c.constraint_mode(1);		//constraint_mode   enabled
      
      $display(" Before  disable constraint_mode ");
      void'(pkt1.randomize());
      $display("	 pkt1 : data = %0d ",pkt1.data);
      void'(pkt2.randomize());
      $display("	 pkt2 : data = %0d ",pkt2.data);
      
    
      pkt1.data_c.constraint_mode(0);		//constraint_mode   disabled
      pkt2.data_c.constraint_mode(0);		//constraint_mode   disabled

      $display(" After disable constraint_mode");
      
      void'(pkt1.randomize());
      $display("	 pkt1 : data = %0d ",pkt1.data);
      void'(pkt2.randomize());
      $display("	 pkt2 : data = %0d ",pkt2.data);
      $display("-------------------------");
    end
    
  end
endmodule


//OUTPUT
Before  disable constraint_mode 
	 pkt1 : data = 2 
	 pkt2 : data = 1 
 After disable constraint_mode
	 pkt1 : data = 14 
	 pkt2 : data = 9 
-------------------------
 Before  disable constraint_mode 
	 pkt1 : data = 6 
	 pkt2 : data = 3 
 After disable constraint_mode
	 pkt1 : data = 12 
	 pkt2 : data = 6 
-------------------------
 Before  disable constraint_mode 
	 pkt1 : data = 2 
	 pkt2 : data = 4 
 After disable constraint_mode
	 pkt1 : data = 15 
	 pkt2 : data = 8 
-------------------------
 Before  disable constraint_mode 
	 pkt1 : data = 9 
	 pkt2 : data = 3 
 After disable constraint_mode
	 pkt1 : data = 15 
	 pkt2 : data = 11 
-------------------------
 Before  disable constraint_mode 
	 pkt1 : data = 6 
	 pkt2 : data = 3 
 After disable constraint_mode
	 pkt1 : data = 2 
	 pkt2 : data = 0 
-------------------------
           V C S   S i m u l a t i o n   R e p o r t 
