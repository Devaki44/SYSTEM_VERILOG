//CODE
class packet;
  rand bit[3:0]data;
  static constraint data_c{ data inside {[1:9]};}  
endclass

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
      pkt2.data_c.constraint_mode(1);		//constraint_mode   disabled

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
# run -all
#  Before  disable constraint_mode 
# 	 pkt1 : data = 5 
# 	 pkt2 : data = 7 
#  After disable constraint_mode
# 	 pkt1 : data = 3 
# 	 pkt2 : data = 1 
# -------------------------
#  Before  disable constraint_mode 
# 	 pkt1 : data = 4 
# 	 pkt2 : data = 2 
#  After disable constraint_mode
# 	 pkt1 : data = 7 
# 	 pkt2 : data = 6 
# -------------------------
#  Before  disable constraint_mode 
# 	 pkt1 : data = 6 
# 	 pkt2 : data = 3 
#  After disable constraint_mode
# 	 pkt1 : data = 9 
# 	 pkt2 : data = 2 
# -------------------------
#  Before  disable constraint_mode 
# 	 pkt1 : data = 1 
# 	 pkt2 : data = 8 
#  After disable constraint_mode
# 	 pkt1 : data = 5 
# 	 pkt2 : data = 1 
# -------------------------
#  Before  disable constraint_mode 
# 	 pkt1 : data = 1 
# 	 pkt2 : data = 9 
#  After disable constraint_mode
# 	 pkt1 : data = 1 
# 	 pkt2 : data = 9 
# -------------------------
# exit
