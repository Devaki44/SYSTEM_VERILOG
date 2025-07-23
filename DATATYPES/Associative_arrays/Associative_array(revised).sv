module ass_array;
  int data[string] ;
  string result;
  
  initial begin
    data = '{ "one":1 , "two":2 , "three":3};
             
    //diplay
    $display("array : %p" , data);
    
    //num of element
    $display("number of element :%0d" , data.num());
    
    //size of array
    $display("size of array :%0d" , data.size());
    
    //delete
    data.delete("three");
    $display("After deletion,the array is : %p" , data);
    
    //exist
    if(data.exists("two"))
      $display("element of an index exists");
    else
      $display("element of an index not exists");
    
     //insert
    data["four"]= 4;
    $display(" The array is : %p",data);
    
    //first
    data.first(result);
    $display("first index of an array :%s",result);
    
    //last
    data.last(result);
    $display("last index of an array :%s",result);
  
    //next
    data.next(result);
    $display("next index of an array : %0s",result);
    
    //prev
    data.prev(result);
    $display("prev index of an array : %0s",result);
    
      data.next(result);
    $display("next index of an array : %0s",result);
  end
endmodule




//OUTPUT
# KERNEL: array : '{"one":1, "three":3, "two":2}
# KERNEL: number of element :3
# KERNEL: size of array :3
# KERNEL: After deletion,the array is : '{"one":1, "two":2}
# KERNEL: element of an index exists
# KERNEL:  The array is : '{"four":4, "one":1, "two":2}
# KERNEL: first index of an array :four
# KERNEL: last index of an array :two
# KERNEL: next index of an array : two
# KERNEL: prev index of an array : one
# KERNEL: next index of an array : two
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.





first() -Finds the smallest index in the array (lexicographically for strings, numerically for ints).
last()  -Finds the largest index.
next()  -Finds the smallest index greater than current.
prev()  -Finds the smallest index greater than current.
