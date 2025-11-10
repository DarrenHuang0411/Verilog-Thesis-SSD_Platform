
`timescale 1ns / 1ps
`include "Unet_Wrapper_v1_0_tb_include.svh"

import axi_vip_pkg::*;
import Unet_Wrapper_v1_0_bfm_1_slave_0_0_pkg::*;
import Unet_Wrapper_v1_0_bfm_1_slave_1_0_pkg::*;
import Unet_Wrapper_v1_0_bfm_1_slave_2_0_pkg::*;
import Unet_Wrapper_v1_0_bfm_1_slave_3_0_pkg::*;
import Unet_Wrapper_v1_0_bfm_1_slave_4_0_pkg::*;
import Unet_Wrapper_v1_0_bfm_1_slave_5_0_pkg::*;
import Unet_Wrapper_v1_0_bfm_1_slave_6_0_pkg::*;
import Unet_Wrapper_v1_0_bfm_1_slave_7_0_pkg::*;

module Unet_Wrapper_v1_0_tb();


xil_axi_uint                            error_cnt = 0;
xil_axi_uint                            comparison_cnt = 0;
axi_transaction                         wr_transaction;   
axi_transaction                         rd_transaction;   
axi_monitor_transaction                 mst_monitor_transaction;  
axi_monitor_transaction                 master_moniter_transaction_queue[$];  
xil_axi_uint                            master_moniter_transaction_queue_size =0;  
axi_monitor_transaction                 mst_scb_transaction;  
axi_monitor_transaction                 passthrough_monitor_transaction;  
axi_monitor_transaction                 passthrough_master_moniter_transaction_queue[$];  
xil_axi_uint                            passthrough_master_moniter_transaction_queue_size =0;  
axi_monitor_transaction                 passthrough_mst_scb_transaction;  
axi_monitor_transaction                 passthrough_slave_moniter_transaction_queue[$];  
xil_axi_uint                            passthrough_slave_moniter_transaction_queue_size =0;  
axi_monitor_transaction                 passthrough_slv_scb_transaction;  
axi_monitor_transaction                 slv_monitor_transaction;  
axi_monitor_transaction                 slave_moniter_transaction_queue[$];  
xil_axi_uint                            slave_moniter_transaction_queue_size =0;  
axi_monitor_transaction                 slv_scb_transaction;  
xil_axi_uint                           mst_agent_verbosity = 0;  
xil_axi_uint                           slv_agent_verbosity = 0;  
xil_axi_uint                           passthrough_agent_verbosity = 0;  
bit                                     clock;
bit                                     reset;
xil_axi_ulong                           mem_rd_addr;
xil_axi_ulong                           mem_wr_addr;
bit[32-1:0]                             write_data;
bit                                     write_strb[];
bit[32-1:0]                             read_data;
Unet_Wrapper_v1_0_bfm_1_slave_0_0_slv_mem_t          slv_agent_0;
bit error_0;
bit done_0;
bit init_0;
Unet_Wrapper_v1_0_bfm_1_slave_1_0_slv_mem_t          slv_agent_1;
bit error_1;
bit done_1;
bit init_1;
Unet_Wrapper_v1_0_bfm_1_slave_2_0_slv_mem_t          slv_agent_2;
bit error_2;
bit done_2;
bit init_2;
Unet_Wrapper_v1_0_bfm_1_slave_3_0_slv_mem_t          slv_agent_3;
bit error_3;
bit done_3;
bit init_3;
Unet_Wrapper_v1_0_bfm_1_slave_4_0_slv_mem_t          slv_agent_4;
bit error_4;
bit done_4;
bit init_4;
Unet_Wrapper_v1_0_bfm_1_slave_5_0_slv_mem_t          slv_agent_5;
bit error_5;
bit done_5;
bit init_5;
Unet_Wrapper_v1_0_bfm_1_slave_6_0_slv_mem_t          slv_agent_6;
bit error_6;
bit done_6;
bit init_6;
Unet_Wrapper_v1_0_bfm_1_slave_7_0_slv_mem_t          slv_agent_7;
bit error_7;
bit done_7;
bit init_7;

  `BD_WRAPPER DUT(
      .ARESETN(reset), 
.UW_Channel0_INIT_AXI_TXN(init_0),
.UW_Channel0_TXN_DONE(done_0),
.UW_Channel0_ERROR(error_0),
.UW_Channel1_INIT_AXI_TXN(init_1),
.UW_Channel1_TXN_DONE(done_1),
.UW_Channel1_ERROR(error_1),
.UW_Channel2_INIT_AXI_TXN(init_2),
.UW_Channel2_TXN_DONE(done_2),
.UW_Channel2_ERROR(error_2),
.UW_Channel3_INIT_AXI_TXN(init_3),
.UW_Channel3_TXN_DONE(done_3),
.UW_Channel3_ERROR(error_3),
.UW_Channel4_INIT_AXI_TXN(init_4),
.UW_Channel4_TXN_DONE(done_4),
.UW_Channel4_ERROR(error_4),
.UW_Channel5_INIT_AXI_TXN(init_5),
.UW_Channel5_TXN_DONE(done_5),
.UW_Channel5_ERROR(error_5),
.UW_Channel6_INIT_AXI_TXN(init_6),
.UW_Channel6_TXN_DONE(done_6),
.UW_Channel6_ERROR(error_6),
.UW_Channel7_INIT_AXI_TXN(init_7),
.UW_Channel7_TXN_DONE(done_7),
.UW_Channel7_ERROR(error_7),
      .ACLK(clock) 
    ); 
  
initial begin
    slv_agent_0 = new("slave vip agent",DUT.`BD_INST_NAME.slave_0.inst.IF);
    slv_agent_0.vif_proxy.set_dummy_drive_type(XIL_AXI_VIF_DRIVE_NONE);
    slv_agent_0.set_agent_tag("Slave VIP");
    slv_agent_0.set_verbosity(slv_agent_verbosity);
    slv_agent_0.start_slave();
    slv_agent_1 = new("slave vip agent",DUT.`BD_INST_NAME.slave_1.inst.IF);
    slv_agent_1.vif_proxy.set_dummy_drive_type(XIL_AXI_VIF_DRIVE_NONE);
    slv_agent_1.set_agent_tag("Slave VIP");
    slv_agent_1.set_verbosity(slv_agent_verbosity);
    slv_agent_1.start_slave();
    slv_agent_2 = new("slave vip agent",DUT.`BD_INST_NAME.slave_2.inst.IF);
    slv_agent_2.vif_proxy.set_dummy_drive_type(XIL_AXI_VIF_DRIVE_NONE);
    slv_agent_2.set_agent_tag("Slave VIP");
    slv_agent_2.set_verbosity(slv_agent_verbosity);
    slv_agent_2.start_slave();
    slv_agent_3 = new("slave vip agent",DUT.`BD_INST_NAME.slave_3.inst.IF);
    slv_agent_3.vif_proxy.set_dummy_drive_type(XIL_AXI_VIF_DRIVE_NONE);
    slv_agent_3.set_agent_tag("Slave VIP");
    slv_agent_3.set_verbosity(slv_agent_verbosity);
    slv_agent_3.start_slave();
    slv_agent_4 = new("slave vip agent",DUT.`BD_INST_NAME.slave_4.inst.IF);
    slv_agent_4.vif_proxy.set_dummy_drive_type(XIL_AXI_VIF_DRIVE_NONE);
    slv_agent_4.set_agent_tag("Slave VIP");
    slv_agent_4.set_verbosity(slv_agent_verbosity);
    slv_agent_4.start_slave();
    slv_agent_5 = new("slave vip agent",DUT.`BD_INST_NAME.slave_5.inst.IF);
    slv_agent_5.vif_proxy.set_dummy_drive_type(XIL_AXI_VIF_DRIVE_NONE);
    slv_agent_5.set_agent_tag("Slave VIP");
    slv_agent_5.set_verbosity(slv_agent_verbosity);
    slv_agent_5.start_slave();
    slv_agent_6 = new("slave vip agent",DUT.`BD_INST_NAME.slave_6.inst.IF);
    slv_agent_6.vif_proxy.set_dummy_drive_type(XIL_AXI_VIF_DRIVE_NONE);
    slv_agent_6.set_agent_tag("Slave VIP");
    slv_agent_6.set_verbosity(slv_agent_verbosity);
    slv_agent_6.start_slave();
    slv_agent_7 = new("slave vip agent",DUT.`BD_INST_NAME.slave_7.inst.IF);
    slv_agent_7.vif_proxy.set_dummy_drive_type(XIL_AXI_VIF_DRIVE_NONE);
    slv_agent_7.set_agent_tag("Slave VIP");
    slv_agent_7.set_verbosity(slv_agent_verbosity);
    slv_agent_7.start_slave();
     $timeformat (-12, 1, " ps", 1);
  end
  initial begin
    reset <= 1'b0;
    #200ns;
    reset <= 1'b1;
    repeat (5) @(negedge clock); 
  end
  always #5 clock <= ~clock;
  initial begin
    init_0 = 0;
    #200ns;
    init_0 =1'b1;
    #20ns;
    init_0 = 1'b0;
    $display("EXAMPLE TEST UW_Channel0:");
      wait( done_0 == 1'b1);
      $display("UW_Channel0: PTGEN_TEST_FINISHED!");
      if ( error_0 ) begin
        $display("PTGEN_TEST: FAILED!");
      end else begin
        $display("PTGEN_TEST: PASSED!");
      end
    init_1 = 0;
    #200ns;
    init_1 =1'b1;
    #20ns;
    init_1 = 1'b0;
    $display("EXAMPLE TEST UW_Channel1:");
      wait( done_1 == 1'b1);
      $display("UW_Channel1: PTGEN_TEST_FINISHED!");
      if ( error_1 ) begin
        $display("PTGEN_TEST: FAILED!");
      end else begin
        $display("PTGEN_TEST: PASSED!");
      end
    init_2 = 0;
    #200ns;
    init_2 =1'b1;
    #20ns;
    init_2 = 1'b0;
    $display("EXAMPLE TEST UW_Channel2:");
      wait( done_2 == 1'b1);
      $display("UW_Channel2: PTGEN_TEST_FINISHED!");
      if ( error_2 ) begin
        $display("PTGEN_TEST: FAILED!");
      end else begin
        $display("PTGEN_TEST: PASSED!");
      end
    init_3 = 0;
    #200ns;
    init_3 =1'b1;
    #20ns;
    init_3 = 1'b0;
    $display("EXAMPLE TEST UW_Channel3:");
      wait( done_3 == 1'b1);
      $display("UW_Channel3: PTGEN_TEST_FINISHED!");
      if ( error_3 ) begin
        $display("PTGEN_TEST: FAILED!");
      end else begin
        $display("PTGEN_TEST: PASSED!");
      end
    init_4 = 0;
    #200ns;
    init_4 =1'b1;
    #20ns;
    init_4 = 1'b0;
    $display("EXAMPLE TEST UW_Channel4:");
      wait( done_4 == 1'b1);
      $display("UW_Channel4: PTGEN_TEST_FINISHED!");
      if ( error_4 ) begin
        $display("PTGEN_TEST: FAILED!");
      end else begin
        $display("PTGEN_TEST: PASSED!");
      end
    init_5 = 0;
    #200ns;
    init_5 =1'b1;
    #20ns;
    init_5 = 1'b0;
    $display("EXAMPLE TEST UW_Channel5:");
      wait( done_5 == 1'b1);
      $display("UW_Channel5: PTGEN_TEST_FINISHED!");
      if ( error_5 ) begin
        $display("PTGEN_TEST: FAILED!");
      end else begin
        $display("PTGEN_TEST: PASSED!");
      end
    init_6 = 0;
    #200ns;
    init_6 =1'b1;
    #20ns;
    init_6 = 1'b0;
    $display("EXAMPLE TEST UW_Channel6:");
      wait( done_6 == 1'b1);
      $display("UW_Channel6: PTGEN_TEST_FINISHED!");
      if ( error_6 ) begin
        $display("PTGEN_TEST: FAILED!");
      end else begin
        $display("PTGEN_TEST: PASSED!");
      end
    init_7 = 0;
    #200ns;
    init_7 =1'b1;
    #20ns;
    init_7 = 1'b0;
    $display("EXAMPLE TEST UW_Channel7:");
      wait( done_7 == 1'b1);
      $display("UW_Channel7: PTGEN_TEST_FINISHED!");
      if ( error_7 ) begin
        $display("PTGEN_TEST: FAILED!");
      end else begin
        $display("PTGEN_TEST: PASSED!");
      end
      #1ns;
      $finish;
  end
  initial begin
  #1;
    forever begin
      slv_agent_0.monitor.item_collected_port.get(slv_monitor_transaction);
      slave_moniter_transaction_queue.push_back(slv_monitor_transaction);
      slave_moniter_transaction_queue_size++;
    end
  end
  initial begin
  #1;
    forever begin
      slv_agent_1.monitor.item_collected_port.get(slv_monitor_transaction);
      slave_moniter_transaction_queue.push_back(slv_monitor_transaction);
      slave_moniter_transaction_queue_size++;
    end
  end
  initial begin
  #1;
    forever begin
      slv_agent_2.monitor.item_collected_port.get(slv_monitor_transaction);
      slave_moniter_transaction_queue.push_back(slv_monitor_transaction);
      slave_moniter_transaction_queue_size++;
    end
  end
  initial begin
  #1;
    forever begin
      slv_agent_3.monitor.item_collected_port.get(slv_monitor_transaction);
      slave_moniter_transaction_queue.push_back(slv_monitor_transaction);
      slave_moniter_transaction_queue_size++;
    end
  end
  initial begin
  #1;
    forever begin
      slv_agent_4.monitor.item_collected_port.get(slv_monitor_transaction);
      slave_moniter_transaction_queue.push_back(slv_monitor_transaction);
      slave_moniter_transaction_queue_size++;
    end
  end
  initial begin
  #1;
    forever begin
      slv_agent_5.monitor.item_collected_port.get(slv_monitor_transaction);
      slave_moniter_transaction_queue.push_back(slv_monitor_transaction);
      slave_moniter_transaction_queue_size++;
    end
  end
  initial begin
  #1;
    forever begin
      slv_agent_6.monitor.item_collected_port.get(slv_monitor_transaction);
      slave_moniter_transaction_queue.push_back(slv_monitor_transaction);
      slave_moniter_transaction_queue_size++;
    end
  end
  initial begin
  #1;
    forever begin
      slv_agent_7.monitor.item_collected_port.get(slv_monitor_transaction);
      slave_moniter_transaction_queue.push_back(slv_monitor_transaction);
      slave_moniter_transaction_queue_size++;
    end
  end

endmodule
