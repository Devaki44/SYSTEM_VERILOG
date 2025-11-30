// module function_example;
//   int a, b;
//   int out;
  
//   function int multiply(int a = 5, b = 6);
//     a = a*b; //value of a is updated, it won't update global variables a and b
//     return a;
//   endfunction
  
//   initial begin
//     out = multiply(); // Note: No arguments are passed
//     $display("argument passed: out = %0d, a = %0d and b = %0d", out, a, b); //a and b values will be 0 since their values are not updated
    
//     a = 2;
//     b = 3;
//     out = multiply(a, b);
//     $display("No arguments passed: out = %0d for a = %0d and b = %0d", out, a, b);
//   end
// endmodule



// module function_example;
//   int a, b;
//   int out;
  
//   function automatic int multiply(ref int a, b);
//     a = a*b; //value of a is updated, it won't update global variables a and b
//     return a;
//   endfunction
  
//   initial begin
//     a = 5;
//     b = 6;
//     out = multiply(a,b);
//     $display("Multiplication: out = %0d, a = %0d and b = %0d", out, a, b); //observe value of a is updated
//   end
// endmodule

// module task_example;
//   int a, b;
//   int out;
   
//   task automatic tk_multiply( ref int a, b, output int out);
//     a = a*b; // expects compilation error when subroutine tries to modify argument value.
//     out = a;
//   endtask
  
//   initial begin
//     a = 5;
//     b = 6;

//     tk_multiply(a,b, out);
//     $display("Function: out = %0d, a = %0d and b = %0d", out, a, b);
//   end
// endmodule



module default_type_example;

  // Task declared without explicit data type for arguments:
  task my_task(a, b, output result);
    // a, b: no type given → implicitly treated as logic by many tools
    result = a + b;
  endtask

  initial begin
    int x = 5;
    int y = 7;
    int sum;

    my_task(x, y, sum);
    $display("sum = %0d", sum); // should display 12
  end

endmodule

