  module union_design;
    union {
      byte a;
      bit b;
      reg[3:0] c;} data;

    initial begin

     data.a = 8'hff;
     $display("a = %h ",data.a);

     data.b = 1'b1;
      $display("b = %h ",data.b);

     data.c = 4'hd;
      $display("c = %h ",data.c);

      $display(" a = %h ",data.a);

    end

  endmodule
  
  

// module union_design;
//   union tagged{
//     byte a;
//     bit b;
//     reg[3:0] c;} data;
  
//   initial begin
  
//    data = tagged a : 8'hff;
//    $display("a = %h ",data.a);
    
//    data = tagged b : 1'b1;
//     $display("b = %h ",data.b);
    
//    data = tagged c : 4'hd;
//     $display("c = %h ",data.c);
    
// //     $display(" a = %h ",data.a);
    
//   end
  
// endmodule
  
