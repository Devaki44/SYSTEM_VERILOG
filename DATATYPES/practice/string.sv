module str;
  string name,a,b;
  
  initial begin
    name =  "devaki muthuvel";
    a = "DESIGN";
    b = "design";
    
    $display("the string is :%s ",name);
    
    foreach(name[i])begin
      $display("name[%0d] = %s ",i,name[i]);
    end
    
    $display("the length of the string is : %0d",name.len());
    
    $display(" the string is : %s ",name.getc(4));
    
    
    name.putc(4,"g");
    $display("  the string is : %s ",name);
    
    $display(" the string is : %0s ",name.toupper());
    
    $display(" the string is : %0s ",name.tolower());
    
    $display(" the string is : %0s ",name.substr(4,7));
    
    $display(" the result is : %0b ",a.compare(b));
    
    $display(" the result is : %0b ",a.icompare(b));
    
  end
  
endmodule
