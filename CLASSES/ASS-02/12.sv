//12.QUESTION.How would you handle deep copying in SystemVerilog for a class with arrays?

//DESIGN CODE
class list;
  int arr[];
//   int i;
  function new(string str);
//     int size = 3'd7;
    arr = new[7];
    arr = '{77,66,55,44,33,22,11};
    foreach(arr[i])begin
      $display(" %s FUNCTION : arr[%0d] = %0d ",str, i,arr[i]);
    end
  endfunction
  
  
  function void display();
    foreach(arr[i])begin
      $display(" DISPLAY : arr[%0d] = %0d ",i,arr[i]);
    end
  endfunction
    
  function list copy();
    copy = new("derived copy");
    copy.arr = this.arr ;
    display();
    return copy;
  endfunction
  
endclass

class packet;
  byte addr;
  byte data;
  list pk;
  
  function new(string str);
    addr = 8'hff;
    data = 8'hac;
    pk = new("derived from top new");
    $display(" %s addr = %0h , data = %0h ",str, addr,data);
  endfunction
  
  function void display();
    $display(" addr = %0h , data = %0h ",addr,data);
  endfunction
  
  function packet copy();
    copy = new("top copy");
    copy.addr = this.addr ;
    copy.data = this.data ;
    copy.pk   = pk.copy;
    return copy;
  endfunction
endclass

module test;
  packet p1,p2;
  initial begin
    p1 = new("p1");
    $display("------------------------------- new p1");
    p2 = new("p2");
    $display("-------------------------------new p2");
    p1.pk.arr = '{1,2,3,4,5,6,7};
    p1.pk.display();
    $display("-------------------------------p1");
    p2.pk.display();
    $display("------------------------------- p2");
    p2= p1.copy();
    $display("COPY-------------------------------");
    p2.pk.display();
    
  end    
endmodule
    
    
    
    
    
//OUTPUT
# KERNEL:  derived from top new FUNCTION : arr[0] = 77 
# KERNEL:  derived from top new FUNCTION : arr[1] = 66 
# KERNEL:  derived from top new FUNCTION : arr[2] = 55 
# KERNEL:  derived from top new FUNCTION : arr[3] = 44 
# KERNEL:  derived from top new FUNCTION : arr[4] = 33 
# KERNEL:  derived from top new FUNCTION : arr[5] = 22 
# KERNEL:  derived from top new FUNCTION : arr[6] = 11 
# KERNEL:  p1 addr = ff , data = ac 
# KERNEL: ------------------------------- new p1
# KERNEL:  derived from top new FUNCTION : arr[0] = 77 
# KERNEL:  derived from top new FUNCTION : arr[1] = 66 
# KERNEL:  derived from top new FUNCTION : arr[2] = 55 
# KERNEL:  derived from top new FUNCTION : arr[3] = 44 
# KERNEL:  derived from top new FUNCTION : arr[4] = 33 
# KERNEL:  derived from top new FUNCTION : arr[5] = 22 
# KERNEL:  derived from top new FUNCTION : arr[6] = 11 
# KERNEL:  p2 addr = ff , data = ac 
# KERNEL: -------------------------------new p2
# KERNEL:  DISPLAY : arr[0] = 1 
# KERNEL:  DISPLAY : arr[1] = 2 
# KERNEL:  DISPLAY : arr[2] = 3 
# KERNEL:  DISPLAY : arr[3] = 4 
# KERNEL:  DISPLAY : arr[4] = 5 
# KERNEL:  DISPLAY : arr[5] = 6 
# KERNEL:  DISPLAY : arr[6] = 7 
# KERNEL: -------------------------------p1
# KERNEL:  DISPLAY : arr[0] = 77 
# KERNEL:  DISPLAY : arr[1] = 66 
# KERNEL:  DISPLAY : arr[2] = 55 
# KERNEL:  DISPLAY : arr[3] = 44 
# KERNEL:  DISPLAY : arr[4] = 33 
# KERNEL:  DISPLAY : arr[5] = 22 
# KERNEL:  DISPLAY : arr[6] = 11 
# KERNEL: ------------------------------- p2
# KERNEL:  derived from top new FUNCTION : arr[0] = 77 
# KERNEL:  derived from top new FUNCTION : arr[1] = 66 
# KERNEL:  derived from top new FUNCTION : arr[2] = 55 
# KERNEL:  derived from top new FUNCTION : arr[3] = 44 
# KERNEL:  derived from top new FUNCTION : arr[4] = 33 
# KERNEL:  derived from top new FUNCTION : arr[5] = 22 
# KERNEL:  derived from top new FUNCTION : arr[6] = 11 
# KERNEL:  top copy addr = ff , data = ac 
# KERNEL:  derived copy FUNCTION : arr[0] = 77 
# KERNEL:  derived copy FUNCTION : arr[1] = 66 
# KERNEL:  derived copy FUNCTION : arr[2] = 55 
# KERNEL:  derived copy FUNCTION : arr[3] = 44 
# KERNEL:  derived copy FUNCTION : arr[4] = 33 
# KERNEL:  derived copy FUNCTION : arr[5] = 22 
# KERNEL:  derived copy FUNCTION : arr[6] = 11 
# KERNEL:  DISPLAY : arr[0] = 1 
# KERNEL:  DISPLAY : arr[1] = 2 
# KERNEL:  DISPLAY : arr[2] = 3 
# KERNEL:  DISPLAY : arr[3] = 4 
# KERNEL:  DISPLAY : arr[4] = 5 
# KERNEL:  DISPLAY : arr[5] = 6 
# KERNEL:  DISPLAY : arr[6] = 7 
# KERNEL: COPY-------------------------------
# KERNEL:  DISPLAY : arr[0] = 1 
# KERNEL:  DISPLAY : arr[1] = 2 
# KERNEL:  DISPLAY : arr[2] = 3 
# KERNEL:  DISPLAY : arr[3] = 4 
# KERNEL:  DISPLAY : arr[4] = 5 
# KERNEL:  DISPLAY : arr[5] = 6 
# KERNEL:  DISPLAY : arr[6] = 7 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
