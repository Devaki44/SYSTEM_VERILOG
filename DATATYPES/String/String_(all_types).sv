module strings;
  string  abc ,A,B;
  
  initial begin
    abc = "DEVAKI MUTHUVEL" ;
    
    //Display
    $display("The string is : %s",abc);
    
    //Display for each position
    foreach(abc[i])begin
      $display("a[%0d]:%s",i,abc[i]);
    end
    
    //Length of the string
    $display("The length of the string: %0d",abc.len());
    
    //To uppercase
    $display("The uppercased string : %s",abc.toupper());
    
    //To lowercase
    $display("The lowercased string : %s",abc.tolower());
    
    // .getc()
    $display("The resultant string is : %d",abc.getc(2));
    
    //.putc
    abc.putc(2,"E");
    $display("The resultant string is : %s",abc);
    
    //sub_string
    $display("The sub-string of the string is : %s",abc.substr(7,14));
    
    A = "DESIGN";
    B = "design";
    
    
    //compare with case-sensitive
    $display("output for comparing A and B:",A.compare(B));
    
    //compare with case-insensitive
    $display("output for comparing A and B:",A.icompare(B));
    
  end
endmodule





# KERNEL: The string is : DEVAKI MUTHUVEL
# KERNEL: a[0]:D
# KERNEL: a[1]:E
# KERNEL: a[2]:V
# KERNEL: a[3]:A
# KERNEL: a[4]:K
# KERNEL: a[5]:I
# KERNEL: a[6]: 
# KERNEL: a[7]:M
# KERNEL: a[8]:U
# KERNEL: a[9]:T
# KERNEL: a[10]:H
# KERNEL: a[11]:U
# KERNEL: a[12]:V
# KERNEL: a[13]:E
# KERNEL: a[14]:L
# KERNEL: The length of the string: 15
# KERNEL: The uppercased string : DEVAKI MUTHUVEL
# KERNEL: The lowercased string : devaki muthuvel
# KERNEL: The resultant string is :   86
# KERNEL: The resultant string is : DEEAKI MUTHUVEL
# KERNEL: The sub-string of the string is : MUTHUVEL
# KERNEL: output for comparing A and B:         -1
# KERNEL: output for comparing A and B:          0
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
