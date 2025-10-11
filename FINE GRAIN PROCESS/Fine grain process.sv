`timescale 1ns/1ps

module fine_grain_demo;

  process p1, p2;

  initial begin

    fork
      begin : P1_block
        p1 = process::self();
        $display("[%0t] P1: started, status = %s", $time, p1.status().name());
        
        #20;
        $display("[%0t] P1: finishing", $time);
      end
      begin : P2_block
        p2 = process::self();
        $display("[%0t] P2: started, status = %s", $time, p2.status().name());

        #5;
        $display("[%0t] P2: suspending itself", $time);
        p2.suspend();
        $display("[%0t] P2: started, status = %s", $time, p2.status().name());


        $display("[%0t] P2: resumed, status = %s", $time, p2.status());
        #15;
        $display("[%0t] P2: finishing", $time);
      end
    join_none

    wait (p1 != null && p2 != null);
    $display("[%0t] Main: both processes started", $time);
    $display("[%0t] P2: started, status = %s", $time, p2.status().name());

    #10;
    $display("[%0t] Main: resume p2", $time);
    $display("[%0t] P2: started, status = %s", $time, p2.status().name());

    p2.resume();

    #5;
    $display("[%0t] Main: kill p1", $time);
    p1.kill();
    $display("[%0t] P1: started, status = %s", $time, p1.status().name());

    p2.resume();
    p2.await();
    $display("[%0t] Main: p2 done", $time);

    $display("[%0t] Final status: p1 = %s, p2 = %s",
             $time,
             p1.status().name(),
             p2.status().name());

    #1 $finish;
  end

endmodule
