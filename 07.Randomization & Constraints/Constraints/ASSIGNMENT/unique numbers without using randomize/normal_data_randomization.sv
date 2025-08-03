❖Write a code to generate unique numbers without using randomize.

  //CODE
  module test;
  bit[3:0] data;
  
  initial begin
    repeat(5)begin
    	data = $random ;
    	$display(" $random => data =%0d ",data);
    end
    begin
    	$display("------------------------------------");
    end
    
    repeat(5)begin
     data = $urandom;
     $display(" $urandom => data =%0d ",data);
    end
    begin
   		$display("------------------------------------");
    end
    
    repeat(5)begin
      data = $urandom_range(0,30);
      $display(" $urandom_range => data =%0d ",data);
    end
    begin
    	$display("-------------------------------------");
    end
  end
endmodule




//OUTPUT
xcelium> run
 $random => data =4 
 $random => data =1 
 $random => data =9 
 $random => data =3 
 $random => data =13 
------------------------------------
 $urandom => data =6 
 $urandom => data =14 
 $urandom => data =12 
 $urandom => data =1 
 $urandom => data =6 
------------------------------------
 $urandom_range => data =4 
 $urandom_range => data =6 
 $urandom_range => data =2 
 $urandom_range => data =2 
 $urandom_range => data =2 
-------------------------------------
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
