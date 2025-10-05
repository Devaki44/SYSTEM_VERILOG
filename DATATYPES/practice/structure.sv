module structure;
  struct packed{ int data;
          byte addr;
       }details;
  
  initial begin
    details = '{32'had,8'hcd};
    
    $display(" data is : %h ",details.data);
    $display(" addr is : %h ",details.addr);
//     $display(" name is : %0s ",details.name);
  end
endmodule
