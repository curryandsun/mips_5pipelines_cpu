`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif

module DataCheck(
  input  [4:0] io_ID_EX_Rs,
  input  [4:0] io_ID_EX_Rt,
  input  [4:0] io_Ex_Mem_Rd,
  input  [4:0] io_Mem_WB_Rd,
  input        io_Ex_Mem_RegWr,
  input        io_Mem_WB_RegWr,
  output [1:0] io_ForwardA,
  output [1:0] io_ForwardB
);
  wire  _T_11;
  wire  _T_12;
  wire  _T_13;
  wire  _T_14;
  wire  _T_17;
  wire  _T_18;
  wire  _T_19;
  wire  _T_20;
  wire [1:0] _GEN_0;
  wire [1:0] _GEN_1;
  wire  _T_26;
  wire  _T_27;
  wire  _T_32;
  wire  _T_33;
  wire [1:0] _GEN_2;
  wire [1:0] _GEN_3;
  assign _T_11 = io_Ex_Mem_Rd != 5'h0;
  assign _T_12 = io_Ex_Mem_RegWr & _T_11;
  assign _T_13 = io_Ex_Mem_Rd == io_ID_EX_Rs;
  assign _T_14 = _T_12 & _T_13;
  assign _T_17 = io_Mem_WB_Rd != 5'h0;
  assign _T_18 = io_Mem_WB_RegWr & _T_17;
  assign _T_19 = io_Mem_WB_Rd == io_ID_EX_Rs;
  assign _T_20 = _T_18 & _T_19;
  assign _GEN_0 = _T_20 ? 2'h1 : 2'h0;
  assign _GEN_1 = _T_14 ? 2'h2 : _GEN_0;
  assign _T_26 = io_Ex_Mem_Rd == io_ID_EX_Rt;
  assign _T_27 = _T_12 & _T_26;
  assign _T_32 = io_Mem_WB_Rd == io_ID_EX_Rt;
  assign _T_33 = _T_18 & _T_32;
  assign _GEN_2 = _T_33 ? 2'h1 : 2'h0;
  assign _GEN_3 = _T_27 ? 2'h2 : _GEN_2;
  assign io_ForwardA = _GEN_1;
  assign io_ForwardB = _GEN_3;
endmodule
module ALU(
  input         clock,
  input         reset,
  input  [31:0] io_in1,
  input  [31:0] io_in2,
  input  [5:0]  io_ALUctr,
  output [31:0] io_ALUout
);
  reg [31:0] HI;
  reg [31:0] _RAND_0;
  reg [31:0] LO;
  reg [31:0] _RAND_1;
  wire  _T_12;
  wire [32:0] _T_13;
  wire [31:0] _T_14;
  wire  _T_17;
  wire [32:0] _T_18;
  wire [32:0] _T_19;
  wire [31:0] _T_20;
  wire  _T_31;
  wire  _T_37;
  wire [31:0] _T_38;
  wire  _T_41;
  wire [31:0] _T_42;
  wire [31:0] _T_43;
  wire  _T_46;
  wire  _T_50;
  wire [31:0] _T_51;
  wire  _T_54;
  wire [62:0] _GEN_84;
  wire [62:0] _T_56;
  wire  _T_59;
  wire [4:0] _T_60;
  wire [62:0] _T_61;
  wire  _T_64;
  wire [15:0] _T_65;
  wire [65566:0] _GEN_86;
  wire [65566:0] _T_66;
  wire  _T_69;
  wire [31:0] _T_71;
  wire  _T_74;
  wire [31:0] _T_75;
  wire [31:0] _T_77;
  wire [31:0] _T_78;
  wire  _T_81;
  wire [31:0] _T_84;
  wire [31:0] _T_85;
  wire  _T_88;
  wire [31:0] _T_90;
  wire  _T_93;
  wire  _T_97;
  wire  _T_101;
  wire  _T_104;
  wire  _T_107;
  wire [31:0] _T_109;
  wire [63:0] _T_111;
  wire [63:0] _T_112;
  wire [31:0] _T_113;
  wire [31:0] _T_114;
  wire  _T_117;
  wire [63:0] _T_119;
  wire [31:0] _T_120;
  wire [31:0] _T_121;
  wire  _T_124;
  wire [31:0] _GEN_0;
  wire [31:0] _T_128;
  wire [31:0] _T_129;
  wire [32:0] _T_132;
  wire [32:0] _T_133;
  wire  _T_136;
  wire [31:0] _GEN_3;
  wire [31:0] _T_138;
  wire [31:0] _T_139;
  wire [31:0] _GEN_1;
  wire [31:0] _GEN_2;
  wire [31:0] _GEN_4;
  wire [32:0] _GEN_5;
  wire [31:0] _GEN_7;
  wire [32:0] _GEN_8;
  wire [31:0] _GEN_10;
  wire [32:0] _GEN_11;
  wire [31:0] _GEN_12;
  wire [31:0] _GEN_14;
  wire [32:0] _GEN_15;
  wire [31:0] _GEN_16;
  wire [31:0] _GEN_18;
  wire [32:0] _GEN_19;
  wire [32:0] _GEN_20;
  wire [31:0] _GEN_21;
  wire [31:0] _GEN_23;
  wire [31:0] _GEN_24;
  wire [31:0] _GEN_25;
  wire [32:0] _GEN_27;
  wire [31:0] _GEN_28;
  wire [31:0] _GEN_30;
  wire [32:0] _GEN_31;
  wire [31:0] _GEN_32;
  wire [31:0] _GEN_34;
  wire [32:0] _GEN_35;
  wire [31:0] _GEN_36;
  wire [31:0] _GEN_38;
  wire [32:0] _GEN_39;
  wire [31:0] _GEN_40;
  wire [31:0] _GEN_42;
  wire [32:0] _GEN_43;
  wire [65566:0] _GEN_44;
  wire [31:0] _GEN_46;
  wire [32:0] _GEN_47;
  wire [65566:0] _GEN_48;
  wire [31:0] _GEN_50;
  wire [32:0] _GEN_51;
  wire [65566:0] _GEN_52;
  wire [31:0] _GEN_54;
  wire [32:0] _GEN_55;
  wire [65566:0] _GEN_56;
  wire [31:0] _GEN_58;
  wire [32:0] _GEN_59;
  wire [65566:0] _GEN_60;
  wire [31:0] _GEN_62;
  wire [32:0] _GEN_63;
  wire [65566:0] _GEN_64;
  wire [31:0] _GEN_66;
  wire [32:0] _GEN_67;
  wire [65566:0] _GEN_68;
  wire [31:0] _GEN_70;
  wire [32:0] _GEN_71;
  wire [65566:0] _GEN_72;
  wire [31:0] _GEN_74;
  wire [32:0] _GEN_75;
  wire [65566:0] _GEN_76;
  wire [31:0] _GEN_78;
  wire [32:0] _GEN_79;
  wire [65566:0] _GEN_80;
  wire [31:0] _GEN_82;
  wire [32:0] _GEN_83;
  assign _T_12 = io_ALUctr == 6'h20;
  assign _T_13 = io_in1 + io_in2;
  assign _T_14 = _T_13[31:0];
  assign _T_17 = io_ALUctr == 6'h21;
  assign _T_18 = io_in1 - io_in2;
  assign _T_19 = $unsigned(_T_18);
  assign _T_20 = _T_19[31:0];
  assign _T_31 = io_ALUctr == 6'h22;
  assign _T_37 = io_ALUctr == 6'h24;
  assign _T_38 = io_in1 & io_in2;
  assign _T_41 = io_ALUctr == 6'h27;
  assign _T_42 = io_in1 | io_in2;
  assign _T_43 = ~ _T_42;
  assign _T_46 = io_ALUctr == 6'h25;
  assign _T_50 = io_ALUctr == 6'h26;
  assign _T_51 = io_in1 ^ io_in2;
  assign _T_54 = io_ALUctr == 6'h3f;
  assign _GEN_84 = {{31'd0}, io_in2};
  assign _T_56 = _GEN_84 << 5'h10;
  assign _T_59 = io_ALUctr == 6'h0;
  assign _T_60 = io_in1[10:6];
  assign _T_61 = _GEN_84 << _T_60;
  assign _T_64 = io_ALUctr == 6'h4;
  assign _T_65 = io_in1[15:0];
  assign _GEN_86 = {{65535'd0}, io_in2};
  assign _T_66 = _GEN_86 << _T_65;
  assign _T_69 = io_ALUctr == 6'h6;
  assign _T_71 = io_in2 >> _T_65;
  assign _T_74 = io_ALUctr == 6'h3;
  assign _T_75 = $signed(io_in2);
  assign _T_77 = $signed(_T_75) >>> _T_60;
  assign _T_78 = $unsigned(_T_77);
  assign _T_81 = io_ALUctr == 6'h7;
  assign _T_84 = $signed(_T_75) >>> _T_65;
  assign _T_85 = $unsigned(_T_84);
  assign _T_88 = io_ALUctr == 6'h2;
  assign _T_90 = io_in2 >> _T_60;
  assign _T_93 = io_ALUctr == 6'h10;
  assign _T_97 = io_ALUctr == 6'h11;
  assign _T_101 = io_ALUctr == 6'h12;
  assign _T_104 = io_ALUctr == 6'h13;
  assign _T_107 = io_ALUctr == 6'h28;
  assign _T_109 = $signed(io_in1);
  assign _T_111 = $signed(_T_109) * $signed(_T_75);
  assign _T_112 = $unsigned(_T_111);
  assign _T_113 = _T_112[63:32];
  assign _T_114 = _T_112[31:0];
  assign _T_117 = io_ALUctr == 6'h29;
  assign _T_119 = io_in1 * io_in2;
  assign _T_120 = _T_119[63:32];
  assign _T_121 = _T_119[31:0];
  assign _T_124 = io_ALUctr == 6'h2a;
  assign _GEN_0 = $signed(_T_109) % $signed(_T_75);
  assign _T_128 = _GEN_0[31:0];
  assign _T_129 = $unsigned(_T_128);
  assign _T_132 = $signed(_T_109) / $signed(_T_75);
  assign _T_133 = $unsigned(_T_132);
  assign _T_136 = io_ALUctr == 6'h2b;
  assign _GEN_3 = io_in1 % io_in2;
  assign _T_138 = _GEN_3[31:0];
  assign _T_139 = io_in1 / io_in2;
  assign _GEN_1 = _T_136 ? _T_138 : HI;
  assign _GEN_2 = _T_136 ? _T_139 : LO;
  assign _GEN_4 = _T_124 ? _T_129 : _GEN_1;
  assign _GEN_5 = _T_124 ? _T_133 : {{1'd0}, _GEN_2};
  assign _GEN_7 = _T_117 ? _T_120 : _GEN_4;
  assign _GEN_8 = _T_117 ? {{1'd0}, _T_121} : _GEN_5;
  assign _GEN_10 = _T_107 ? _T_113 : _GEN_7;
  assign _GEN_11 = _T_107 ? {{1'd0}, _T_114} : _GEN_8;
  assign _GEN_12 = _T_104 ? LO : 32'h0;
  assign _GEN_14 = _T_104 ? HI : _GEN_10;
  assign _GEN_15 = _T_104 ? {{1'd0}, LO} : _GEN_11;
  assign _GEN_16 = _T_101 ? HI : _GEN_12;
  assign _GEN_18 = _T_101 ? HI : _GEN_14;
  assign _GEN_19 = _T_101 ? {{1'd0}, LO} : _GEN_15;
  assign _GEN_20 = _T_97 ? {{1'd0}, io_in1} : _GEN_19;
  assign _GEN_21 = _T_97 ? 32'h0 : _GEN_16;
  assign _GEN_23 = _T_97 ? HI : _GEN_18;
  assign _GEN_24 = _T_93 ? io_in1 : _GEN_23;
  assign _GEN_25 = _T_93 ? 32'h0 : _GEN_21;
  assign _GEN_27 = _T_93 ? {{1'd0}, LO} : _GEN_20;
  assign _GEN_28 = _T_88 ? _T_90 : _GEN_25;
  assign _GEN_30 = _T_88 ? HI : _GEN_24;
  assign _GEN_31 = _T_88 ? {{1'd0}, LO} : _GEN_27;
  assign _GEN_32 = _T_81 ? _T_85 : _GEN_28;
  assign _GEN_34 = _T_81 ? HI : _GEN_30;
  assign _GEN_35 = _T_81 ? {{1'd0}, LO} : _GEN_31;
  assign _GEN_36 = _T_74 ? _T_78 : _GEN_32;
  assign _GEN_38 = _T_74 ? HI : _GEN_34;
  assign _GEN_39 = _T_74 ? {{1'd0}, LO} : _GEN_35;
  assign _GEN_40 = _T_69 ? _T_71 : _GEN_36;
  assign _GEN_42 = _T_69 ? HI : _GEN_38;
  assign _GEN_43 = _T_69 ? {{1'd0}, LO} : _GEN_39;
  assign _GEN_44 = _T_64 ? _T_66 : {{65535'd0}, _GEN_40};
  assign _GEN_46 = _T_64 ? HI : _GEN_42;
  assign _GEN_47 = _T_64 ? {{1'd0}, LO} : _GEN_43;
  assign _GEN_48 = _T_59 ? {{65504'd0}, _T_61} : _GEN_44;
  assign _GEN_50 = _T_59 ? HI : _GEN_46;
  assign _GEN_51 = _T_59 ? {{1'd0}, LO} : _GEN_47;
  assign _GEN_52 = _T_54 ? {{65504'd0}, _T_56} : _GEN_48;
  assign _GEN_54 = _T_54 ? HI : _GEN_50;
  assign _GEN_55 = _T_54 ? {{1'd0}, LO} : _GEN_51;
  assign _GEN_56 = _T_50 ? {{65535'd0}, _T_51} : _GEN_52;
  assign _GEN_58 = _T_50 ? HI : _GEN_54;
  assign _GEN_59 = _T_50 ? {{1'd0}, LO} : _GEN_55;
  assign _GEN_60 = _T_46 ? {{65535'd0}, _T_42} : _GEN_56;
  assign _GEN_62 = _T_46 ? HI : _GEN_58;
  assign _GEN_63 = _T_46 ? {{1'd0}, LO} : _GEN_59;
  assign _GEN_64 = _T_41 ? {{65535'd0}, _T_43} : _GEN_60;
  assign _GEN_66 = _T_41 ? HI : _GEN_62;
  assign _GEN_67 = _T_41 ? {{1'd0}, LO} : _GEN_63;
  assign _GEN_68 = _T_37 ? {{65535'd0}, _T_38} : _GEN_64;
  assign _GEN_70 = _T_37 ? HI : _GEN_66;
  assign _GEN_71 = _T_37 ? {{1'd0}, LO} : _GEN_67;
  assign _GEN_72 = _T_31 ? {{65535'd0}, _T_20} : _GEN_68;
  assign _GEN_74 = _T_31 ? HI : _GEN_70;
  assign _GEN_75 = _T_31 ? {{1'd0}, LO} : _GEN_71;
  assign _GEN_76 = _T_17 ? {{65535'd0}, _T_20} : _GEN_72;
  assign _GEN_78 = _T_17 ? HI : _GEN_74;
  assign _GEN_79 = _T_17 ? {{1'd0}, LO} : _GEN_75;
  assign _GEN_80 = _T_12 ? {{65535'd0}, _T_14} : _GEN_76;
  assign _GEN_82 = _T_12 ? HI : _GEN_78;
  assign _GEN_83 = _T_12 ? {{1'd0}, LO} : _GEN_79;
  assign io_ALUout = _GEN_80[31:0];
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  HI = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  LO = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      HI <= 32'h0;
    end else begin
      if (!(_T_12)) begin
        if (!(_T_17)) begin
          if (!(_T_31)) begin
            if (!(_T_37)) begin
              if (!(_T_41)) begin
                if (!(_T_46)) begin
                  if (!(_T_50)) begin
                    if (!(_T_54)) begin
                      if (!(_T_59)) begin
                        if (!(_T_64)) begin
                          if (!(_T_69)) begin
                            if (!(_T_74)) begin
                              if (!(_T_81)) begin
                                if (!(_T_88)) begin
                                  if (_T_93) begin
                                    HI <= io_in1;
                                  end else begin
                                    if (!(_T_97)) begin
                                      if (!(_T_101)) begin
                                        if (!(_T_104)) begin
                                          if (_T_107) begin
                                            HI <= _T_113;
                                          end else begin
                                            if (_T_117) begin
                                              HI <= _T_120;
                                            end else begin
                                              if (_T_124) begin
                                                HI <= _T_129;
                                              end else begin
                                                if (_T_136) begin
                                                  HI <= _T_138;
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      LO <= 32'h0;
    end else begin
      LO <= _GEN_83[31:0];
    end
  end
endmodule
module CMP(
  input  [31:0] io_in1,
  input  [31:0] io_in2,
  input  [3:0]  io_CMPctr,
  output        io_CMPout
);
  wire  _T_7;
  wire  _T_8;
  wire  _T_10;
  wire  _T_11;
  wire  _T_13;
  wire [31:0] _T_14;
  wire [31:0] _T_15;
  wire  _T_16;
  wire  _T_18;
  wire  _T_19;
  wire  _T_21;
  wire  _T_24;
  wire  _T_26;
  wire  _T_29;
  wire  _T_31;
  wire  _T_34;
  wire  _T_36;
  wire  _T_39;
  wire  _GEN_0;
  wire  _GEN_1;
  wire  _GEN_2;
  wire  _GEN_3;
  wire  _GEN_4;
  wire  _GEN_5;
  wire  _GEN_6;
  wire  _GEN_7;
  assign _T_7 = io_CMPctr == 4'h0;
  assign _T_8 = io_in1 == io_in2;
  assign _T_10 = io_CMPctr == 4'h7;
  assign _T_11 = io_in1 != io_in2;
  assign _T_13 = io_CMPctr == 4'h1;
  assign _T_14 = $signed(io_in1);
  assign _T_15 = $signed(io_in2);
  assign _T_16 = $signed(_T_14) < $signed(_T_15);
  assign _T_18 = io_CMPctr == 4'h2;
  assign _T_19 = io_in1 < io_in2;
  assign _T_21 = io_CMPctr == 4'h5;
  assign _T_24 = $signed(_T_14) >= $signed(32'sh0);
  assign _T_26 = io_CMPctr == 4'h3;
  assign _T_29 = $signed(_T_14) > $signed(32'sh0);
  assign _T_31 = io_CMPctr == 4'h6;
  assign _T_34 = $signed(_T_14) <= $signed(32'sh0);
  assign _T_36 = io_CMPctr == 4'ha;
  assign _T_39 = $signed(_T_14) < $signed(32'sh0);
  assign _GEN_0 = _T_36 ? _T_39 : 1'h0;
  assign _GEN_1 = _T_31 ? _T_34 : _GEN_0;
  assign _GEN_2 = _T_26 ? _T_29 : _GEN_1;
  assign _GEN_3 = _T_21 ? _T_24 : _GEN_2;
  assign _GEN_4 = _T_18 ? _T_19 : _GEN_3;
  assign _GEN_5 = _T_13 ? _T_16 : _GEN_4;
  assign _GEN_6 = _T_10 ? _T_11 : _GEN_5;
  assign _GEN_7 = _T_7 ? _T_8 : _GEN_6;
  assign io_CMPout = _GEN_7;
endmodule
module CP0(
  input         clock,
  input  [4:0]  io_index,
  input  [31:0] io_datain,
  input  [3:0]  io_CP0ctr,
  output [31:0] io_dataout
);
  reg [31:0] RegFile [0:31];
  reg [31:0] _RAND_0;
  wire [31:0] RegFile__T_14_data;
  wire [4:0] RegFile__T_14_addr;
  wire [31:0] RegFile__T_20_data;
  wire [4:0] RegFile__T_20_addr;
  wire [31:0] RegFile__T_10_data;
  wire [4:0] RegFile__T_10_addr;
  wire  RegFile__T_10_mask;
  wire  RegFile__T_10_en;
  wire  _T_9;
  wire  _T_13;
  wire [31:0] _T_17;
  wire  _T_18;
  wire [31:0] _GEN_3;
  wire [31:0] _GEN_7;
  wire  _GEN_10;
  wire [31:0] _GEN_15;
  wire  _GEN_18;
  wire  _GEN_21;
  assign RegFile__T_14_addr = io_index;
  assign RegFile__T_14_data = RegFile[RegFile__T_14_addr];
  assign RegFile__T_20_addr = 5'he;
  assign RegFile__T_20_data = RegFile[RegFile__T_20_addr];
  assign RegFile__T_10_data = io_datain;
  assign RegFile__T_10_addr = io_index;
  assign RegFile__T_10_mask = _T_9;
  assign RegFile__T_10_en = _T_9;
  assign _T_9 = io_CP0ctr == 4'h9;
  assign _T_13 = io_CP0ctr == 4'h8;
  assign _T_17 = {{28'd0}, io_CP0ctr};
  assign _T_18 = 32'h42000018 == _T_17;
  assign _GEN_3 = _T_18 ? RegFile__T_20_data : 32'h0;
  assign _GEN_7 = _T_13 ? RegFile__T_14_data : _GEN_3;
  assign _GEN_10 = _T_13 ? 1'h0 : _T_18;
  assign _GEN_15 = _T_9 ? 32'h0 : _GEN_7;
  assign _GEN_18 = _T_9 ? 1'h0 : _T_13;
  assign _GEN_21 = _T_9 ? 1'h0 : _GEN_10;
  assign io_dataout = _GEN_15;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  _RAND_0 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    RegFile[initvar] = _RAND_0[31:0];
  `endif // RANDOMIZE_MEM_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(RegFile__T_10_en & RegFile__T_10_mask) begin
      RegFile[RegFile__T_10_addr] <= RegFile__T_10_data;
    end
  end
endmodule
module Pipelines(
  input         clock,
  input         reset,
  input         io_boot,
  output [31:0] io_Inst,
  output [31:0] io_imem_addr,
  input         io_test_wr,
  input  [31:0] io_test_addr,
  input  [31:0] io_test_inst
);
  reg [31:0] imm [0:1023];
  reg [31:0] _RAND_0;
  wire [31:0] imm__T_109_data;
  wire [9:0] imm__T_109_addr;
  wire [31:0] imm__T_46_data;
  wire [9:0] imm__T_46_addr;
  wire  imm__T_46_mask;
  wire  imm__T_46_en;
  reg [7:0] dmm [0:1023];
  reg [31:0] _RAND_1;
  wire [7:0] dmm_Data0_data;
  wire [9:0] dmm_Data0_addr;
  wire [7:0] dmm_Data1_data;
  wire [9:0] dmm_Data1_addr;
  wire [7:0] dmm_Data2_data;
  wire [9:0] dmm_Data2_addr;
  wire [7:0] dmm_Data3_data;
  wire [9:0] dmm_Data3_addr;
  wire [7:0] dmm__T_1887_data;
  wire [9:0] dmm__T_1887_addr;
  wire  dmm__T_1887_mask;
  wire  dmm__T_1887_en;
  wire [7:0] dmm__T_1894_data;
  wire [9:0] dmm__T_1894_addr;
  wire  dmm__T_1894_mask;
  wire  dmm__T_1894_en;
  wire [7:0] dmm__T_1899_data;
  wire [9:0] dmm__T_1899_addr;
  wire  dmm__T_1899_mask;
  wire  dmm__T_1899_en;
  wire [7:0] dmm__T_1904_data;
  wire [9:0] dmm__T_1904_addr;
  wire  dmm__T_1904_mask;
  wire  dmm__T_1904_en;
  wire [7:0] dmm__T_1909_data;
  wire [9:0] dmm__T_1909_addr;
  wire  dmm__T_1909_mask;
  wire  dmm__T_1909_en;
  wire [7:0] dmm__T_1914_data;
  wire [9:0] dmm__T_1914_addr;
  wire  dmm__T_1914_mask;
  wire  dmm__T_1914_en;
  wire [7:0] dmm__T_1919_data;
  wire [9:0] dmm__T_1919_addr;
  wire  dmm__T_1919_mask;
  wire  dmm__T_1919_en;
  reg [31:0] RegFile [0:31];
  reg [31:0] _RAND_2;
  wire [31:0] RegFile__T_120_data;
  wire [4:0] RegFile__T_120_addr;
  wire [31:0] RegFile__T_125_data;
  wire [4:0] RegFile__T_125_addr;
  wire [31:0] RegFile__T_114_data;
  wire [4:0] RegFile__T_114_addr;
  wire  RegFile__T_114_mask;
  wire  RegFile__T_114_en;
  wire [31:0] RegFile__T_1983_data;
  wire [4:0] RegFile__T_1983_addr;
  wire  RegFile__T_1983_mask;
  wire  RegFile__T_1983_en;
  wire [4:0] dataCheck_io_ID_EX_Rs;
  wire [4:0] dataCheck_io_ID_EX_Rt;
  wire [4:0] dataCheck_io_Ex_Mem_Rd;
  wire [4:0] dataCheck_io_Mem_WB_Rd;
  wire  dataCheck_io_Ex_Mem_RegWr;
  wire  dataCheck_io_Mem_WB_RegWr;
  wire [1:0] dataCheck_io_ForwardA;
  wire [1:0] dataCheck_io_ForwardB;
  wire  alu_clock;
  wire  alu_reset;
  wire [31:0] alu_io_in1;
  wire [31:0] alu_io_in2;
  wire [5:0] alu_io_ALUctr;
  wire [31:0] alu_io_ALUout;
  wire [31:0] cmp_io_in1;
  wire [31:0] cmp_io_in2;
  wire [3:0] cmp_io_CMPctr;
  wire  cmp_io_CMPout;
  wire  cp0_clock;
  wire [4:0] cp0_io_index;
  wire [31:0] cp0_io_datain;
  wire [3:0] cp0_io_CP0ctr;
  wire [31:0] cp0_io_dataout;
  wire  RegWr;
  wire [1:0] RegSrc;
  wire  AL;
  wire  MemWr;
  wire  Jr;
  wire  Shamt;
  wire  RegDst;
  wire [5:0] ALUctr;
  wire [3:0] CMPctr;
  wire  ALUsrc;
  wire  ExtOp;
  wire  Jump;
  wire  BorJ;
  wire [4:0] Rs;
  wire [4:0] Rd;
  wire [4:0] Rt;
  wire [31:0] BusA;
  wire [31:0] BusB;
  wire [25:0] Imm26;
  wire [31:0] Imm32;
  wire [31:0] Memout;
  wire [31:0] Memin;
  wire  CMPout;
  wire  nPC_sel;
  wire [31:0] pc_next;
  wire [31:0] pc_plus4;
  wire [31:0] pc_br;
  reg [31:0] pc_reg;
  reg [31:0] _RAND_3;
  wire  _T_43;
  wire [29:0] _T_44;
  wire [9:0] _T_45;
  reg [31:0] IF_ID_ins;
  reg [31:0] _RAND_4;
  reg [31:0] IF_ID_pcPlus4;
  reg [31:0] _RAND_5;
  reg  ID_EX_RegWr;
  reg [31:0] _RAND_6;
  reg [1:0] ID_EX_RegSrc;
  reg [31:0] _RAND_7;
  reg  ID_EX_AL;
  reg [31:0] _RAND_8;
  reg  ID_EX_MemWr;
  reg [31:0] _RAND_9;
  reg  ID_EX_Jr;
  reg [31:0] _RAND_10;
  reg  ID_EX_Shamt;
  reg [31:0] _RAND_11;
  reg  ID_EX_RegDst;
  reg [31:0] _RAND_12;
  reg [5:0] ID_EX_ALUctr;
  reg [31:0] _RAND_13;
  reg  ID_EX_ALUsrc;
  reg [31:0] _RAND_14;
  reg  ID_EX_Jump;
  reg [31:0] _RAND_15;
  reg  ID_EX_BorJ;
  reg [31:0] _RAND_16;
  reg [3:0] ID_EX_CMPctr;
  reg [31:0] _RAND_17;
  reg [31:0] ID_EX_BusA;
  reg [31:0] _RAND_18;
  reg [31:0] ID_EX_BusB;
  reg [31:0] _RAND_19;
  reg [4:0] ID_Ex_Rs;
  reg [31:0] _RAND_20;
  reg [4:0] ID_EX_Rd;
  reg [31:0] _RAND_21;
  reg [4:0] ID_EX_Rt;
  reg [31:0] _RAND_22;
  reg [31:0] ID_EX_pcPlus4;
  reg [31:0] _RAND_23;
  reg [25:0] ID_EX_Imm26;
  reg [31:0] _RAND_24;
  reg [31:0] ID_EX_Imm32;
  reg [31:0] _RAND_25;
  reg  EX_MEM_RegWr;
  reg [31:0] _RAND_26;
  reg [1:0] EX_MEM_RegSrc;
  reg [31:0] _RAND_27;
  reg  EX_MEM_AL;
  reg [31:0] _RAND_28;
  reg  EX_MEM_MemWr;
  reg [31:0] _RAND_29;
  wire [32:0] _T_80;
  wire [31:0] _T_81;
  reg [31:0] EX_MEM_pcAL;
  reg [31:0] _RAND_30;
  wire [31:0] _T_83;
  reg [31:0] Addr0;
  reg [31:0] _RAND_31;
  reg [4:0] EX_MEM_Rt;
  reg [31:0] _RAND_32;
  reg [3:0] EX_MEM_LSctr;
  reg [31:0] _RAND_33;
  reg  EX_MEM_CMPout;
  reg [31:0] _RAND_34;
  reg [31:0] EX_MEM_dataIn;
  reg [31:0] _RAND_35;
  wire [4:0] _T_90;
  wire [4:0] _T_91;
  reg [4:0] EX_MEM_reg_index;
  reg [31:0] _RAND_36;
  reg  MEM_WB_RegWr;
  reg [31:0] _RAND_37;
  reg [1:0] MEM_WB_RegSrc;
  reg [31:0] _RAND_38;
  reg  MEM_WB_AL;
  reg [31:0] _RAND_39;
  reg [31:0] MEM_WB_pcAL;
  reg [31:0] _RAND_40;
  reg [31:0] MEM_WB_ALUout;
  reg [31:0] _RAND_41;
  reg  MEM_WB_CMPout;
  reg [31:0] _RAND_42;
  reg [4:0] MEM_WB_reg_index;
  reg [31:0] _RAND_43;
  reg [31:0] MEM_WB_MemOut;
  reg [31:0] _RAND_44;
  wire [31:0] Reg_WrData;
  wire [4:0] Reg_index;
  wire [29:0] _T_107;
  wire [9:0] _T_108;
  wire [31:0] _GEN_4;
  wire  _GEN_7;
  wire [31:0] _GEN_8;
  wire  _GEN_11;
  wire [4:0] _T_110;
  wire [4:0] _T_111;
  wire [4:0] _T_112;
  wire  _T_118;
  wire  _T_119;
  wire [31:0] _GEN_12;
  wire  _GEN_15;
  wire  _T_123;
  wire  _T_124;
  wire [31:0] _GEN_16;
  wire  _GEN_19;
  wire [31:0] _T_869;
  wire  _T_870;
  wire [31:0] _T_873;
  wire  _T_874;
  wire  _T_878;
  wire  _T_882;
  wire  _T_886;
  wire  _T_890;
  wire  _T_894;
  wire  _T_898;
  wire  _T_902;
  wire  _T_906;
  wire [31:0] _T_909;
  wire  _T_910;
  wire  _T_914;
  wire  _T_918;
  wire  _T_922;
  wire  _T_926;
  wire  _T_930;
  wire [31:0] _T_933;
  wire  _T_934;
  wire  _T_938;
  wire  _T_942;
  wire  _T_946;
  wire  _T_950;
  wire  _T_954;
  wire [31:0] _T_957;
  wire  _T_958;
  wire  _T_962;
  wire  _T_966;
  wire  _T_970;
  wire  _T_974;
  wire  _T_978;
  wire  _T_982;
  wire  _T_986;
  wire [31:0] _T_989;
  wire  _T_990;
  wire  _T_994;
  wire  _T_998;
  wire  _T_1002;
  wire  _T_1006;
  wire  _T_1010;
  wire  _T_1014;
  wire  _T_1018;
  wire [31:0] _T_1021;
  wire  _T_1022;
  wire [31:0] _T_1025;
  wire  _T_1026;
  wire [31:0] _T_1029;
  wire  _T_1030;
  wire  _T_1034;
  wire  _T_1038;
  wire  _T_1042;
  wire  _T_1046;
  wire  _T_1050;
  wire  _T_1054;
  wire  _T_1058;
  wire  _T_1062;
  wire  _T_1066;
  wire  _T_1070;
  wire  _T_1074;
  wire  _T_1078;
  wire [31:0] _T_1081;
  wire  _T_1082;
  wire  _T_1086;
  wire  _T_1093;
  wire  _T_1094;
  wire  _T_1095;
  wire  _T_1096;
  wire  _T_1097;
  wire  _T_1098;
  wire  _T_1099;
  wire  _T_1100;
  wire  _T_1101;
  wire  _T_1102;
  wire  _T_1103;
  wire  _T_1104;
  wire  _T_1105;
  wire  _T_1106;
  wire  _T_1107;
  wire  _T_1108;
  wire  _T_1109;
  wire  _T_1110;
  wire  _T_1111;
  wire  _T_1112;
  wire  _T_1113;
  wire  _T_1114;
  wire  _T_1115;
  wire  _T_1116;
  wire  _T_1117;
  wire  _T_1118;
  wire  _T_1119;
  wire  _T_1120;
  wire  _T_1121;
  wire  _T_1122;
  wire  _T_1123;
  wire  _T_1124;
  wire  _T_1125;
  wire  _T_1126;
  wire  _T_1127;
  wire  _T_1128;
  wire  _T_1129;
  wire  _T_1130;
  wire  _T_1131;
  wire  _T_1132;
  wire  _T_1133;
  wire  _T_1134;
  wire  _T_1135;
  wire  _T_1136;
  wire  _T_1137;
  wire  _T_1138;
  wire  _T_1139;
  wire  _T_1140;
  wire  _T_1141;
  wire  _T_1142;
  wire  _T_1143;
  wire  _T_1144;
  wire  _T_1145;
  wire  control_0;
  wire  _T_1163;
  wire  _T_1164;
  wire  _T_1165;
  wire  _T_1166;
  wire  _T_1167;
  wire  _T_1168;
  wire  _T_1169;
  wire  _T_1170;
  wire  _T_1171;
  wire  _T_1172;
  wire  _T_1173;
  wire  _T_1174;
  wire  _T_1175;
  wire  _T_1176;
  wire  _T_1177;
  wire  _T_1178;
  wire  _T_1179;
  wire  _T_1180;
  wire  _T_1181;
  wire  _T_1182;
  wire  _T_1183;
  wire  _T_1184;
  wire  _T_1185;
  wire  _T_1186;
  wire  _T_1187;
  wire  _T_1188;
  wire  _T_1189;
  wire  _T_1190;
  wire  _T_1191;
  wire  _T_1192;
  wire  _T_1193;
  wire  _T_1194;
  wire  _T_1195;
  wire  _T_1196;
  wire  _T_1197;
  wire  _T_1198;
  wire  _T_1199;
  wire  _T_1200;
  wire  control_1;
  wire  _T_1231;
  wire  _T_1232;
  wire  _T_1233;
  wire  _T_1234;
  wire  _T_1235;
  wire  _T_1236;
  wire  _T_1237;
  wire  _T_1238;
  wire  _T_1239;
  wire  _T_1240;
  wire  _T_1241;
  wire  _T_1242;
  wire  _T_1243;
  wire  _T_1244;
  wire  _T_1245;
  wire  _T_1246;
  wire  _T_1247;
  wire  _T_1248;
  wire  _T_1249;
  wire  _T_1250;
  wire  _T_1251;
  wire  _T_1252;
  wire  _T_1253;
  wire  _T_1254;
  wire  _T_1255;
  wire  control_2;
  wire [3:0] _T_1257;
  wire [3:0] _T_1258;
  wire [3:0] _T_1259;
  wire [3:0] _T_1260;
  wire [3:0] _T_1261;
  wire [3:0] _T_1262;
  wire [3:0] _T_1263;
  wire [3:0] _T_1264;
  wire [3:0] _T_1265;
  wire [3:0] _T_1266;
  wire [3:0] _T_1267;
  wire [3:0] _T_1268;
  wire [3:0] _T_1269;
  wire [3:0] _T_1270;
  wire [3:0] _T_1271;
  wire [3:0] _T_1272;
  wire [3:0] _T_1273;
  wire [3:0] _T_1274;
  wire [3:0] _T_1275;
  wire [3:0] _T_1276;
  wire [3:0] _T_1277;
  wire [3:0] _T_1278;
  wire [3:0] _T_1279;
  wire [3:0] _T_1280;
  wire [3:0] _T_1281;
  wire [3:0] _T_1282;
  wire [3:0] _T_1283;
  wire [3:0] _T_1284;
  wire [3:0] _T_1285;
  wire [3:0] _T_1286;
  wire [3:0] _T_1287;
  wire [3:0] _T_1288;
  wire [3:0] _T_1289;
  wire [3:0] _T_1290;
  wire [3:0] _T_1291;
  wire [3:0] _T_1292;
  wire [3:0] _T_1293;
  wire [3:0] _T_1294;
  wire [3:0] _T_1295;
  wire [3:0] _T_1296;
  wire [3:0] _T_1297;
  wire [3:0] _T_1298;
  wire [3:0] _T_1299;
  wire [3:0] _T_1300;
  wire [3:0] _T_1301;
  wire [3:0] _T_1302;
  wire [3:0] _T_1303;
  wire [3:0] _T_1304;
  wire [3:0] _T_1305;
  wire [3:0] _T_1306;
  wire [3:0] _T_1307;
  wire [3:0] _T_1308;
  wire [3:0] _T_1309;
  wire [3:0] _T_1310;
  wire [3:0] control_3;
  wire  _T_1326;
  wire  _T_1327;
  wire  _T_1328;
  wire  _T_1329;
  wire  _T_1330;
  wire  _T_1331;
  wire  _T_1332;
  wire  _T_1333;
  wire  _T_1334;
  wire  _T_1335;
  wire  _T_1336;
  wire  _T_1337;
  wire  _T_1338;
  wire  _T_1339;
  wire  _T_1340;
  wire  _T_1341;
  wire  _T_1342;
  wire  _T_1343;
  wire  _T_1344;
  wire  _T_1345;
  wire  _T_1346;
  wire  _T_1347;
  wire  _T_1348;
  wire  _T_1349;
  wire  _T_1350;
  wire  _T_1351;
  wire  _T_1352;
  wire  _T_1353;
  wire  _T_1354;
  wire  _T_1355;
  wire  _T_1356;
  wire  _T_1357;
  wire  _T_1358;
  wire  _T_1359;
  wire  _T_1360;
  wire  _T_1361;
  wire  _T_1362;
  wire  _T_1363;
  wire  _T_1364;
  wire  _T_1365;
  wire  control_4;
  wire [2:0] _T_1370;
  wire [2:0] _T_1371;
  wire [2:0] _T_1372;
  wire [2:0] _T_1373;
  wire [2:0] _T_1374;
  wire [2:0] _T_1375;
  wire [2:0] _T_1376;
  wire [2:0] _T_1377;
  wire [2:0] _T_1378;
  wire [2:0] _T_1379;
  wire [2:0] _T_1380;
  wire [2:0] _T_1381;
  wire [2:0] _T_1382;
  wire [2:0] _T_1383;
  wire [2:0] _T_1384;
  wire [2:0] _T_1385;
  wire [2:0] _T_1386;
  wire [2:0] _T_1387;
  wire [2:0] _T_1388;
  wire [2:0] _T_1389;
  wire [2:0] _T_1390;
  wire [2:0] _T_1391;
  wire [2:0] _T_1392;
  wire [2:0] _T_1393;
  wire [2:0] _T_1394;
  wire [2:0] _T_1395;
  wire [2:0] _T_1396;
  wire [2:0] _T_1397;
  wire [2:0] _T_1398;
  wire [2:0] _T_1399;
  wire [2:0] _T_1400;
  wire [2:0] _T_1401;
  wire [2:0] _T_1402;
  wire [2:0] _T_1403;
  wire [2:0] _T_1404;
  wire [2:0] _T_1405;
  wire [2:0] _T_1406;
  wire [2:0] _T_1407;
  wire [2:0] _T_1408;
  wire [2:0] _T_1409;
  wire [2:0] _T_1410;
  wire [2:0] _T_1411;
  wire [2:0] _T_1412;
  wire [2:0] _T_1413;
  wire [2:0] _T_1414;
  wire [2:0] _T_1415;
  wire [2:0] _T_1416;
  wire [2:0] _T_1417;
  wire [2:0] _T_1418;
  wire [2:0] _T_1419;
  wire [2:0] _T_1420;
  wire [2:0] control_5;
  wire  _T_1424;
  wire  _T_1425;
  wire  _T_1426;
  wire  _T_1427;
  wire  _T_1428;
  wire  _T_1429;
  wire  _T_1430;
  wire  _T_1431;
  wire  _T_1432;
  wire  _T_1433;
  wire  _T_1434;
  wire  _T_1435;
  wire  _T_1436;
  wire  _T_1437;
  wire  _T_1438;
  wire  _T_1439;
  wire  _T_1440;
  wire  _T_1441;
  wire  _T_1442;
  wire  _T_1443;
  wire  _T_1444;
  wire  _T_1445;
  wire  _T_1446;
  wire  _T_1447;
  wire  _T_1448;
  wire  _T_1449;
  wire  _T_1450;
  wire  _T_1451;
  wire  _T_1452;
  wire  _T_1453;
  wire  _T_1454;
  wire  _T_1455;
  wire  _T_1456;
  wire  _T_1457;
  wire  _T_1458;
  wire  _T_1459;
  wire  _T_1460;
  wire  _T_1461;
  wire  _T_1462;
  wire  _T_1463;
  wire  _T_1464;
  wire  _T_1465;
  wire  _T_1466;
  wire  _T_1467;
  wire  _T_1468;
  wire  _T_1469;
  wire  _T_1470;
  wire  _T_1471;
  wire  _T_1472;
  wire  _T_1473;
  wire  _T_1474;
  wire  _T_1475;
  wire  control_6;
  wire  _T_1481;
  wire  _T_1482;
  wire  _T_1483;
  wire  _T_1484;
  wire  _T_1485;
  wire  _T_1486;
  wire  _T_1487;
  wire  _T_1488;
  wire  _T_1489;
  wire  _T_1490;
  wire  _T_1491;
  wire  _T_1492;
  wire  _T_1493;
  wire  _T_1494;
  wire  _T_1495;
  wire  _T_1496;
  wire  _T_1497;
  wire  _T_1498;
  wire  _T_1499;
  wire  _T_1500;
  wire  _T_1501;
  wire  _T_1502;
  wire  _T_1503;
  wire  _T_1504;
  wire  _T_1505;
  wire  _T_1506;
  wire  _T_1507;
  wire  _T_1508;
  wire  _T_1509;
  wire  _T_1510;
  wire  _T_1511;
  wire  _T_1512;
  wire  _T_1513;
  wire  _T_1514;
  wire  _T_1515;
  wire  _T_1516;
  wire  _T_1517;
  wire  _T_1518;
  wire  _T_1519;
  wire  _T_1520;
  wire  _T_1521;
  wire  _T_1522;
  wire  _T_1523;
  wire  _T_1524;
  wire  _T_1525;
  wire  _T_1526;
  wire  _T_1527;
  wire  _T_1528;
  wire  _T_1529;
  wire  _T_1530;
  wire  control_7;
  wire  _T_1548;
  wire  _T_1549;
  wire  _T_1550;
  wire  _T_1551;
  wire  _T_1552;
  wire  _T_1553;
  wire  _T_1554;
  wire  _T_1555;
  wire  _T_1556;
  wire  _T_1557;
  wire  _T_1558;
  wire  _T_1559;
  wire  _T_1560;
  wire  _T_1561;
  wire  _T_1562;
  wire  _T_1563;
  wire  _T_1564;
  wire  _T_1565;
  wire  _T_1566;
  wire  _T_1567;
  wire  _T_1568;
  wire  _T_1569;
  wire  _T_1570;
  wire  _T_1571;
  wire  _T_1572;
  wire  _T_1573;
  wire  _T_1574;
  wire  _T_1575;
  wire  _T_1576;
  wire  _T_1577;
  wire  _T_1578;
  wire  _T_1579;
  wire  _T_1580;
  wire  _T_1581;
  wire  _T_1582;
  wire  _T_1583;
  wire  _T_1584;
  wire  _T_1585;
  wire  control_8;
  wire  _T_1606;
  wire  _T_1607;
  wire  _T_1608;
  wire  _T_1609;
  wire  _T_1610;
  wire  _T_1611;
  wire  _T_1612;
  wire  _T_1613;
  wire  _T_1614;
  wire  _T_1615;
  wire  _T_1616;
  wire  _T_1617;
  wire  _T_1618;
  wire  _T_1619;
  wire  _T_1620;
  wire  _T_1621;
  wire  _T_1622;
  wire  _T_1623;
  wire  _T_1624;
  wire  _T_1625;
  wire  _T_1626;
  wire  _T_1627;
  wire  _T_1628;
  wire  _T_1629;
  wire  _T_1630;
  wire  _T_1631;
  wire  _T_1632;
  wire  _T_1633;
  wire  _T_1634;
  wire  _T_1635;
  wire  _T_1636;
  wire  _T_1637;
  wire  _T_1638;
  wire  _T_1639;
  wire  _T_1640;
  wire  control_9;
  wire  _T_1646;
  wire  _T_1647;
  wire  _T_1648;
  wire  _T_1649;
  wire  _T_1650;
  wire  _T_1651;
  wire  _T_1652;
  wire  _T_1653;
  wire  _T_1654;
  wire  _T_1655;
  wire  _T_1656;
  wire  _T_1657;
  wire  _T_1658;
  wire  _T_1659;
  wire  _T_1660;
  wire  _T_1661;
  wire  _T_1662;
  wire  _T_1663;
  wire  _T_1664;
  wire  _T_1665;
  wire  _T_1666;
  wire  _T_1667;
  wire  _T_1668;
  wire  _T_1669;
  wire  _T_1670;
  wire  _T_1671;
  wire  _T_1672;
  wire  _T_1673;
  wire  _T_1674;
  wire  _T_1675;
  wire  _T_1676;
  wire  _T_1677;
  wire  _T_1678;
  wire  _T_1679;
  wire  _T_1680;
  wire  _T_1681;
  wire  _T_1682;
  wire  _T_1683;
  wire  _T_1684;
  wire  _T_1685;
  wire  _T_1686;
  wire  _T_1687;
  wire  _T_1688;
  wire  _T_1689;
  wire  _T_1690;
  wire  _T_1691;
  wire  _T_1692;
  wire  _T_1693;
  wire  _T_1694;
  wire  _T_1695;
  wire  control_10;
  wire  _T_1716;
  wire  _T_1717;
  wire  _T_1718;
  wire  _T_1719;
  wire  _T_1720;
  wire  _T_1721;
  wire  _T_1722;
  wire  _T_1723;
  wire  _T_1724;
  wire  _T_1725;
  wire  _T_1726;
  wire  _T_1727;
  wire  _T_1728;
  wire  _T_1729;
  wire  _T_1730;
  wire  _T_1731;
  wire  _T_1732;
  wire  _T_1733;
  wire  _T_1734;
  wire  _T_1735;
  wire  _T_1736;
  wire  _T_1737;
  wire  _T_1738;
  wire  _T_1739;
  wire  _T_1740;
  wire  _T_1741;
  wire  _T_1742;
  wire  _T_1743;
  wire  _T_1744;
  wire  _T_1745;
  wire  _T_1746;
  wire  _T_1747;
  wire  _T_1748;
  wire  _T_1749;
  wire  _T_1750;
  wire  control_11;
  wire [5:0] _T_1755;
  wire [5:0] _T_1756;
  wire [5:0] _T_1757;
  wire [5:0] _T_1758;
  wire [5:0] _T_1759;
  wire [5:0] _T_1760;
  wire [5:0] _T_1761;
  wire [5:0] _T_1762;
  wire [5:0] _T_1763;
  wire [5:0] _T_1764;
  wire [5:0] _T_1765;
  wire [5:0] _T_1766;
  wire [5:0] _T_1767;
  wire [5:0] _T_1768;
  wire [5:0] _T_1769;
  wire [5:0] _T_1770;
  wire [5:0] _T_1771;
  wire [5:0] _T_1772;
  wire [5:0] _T_1773;
  wire [5:0] _T_1774;
  wire [5:0] _T_1775;
  wire [5:0] _T_1776;
  wire [5:0] _T_1777;
  wire [5:0] _T_1778;
  wire [5:0] _T_1779;
  wire [5:0] _T_1780;
  wire [5:0] _T_1781;
  wire [5:0] _T_1782;
  wire [5:0] _T_1783;
  wire [5:0] _T_1784;
  wire [5:0] _T_1785;
  wire [5:0] _T_1786;
  wire [5:0] _T_1787;
  wire [5:0] _T_1788;
  wire [5:0] _T_1789;
  wire [5:0] _T_1790;
  wire [5:0] _T_1791;
  wire [5:0] _T_1792;
  wire [5:0] _T_1793;
  wire [5:0] _T_1794;
  wire [5:0] _T_1795;
  wire [5:0] _T_1796;
  wire [5:0] _T_1797;
  wire [5:0] _T_1798;
  wire [5:0] _T_1799;
  wire [5:0] _T_1800;
  wire [5:0] _T_1801;
  wire [5:0] _T_1802;
  wire [5:0] _T_1803;
  wire [5:0] _T_1804;
  wire [5:0] _T_1805;
  wire [5:0] control_12;
  wire  _T_1807;
  wire  _T_1810;
  wire [15:0] _T_1812;
  wire [15:0] Imm16;
  wire [25:0] _T_1815;
  wire [25:0] _T_1817;
  wire  _T_1818;
  wire [16:0] _T_1822;
  wire [14:0] _T_1823;
  wire [31:0] _T_1824;
  wire [31:0] _T_1827;
  wire [31:0] _T_1828;
  wire  _T_1830;
  wire  _T_1832;
  wire [31:0] _T_1833;
  wire [31:0] input1;
  wire  _T_1835;
  wire  _T_1837;
  wire [31:0] _T_1838;
  wire [31:0] input2;
  wire [31:0] _T_1839;
  wire [31:0] _T_1840;
  wire  _T_1843;
  wire  _T_1844;
  wire  _T_1845;
  wire [32:0] _T_1847;
  wire [31:0] _T_1848;
  wire [34:0] _GEN_140;
  wire [34:0] br_next;
  wire [3:0] _T_1850;
  wire [29:0] _T_1852;
  wire [31:0] _T_1853;
  wire [31:0] j_target;
  wire [34:0] _GEN_141;
  wire [35:0] _T_1854;
  wire [34:0] _T_1855;
  wire  _T_1860;
  wire  _T_1862;
  wire  _T_1865;
  wire [31:0] _T_1868;
  wire [31:0] _T_1869;
  wire [31:0] _T_1870;
  wire [31:0] _T_1871;
  wire [32:0] _T_1873;
  wire [31:0] Addr1;
  wire [32:0] _T_1875;
  wire [31:0] Addr2;
  wire [32:0] _T_1877;
  wire [31:0] Addr3;
  wire  _T_1878;
  wire  _T_1881;
  wire [31:0] _GEN_20;
  wire  _T_1883;
  wire [9:0] _T_1886;
  wire [7:0] _T_1888;
  wire  _T_1890;
  wire [9:0] _T_1893;
  wire [7:0] _T_1895;
  wire [9:0] _T_1898;
  wire [7:0] _T_1900;
  wire [9:0] _T_1903;
  wire [7:0] _T_1905;
  wire [9:0] _T_1908;
  wire [7:0] _T_1910;
  wire [9:0] _T_1913;
  wire [7:0] _T_1915;
  wire [9:0] _T_1918;
  wire [7:0] _T_1920;
  wire  _GEN_29;
  wire  _GEN_43;
  wire  _GEN_49;
  wire  _GEN_59;
  wire  _GEN_63;
  wire  _GEN_69;
  wire [9:0] _T_1923;
  wire [9:0] _T_1926;
  wire [9:0] _T_1929;
  wire [9:0] _T_1932;
  wire  _T_1935;
  wire [24:0] _T_1939;
  wire [6:0] _T_1940;
  wire [31:0] _T_1941;
  wire  _T_1943;
  wire [31:0] _T_1949;
  wire  _T_1952;
  wire [16:0] _T_1956;
  wire [6:0] _T_1957;
  wire [23:0] _T_1958;
  wire [31:0] _T_1959;
  wire  _T_1961;
  wire [23:0] _T_1967;
  wire [31:0] _T_1968;
  wire [15:0] _T_1969;
  wire [15:0] _T_1970;
  wire [31:0] _T_1971;
  wire [31:0] _GEN_77;
  wire [31:0] _GEN_78;
  wire [31:0] _GEN_79;
  wire [31:0] _GEN_80;
  wire [2:0] _GEN_142;
  wire  _T_1973;
  wire  _T_1975;
  wire [31:0] _T_1979;
  wire [31:0] _T_1980;
  wire [31:0] _GEN_81;
  DataCheck dataCheck (
    .io_ID_EX_Rs(dataCheck_io_ID_EX_Rs),
    .io_ID_EX_Rt(dataCheck_io_ID_EX_Rt),
    .io_Ex_Mem_Rd(dataCheck_io_Ex_Mem_Rd),
    .io_Mem_WB_Rd(dataCheck_io_Mem_WB_Rd),
    .io_Ex_Mem_RegWr(dataCheck_io_Ex_Mem_RegWr),
    .io_Mem_WB_RegWr(dataCheck_io_Mem_WB_RegWr),
    .io_ForwardA(dataCheck_io_ForwardA),
    .io_ForwardB(dataCheck_io_ForwardB)
  );
  ALU alu (
    .clock(alu_clock),
    .reset(alu_reset),
    .io_in1(alu_io_in1),
    .io_in2(alu_io_in2),
    .io_ALUctr(alu_io_ALUctr),
    .io_ALUout(alu_io_ALUout)
  );
  CMP cmp (
    .io_in1(cmp_io_in1),
    .io_in2(cmp_io_in2),
    .io_CMPctr(cmp_io_CMPctr),
    .io_CMPout(cmp_io_CMPout)
  );
  CP0 cp0 (
    .clock(cp0_clock),
    .io_index(cp0_io_index),
    .io_datain(cp0_io_datain),
    .io_CP0ctr(cp0_io_CP0ctr),
    .io_dataout(cp0_io_dataout)
  );
  assign imm__T_109_addr = _T_108;
  assign imm__T_109_data = imm[imm__T_109_addr];
  assign imm__T_46_data = io_test_inst;
  assign imm__T_46_addr = _T_45;
  assign imm__T_46_mask = _T_43;
  assign imm__T_46_en = _T_43;
  assign dmm_Data0_addr = _T_1923;
  assign dmm_Data0_data = dmm[dmm_Data0_addr];
  assign dmm_Data1_addr = _T_1926;
  assign dmm_Data1_data = dmm[dmm_Data1_addr];
  assign dmm_Data2_addr = _T_1929;
  assign dmm_Data2_data = dmm[dmm_Data2_addr];
  assign dmm_Data3_addr = _T_1932;
  assign dmm_Data3_data = dmm[dmm_Data3_addr];
  assign dmm__T_1887_data = _T_1888;
  assign dmm__T_1887_addr = _T_1886;
  assign dmm__T_1887_mask = _GEN_59;
  assign dmm__T_1887_en = _GEN_59;
  assign dmm__T_1894_data = _T_1895;
  assign dmm__T_1894_addr = _T_1893;
  assign dmm__T_1894_mask = _GEN_63;
  assign dmm__T_1894_en = _GEN_63;
  assign dmm__T_1899_data = _T_1900;
  assign dmm__T_1899_addr = _T_1898;
  assign dmm__T_1899_mask = _GEN_63;
  assign dmm__T_1899_en = _GEN_63;
  assign dmm__T_1904_data = _T_1905;
  assign dmm__T_1904_addr = _T_1903;
  assign dmm__T_1904_mask = _GEN_69;
  assign dmm__T_1904_en = _GEN_69;
  assign dmm__T_1909_data = _T_1910;
  assign dmm__T_1909_addr = _T_1908;
  assign dmm__T_1909_mask = _GEN_69;
  assign dmm__T_1909_en = _GEN_69;
  assign dmm__T_1914_data = _T_1915;
  assign dmm__T_1914_addr = _T_1913;
  assign dmm__T_1914_mask = _GEN_69;
  assign dmm__T_1914_en = _GEN_69;
  assign dmm__T_1919_data = _T_1920;
  assign dmm__T_1919_addr = _T_1918;
  assign dmm__T_1919_mask = _GEN_69;
  assign dmm__T_1919_en = _GEN_69;
  assign RegFile__T_120_addr = Rs;
  assign RegFile__T_120_data = RegFile[RegFile__T_120_addr];
  assign RegFile__T_125_addr = Rt;
  assign RegFile__T_125_data = RegFile[RegFile__T_125_addr];
  assign RegFile__T_114_data = 32'h0;
  assign RegFile__T_114_addr = 5'h0;
  assign RegFile__T_114_mask = 1'h1;
  assign RegFile__T_114_en = 1'h1;
  assign RegFile__T_1983_data = Reg_WrData;
  assign RegFile__T_1983_addr = Reg_index;
  assign RegFile__T_1983_mask = MEM_WB_RegWr;
  assign RegFile__T_1983_en = MEM_WB_RegWr;
  assign _T_43 = io_boot & io_test_wr;
  assign _T_44 = io_test_addr[31:2];
  assign _T_45 = _T_44[9:0];
  assign _T_80 = ID_EX_pcPlus4 + 32'h4;
  assign _T_81 = _T_80[31:0];
  assign _T_83 = ID_EX_Jr ? cp0_io_dataout : alu_io_ALUout;
  assign _T_90 = ID_EX_RegDst ? ID_EX_Rd : ID_EX_Rt;
  assign _T_91 = ID_EX_AL ? 5'h1f : _T_90;
  assign _T_107 = io_imem_addr[31:2];
  assign _T_108 = _T_107[9:0];
  assign _GEN_4 = nPC_sel ? 32'h0 : imm__T_109_data;
  assign _GEN_7 = nPC_sel ? 1'h0 : 1'h1;
  assign _GEN_8 = io_boot ? 32'h0 : _GEN_4;
  assign _GEN_11 = io_boot ? 1'h0 : _GEN_7;
  assign _T_110 = IF_ID_ins[25:21];
  assign _T_111 = IF_ID_ins[20:16];
  assign _T_112 = IF_ID_ins[15:11];
  assign _T_118 = Rs == Reg_index;
  assign _T_119 = MEM_WB_RegWr & _T_118;
  assign _GEN_12 = _T_119 ? Reg_WrData : RegFile__T_120_data;
  assign _GEN_15 = _T_119 ? 1'h0 : 1'h1;
  assign _T_123 = Rt == Reg_index;
  assign _T_124 = MEM_WB_RegWr & _T_123;
  assign _GEN_16 = _T_124 ? Reg_WrData : RegFile__T_125_data;
  assign _GEN_19 = _T_124 ? 1'h0 : 1'h1;
  assign _T_869 = IF_ID_ins & 32'hfc0007ff;
  assign _T_870 = 32'h20 == _T_869;
  assign _T_873 = IF_ID_ins & 32'hfc000000;
  assign _T_874 = 32'h24000000 == _T_873;
  assign _T_878 = 32'h21 == _T_869;
  assign _T_882 = 32'h20000000 == _T_873;
  assign _T_886 = 32'h22 == _T_869;
  assign _T_890 = 32'h23 == _T_869;
  assign _T_894 = 32'h2a == _T_869;
  assign _T_898 = 32'h28000000 == _T_873;
  assign _T_902 = 32'h2b == _T_869;
  assign _T_906 = 32'h2c000000 == _T_873;
  assign _T_909 = IF_ID_ins & 32'hfc00ffff;
  assign _T_910 = 32'h18 == _T_909;
  assign _T_914 = 32'h19 == _T_909;
  assign _T_918 = 32'h1a == _T_909;
  assign _T_922 = 32'h1b == _T_909;
  assign _T_926 = 32'h24 == _T_869;
  assign _T_930 = 32'h30000000 == _T_873;
  assign _T_933 = IF_ID_ins & 32'hffe00000;
  assign _T_934 = 32'h3c000000 == _T_933;
  assign _T_938 = 32'h27 == _T_869;
  assign _T_942 = 32'h25 == _T_869;
  assign _T_946 = 32'h34000000 == _T_873;
  assign _T_950 = 32'h26 == _T_869;
  assign _T_954 = 32'h38000000 == _T_873;
  assign _T_957 = IF_ID_ins & 32'hffe0003f;
  assign _T_958 = 32'h0 == _T_957;
  assign _T_962 = 32'h4 == _T_869;
  assign _T_966 = 32'h3 == _T_957;
  assign _T_970 = 32'h7 == _T_869;
  assign _T_974 = 32'h2 == _T_957;
  assign _T_978 = 32'h6 == _T_869;
  assign _T_982 = 32'h10000000 == _T_873;
  assign _T_986 = 32'h14000000 == _T_873;
  assign _T_989 = IF_ID_ins & 32'hfc1f0000;
  assign _T_990 = 32'h4010000 == _T_989;
  assign _T_994 = 32'h1c000000 == _T_989;
  assign _T_998 = 32'h18000000 == _T_989;
  assign _T_1002 = 32'h4000000 == _T_989;
  assign _T_1006 = 32'h4100000 == _T_989;
  assign _T_1010 = 32'h4110000 == _T_989;
  assign _T_1014 = 32'h8000000 == _T_873;
  assign _T_1018 = 32'hc000000 == _T_873;
  assign _T_1021 = IF_ID_ins & 32'hfc1fffff;
  assign _T_1022 = 32'h8 == _T_1021;
  assign _T_1025 = IF_ID_ins & 32'hfc1f07ff;
  assign _T_1026 = 32'h9 == _T_1025;
  assign _T_1029 = IF_ID_ins & 32'hffff07ff;
  assign _T_1030 = 32'h10 == _T_1029;
  assign _T_1034 = 32'h12 == _T_1029;
  assign _T_1038 = 32'h11 == _T_1021;
  assign _T_1042 = 32'h13 == _T_1021;
  assign _T_1046 = 32'h80000000 == _T_873;
  assign _T_1050 = 32'h90000000 == _T_873;
  assign _T_1054 = 32'h84000000 == _T_873;
  assign _T_1058 = 32'h94000000 == _T_873;
  assign _T_1062 = 32'ha0000000 == _T_873;
  assign _T_1066 = 32'ha4000000 == _T_873;
  assign _T_1070 = 32'h8c000000 == _T_873;
  assign _T_1074 = 32'hac000000 == _T_873;
  assign _T_1078 = 32'h42000018 == IF_ID_ins;
  assign _T_1081 = IF_ID_ins & 32'hffe007f8;
  assign _T_1082 = 32'h40000000 == _T_1081;
  assign _T_1086 = 32'h40800000 == _T_1081;
  assign _T_1093 = _T_1082 ? 1'h1 : _T_1086;
  assign _T_1094 = _T_1078 ? 1'h0 : _T_1093;
  assign _T_1095 = _T_1074 ? 1'h0 : _T_1094;
  assign _T_1096 = _T_1070 ? 1'h0 : _T_1095;
  assign _T_1097 = _T_1066 ? 1'h0 : _T_1096;
  assign _T_1098 = _T_1062 ? 1'h0 : _T_1097;
  assign _T_1099 = _T_1058 ? 1'h0 : _T_1098;
  assign _T_1100 = _T_1054 ? 1'h0 : _T_1099;
  assign _T_1101 = _T_1050 ? 1'h0 : _T_1100;
  assign _T_1102 = _T_1046 ? 1'h0 : _T_1101;
  assign _T_1103 = _T_1042 ? 1'h0 : _T_1102;
  assign _T_1104 = _T_1038 ? 1'h0 : _T_1103;
  assign _T_1105 = _T_1034 ? 1'h0 : _T_1104;
  assign _T_1106 = _T_1030 ? 1'h0 : _T_1105;
  assign _T_1107 = _T_1026 ? 1'h1 : _T_1106;
  assign _T_1108 = _T_1022 ? 1'h1 : _T_1107;
  assign _T_1109 = _T_1018 ? 1'h0 : _T_1108;
  assign _T_1110 = _T_1014 ? 1'h0 : _T_1109;
  assign _T_1111 = _T_1010 ? 1'h0 : _T_1110;
  assign _T_1112 = _T_1006 ? 1'h0 : _T_1111;
  assign _T_1113 = _T_1002 ? 1'h0 : _T_1112;
  assign _T_1114 = _T_998 ? 1'h0 : _T_1113;
  assign _T_1115 = _T_994 ? 1'h0 : _T_1114;
  assign _T_1116 = _T_990 ? 1'h0 : _T_1115;
  assign _T_1117 = _T_986 ? 1'h0 : _T_1116;
  assign _T_1118 = _T_982 ? 1'h0 : _T_1117;
  assign _T_1119 = _T_978 ? 1'h0 : _T_1118;
  assign _T_1120 = _T_974 ? 1'h0 : _T_1119;
  assign _T_1121 = _T_970 ? 1'h0 : _T_1120;
  assign _T_1122 = _T_966 ? 1'h0 : _T_1121;
  assign _T_1123 = _T_962 ? 1'h0 : _T_1122;
  assign _T_1124 = _T_958 ? 1'h0 : _T_1123;
  assign _T_1125 = _T_954 ? 1'h0 : _T_1124;
  assign _T_1126 = _T_950 ? 1'h0 : _T_1125;
  assign _T_1127 = _T_946 ? 1'h0 : _T_1126;
  assign _T_1128 = _T_942 ? 1'h0 : _T_1127;
  assign _T_1129 = _T_938 ? 1'h0 : _T_1128;
  assign _T_1130 = _T_934 ? 1'h0 : _T_1129;
  assign _T_1131 = _T_930 ? 1'h0 : _T_1130;
  assign _T_1132 = _T_926 ? 1'h0 : _T_1131;
  assign _T_1133 = _T_922 ? 1'h0 : _T_1132;
  assign _T_1134 = _T_918 ? 1'h0 : _T_1133;
  assign _T_1135 = _T_914 ? 1'h0 : _T_1134;
  assign _T_1136 = _T_910 ? 1'h0 : _T_1135;
  assign _T_1137 = _T_906 ? 1'h0 : _T_1136;
  assign _T_1138 = _T_902 ? 1'h0 : _T_1137;
  assign _T_1139 = _T_898 ? 1'h0 : _T_1138;
  assign _T_1140 = _T_894 ? 1'h0 : _T_1139;
  assign _T_1141 = _T_890 ? 1'h0 : _T_1140;
  assign _T_1142 = _T_886 ? 1'h0 : _T_1141;
  assign _T_1143 = _T_882 ? 1'h0 : _T_1142;
  assign _T_1144 = _T_878 ? 1'h0 : _T_1143;
  assign _T_1145 = _T_874 ? 1'h0 : _T_1144;
  assign control_0 = _T_870 ? 1'h0 : _T_1145;
  assign _T_1163 = _T_1022 ? 1'h0 : _T_1026;
  assign _T_1164 = _T_1018 ? 1'h1 : _T_1163;
  assign _T_1165 = _T_1014 ? 1'h0 : _T_1164;
  assign _T_1166 = _T_1010 ? 1'h1 : _T_1165;
  assign _T_1167 = _T_1006 ? 1'h1 : _T_1166;
  assign _T_1168 = _T_1002 ? 1'h0 : _T_1167;
  assign _T_1169 = _T_998 ? 1'h0 : _T_1168;
  assign _T_1170 = _T_994 ? 1'h0 : _T_1169;
  assign _T_1171 = _T_990 ? 1'h0 : _T_1170;
  assign _T_1172 = _T_986 ? 1'h0 : _T_1171;
  assign _T_1173 = _T_982 ? 1'h0 : _T_1172;
  assign _T_1174 = _T_978 ? 1'h0 : _T_1173;
  assign _T_1175 = _T_974 ? 1'h0 : _T_1174;
  assign _T_1176 = _T_970 ? 1'h0 : _T_1175;
  assign _T_1177 = _T_966 ? 1'h0 : _T_1176;
  assign _T_1178 = _T_962 ? 1'h0 : _T_1177;
  assign _T_1179 = _T_958 ? 1'h0 : _T_1178;
  assign _T_1180 = _T_954 ? 1'h0 : _T_1179;
  assign _T_1181 = _T_950 ? 1'h0 : _T_1180;
  assign _T_1182 = _T_946 ? 1'h0 : _T_1181;
  assign _T_1183 = _T_942 ? 1'h0 : _T_1182;
  assign _T_1184 = _T_938 ? 1'h0 : _T_1183;
  assign _T_1185 = _T_934 ? 1'h0 : _T_1184;
  assign _T_1186 = _T_930 ? 1'h0 : _T_1185;
  assign _T_1187 = _T_926 ? 1'h0 : _T_1186;
  assign _T_1188 = _T_922 ? 1'h0 : _T_1187;
  assign _T_1189 = _T_918 ? 1'h0 : _T_1188;
  assign _T_1190 = _T_914 ? 1'h0 : _T_1189;
  assign _T_1191 = _T_910 ? 1'h0 : _T_1190;
  assign _T_1192 = _T_906 ? 1'h0 : _T_1191;
  assign _T_1193 = _T_902 ? 1'h0 : _T_1192;
  assign _T_1194 = _T_898 ? 1'h0 : _T_1193;
  assign _T_1195 = _T_894 ? 1'h0 : _T_1194;
  assign _T_1196 = _T_890 ? 1'h0 : _T_1195;
  assign _T_1197 = _T_886 ? 1'h0 : _T_1196;
  assign _T_1198 = _T_882 ? 1'h0 : _T_1197;
  assign _T_1199 = _T_878 ? 1'h0 : _T_1198;
  assign _T_1200 = _T_874 ? 1'h0 : _T_1199;
  assign control_1 = _T_870 ? 1'h0 : _T_1200;
  assign _T_1231 = _T_970 ? 1'h0 : _T_974;
  assign _T_1232 = _T_966 ? 1'h1 : _T_1231;
  assign _T_1233 = _T_962 ? 1'h0 : _T_1232;
  assign _T_1234 = _T_958 ? 1'h1 : _T_1233;
  assign _T_1235 = _T_954 ? 1'h0 : _T_1234;
  assign _T_1236 = _T_950 ? 1'h0 : _T_1235;
  assign _T_1237 = _T_946 ? 1'h0 : _T_1236;
  assign _T_1238 = _T_942 ? 1'h0 : _T_1237;
  assign _T_1239 = _T_938 ? 1'h0 : _T_1238;
  assign _T_1240 = _T_934 ? 1'h0 : _T_1239;
  assign _T_1241 = _T_930 ? 1'h0 : _T_1240;
  assign _T_1242 = _T_926 ? 1'h0 : _T_1241;
  assign _T_1243 = _T_922 ? 1'h0 : _T_1242;
  assign _T_1244 = _T_918 ? 1'h0 : _T_1243;
  assign _T_1245 = _T_914 ? 1'h0 : _T_1244;
  assign _T_1246 = _T_910 ? 1'h0 : _T_1245;
  assign _T_1247 = _T_906 ? 1'h0 : _T_1246;
  assign _T_1248 = _T_902 ? 1'h0 : _T_1247;
  assign _T_1249 = _T_898 ? 1'h0 : _T_1248;
  assign _T_1250 = _T_894 ? 1'h0 : _T_1249;
  assign _T_1251 = _T_890 ? 1'h0 : _T_1250;
  assign _T_1252 = _T_886 ? 1'h0 : _T_1251;
  assign _T_1253 = _T_882 ? 1'h0 : _T_1252;
  assign _T_1254 = _T_878 ? 1'h0 : _T_1253;
  assign _T_1255 = _T_874 ? 1'h0 : _T_1254;
  assign control_2 = _T_870 ? 1'h0 : _T_1255;
  assign _T_1257 = _T_1086 ? 4'h9 : 4'h4;
  assign _T_1258 = _T_1082 ? 4'h8 : _T_1257;
  assign _T_1259 = _T_1078 ? 4'hf : _T_1258;
  assign _T_1260 = _T_1074 ? 4'h4 : _T_1259;
  assign _T_1261 = _T_1070 ? 4'h4 : _T_1260;
  assign _T_1262 = _T_1066 ? 4'hd : _T_1261;
  assign _T_1263 = _T_1062 ? 4'hb : _T_1262;
  assign _T_1264 = _T_1058 ? 4'he : _T_1263;
  assign _T_1265 = _T_1054 ? 4'hd : _T_1264;
  assign _T_1266 = _T_1050 ? 4'hc : _T_1265;
  assign _T_1267 = _T_1046 ? 4'hb : _T_1266;
  assign _T_1268 = _T_1042 ? 4'h4 : _T_1267;
  assign _T_1269 = _T_1038 ? 4'h4 : _T_1268;
  assign _T_1270 = _T_1034 ? 4'h4 : _T_1269;
  assign _T_1271 = _T_1030 ? 4'h4 : _T_1270;
  assign _T_1272 = _T_1026 ? 4'h4 : _T_1271;
  assign _T_1273 = _T_1022 ? 4'h4 : _T_1272;
  assign _T_1274 = _T_1018 ? 4'h4 : _T_1273;
  assign _T_1275 = _T_1014 ? 4'h4 : _T_1274;
  assign _T_1276 = _T_1010 ? 4'h5 : _T_1275;
  assign _T_1277 = _T_1006 ? 4'ha : _T_1276;
  assign _T_1278 = _T_1002 ? 4'ha : _T_1277;
  assign _T_1279 = _T_998 ? 4'h6 : _T_1278;
  assign _T_1280 = _T_994 ? 4'h3 : _T_1279;
  assign _T_1281 = _T_990 ? 4'h5 : _T_1280;
  assign _T_1282 = _T_986 ? 4'h7 : _T_1281;
  assign _T_1283 = _T_982 ? 4'h0 : _T_1282;
  assign _T_1284 = _T_978 ? 4'h4 : _T_1283;
  assign _T_1285 = _T_974 ? 4'h4 : _T_1284;
  assign _T_1286 = _T_970 ? 4'h4 : _T_1285;
  assign _T_1287 = _T_966 ? 4'h4 : _T_1286;
  assign _T_1288 = _T_962 ? 4'h4 : _T_1287;
  assign _T_1289 = _T_958 ? 4'h4 : _T_1288;
  assign _T_1290 = _T_954 ? 4'h4 : _T_1289;
  assign _T_1291 = _T_950 ? 4'h4 : _T_1290;
  assign _T_1292 = _T_946 ? 4'h4 : _T_1291;
  assign _T_1293 = _T_942 ? 4'h4 : _T_1292;
  assign _T_1294 = _T_938 ? 4'h4 : _T_1293;
  assign _T_1295 = _T_934 ? 4'h4 : _T_1294;
  assign _T_1296 = _T_930 ? 4'h4 : _T_1295;
  assign _T_1297 = _T_926 ? 4'h4 : _T_1296;
  assign _T_1298 = _T_922 ? 4'h4 : _T_1297;
  assign _T_1299 = _T_918 ? 4'h4 : _T_1298;
  assign _T_1300 = _T_914 ? 4'h4 : _T_1299;
  assign _T_1301 = _T_910 ? 4'h4 : _T_1300;
  assign _T_1302 = _T_906 ? 4'h2 : _T_1301;
  assign _T_1303 = _T_902 ? 4'h2 : _T_1302;
  assign _T_1304 = _T_898 ? 4'h1 : _T_1303;
  assign _T_1305 = _T_894 ? 4'h1 : _T_1304;
  assign _T_1306 = _T_890 ? 4'h4 : _T_1305;
  assign _T_1307 = _T_886 ? 4'h4 : _T_1306;
  assign _T_1308 = _T_882 ? 4'h4 : _T_1307;
  assign _T_1309 = _T_878 ? 4'h4 : _T_1308;
  assign _T_1310 = _T_874 ? 4'h4 : _T_1309;
  assign control_3 = _T_870 ? 4'h4 : _T_1310;
  assign _T_1326 = _T_1030 ? 1'h1 : _T_1034;
  assign _T_1327 = _T_1026 ? 1'h0 : _T_1326;
  assign _T_1328 = _T_1022 ? 1'h0 : _T_1327;
  assign _T_1329 = _T_1018 ? 1'h0 : _T_1328;
  assign _T_1330 = _T_1014 ? 1'h0 : _T_1329;
  assign _T_1331 = _T_1010 ? 1'h0 : _T_1330;
  assign _T_1332 = _T_1006 ? 1'h0 : _T_1331;
  assign _T_1333 = _T_1002 ? 1'h0 : _T_1332;
  assign _T_1334 = _T_998 ? 1'h0 : _T_1333;
  assign _T_1335 = _T_994 ? 1'h0 : _T_1334;
  assign _T_1336 = _T_990 ? 1'h0 : _T_1335;
  assign _T_1337 = _T_986 ? 1'h0 : _T_1336;
  assign _T_1338 = _T_982 ? 1'h0 : _T_1337;
  assign _T_1339 = _T_978 ? 1'h1 : _T_1338;
  assign _T_1340 = _T_974 ? 1'h1 : _T_1339;
  assign _T_1341 = _T_970 ? 1'h1 : _T_1340;
  assign _T_1342 = _T_966 ? 1'h1 : _T_1341;
  assign _T_1343 = _T_962 ? 1'h1 : _T_1342;
  assign _T_1344 = _T_958 ? 1'h1 : _T_1343;
  assign _T_1345 = _T_954 ? 1'h0 : _T_1344;
  assign _T_1346 = _T_950 ? 1'h1 : _T_1345;
  assign _T_1347 = _T_946 ? 1'h0 : _T_1346;
  assign _T_1348 = _T_942 ? 1'h1 : _T_1347;
  assign _T_1349 = _T_938 ? 1'h1 : _T_1348;
  assign _T_1350 = _T_934 ? 1'h0 : _T_1349;
  assign _T_1351 = _T_930 ? 1'h0 : _T_1350;
  assign _T_1352 = _T_926 ? 1'h1 : _T_1351;
  assign _T_1353 = _T_922 ? 1'h0 : _T_1352;
  assign _T_1354 = _T_918 ? 1'h0 : _T_1353;
  assign _T_1355 = _T_914 ? 1'h0 : _T_1354;
  assign _T_1356 = _T_910 ? 1'h0 : _T_1355;
  assign _T_1357 = _T_906 ? 1'h0 : _T_1356;
  assign _T_1358 = _T_902 ? 1'h1 : _T_1357;
  assign _T_1359 = _T_898 ? 1'h0 : _T_1358;
  assign _T_1360 = _T_894 ? 1'h1 : _T_1359;
  assign _T_1361 = _T_890 ? 1'h1 : _T_1360;
  assign _T_1362 = _T_886 ? 1'h1 : _T_1361;
  assign _T_1363 = _T_882 ? 1'h0 : _T_1362;
  assign _T_1364 = _T_878 ? 1'h1 : _T_1363;
  assign _T_1365 = _T_874 ? 1'h0 : _T_1364;
  assign control_4 = _T_870 ? 1'h1 : _T_1365;
  assign _T_1370 = _T_1074 ? 3'h1 : 3'h0;
  assign _T_1371 = _T_1070 ? 3'h1 : _T_1370;
  assign _T_1372 = _T_1066 ? 3'h1 : _T_1371;
  assign _T_1373 = _T_1062 ? 3'h1 : _T_1372;
  assign _T_1374 = _T_1058 ? 3'h1 : _T_1373;
  assign _T_1375 = _T_1054 ? 3'h1 : _T_1374;
  assign _T_1376 = _T_1050 ? 3'h1 : _T_1375;
  assign _T_1377 = _T_1046 ? 3'h1 : _T_1376;
  assign _T_1378 = _T_1042 ? 3'h0 : _T_1377;
  assign _T_1379 = _T_1038 ? 3'h0 : _T_1378;
  assign _T_1380 = _T_1034 ? 3'h0 : _T_1379;
  assign _T_1381 = _T_1030 ? 3'h0 : _T_1380;
  assign _T_1382 = _T_1026 ? 3'h0 : _T_1381;
  assign _T_1383 = _T_1022 ? 3'h0 : _T_1382;
  assign _T_1384 = _T_1018 ? 3'h0 : _T_1383;
  assign _T_1385 = _T_1014 ? 3'h0 : _T_1384;
  assign _T_1386 = _T_1010 ? 3'h0 : _T_1385;
  assign _T_1387 = _T_1006 ? 3'h0 : _T_1386;
  assign _T_1388 = _T_1002 ? 3'h0 : _T_1387;
  assign _T_1389 = _T_998 ? 3'h0 : _T_1388;
  assign _T_1390 = _T_994 ? 3'h0 : _T_1389;
  assign _T_1391 = _T_990 ? 3'h0 : _T_1390;
  assign _T_1392 = _T_986 ? 3'h0 : _T_1391;
  assign _T_1393 = _T_982 ? 3'h0 : _T_1392;
  assign _T_1394 = _T_978 ? 3'h0 : _T_1393;
  assign _T_1395 = _T_974 ? 3'h0 : _T_1394;
  assign _T_1396 = _T_970 ? 3'h0 : _T_1395;
  assign _T_1397 = _T_966 ? 3'h0 : _T_1396;
  assign _T_1398 = _T_962 ? 3'h0 : _T_1397;
  assign _T_1399 = _T_958 ? 3'h0 : _T_1398;
  assign _T_1400 = _T_954 ? 3'h0 : _T_1399;
  assign _T_1401 = _T_950 ? 3'h0 : _T_1400;
  assign _T_1402 = _T_946 ? 3'h0 : _T_1401;
  assign _T_1403 = _T_942 ? 3'h0 : _T_1402;
  assign _T_1404 = _T_938 ? 3'h0 : _T_1403;
  assign _T_1405 = _T_934 ? 3'h0 : _T_1404;
  assign _T_1406 = _T_930 ? 3'h0 : _T_1405;
  assign _T_1407 = _T_926 ? 3'h0 : _T_1406;
  assign _T_1408 = _T_922 ? 3'h0 : _T_1407;
  assign _T_1409 = _T_918 ? 3'h0 : _T_1408;
  assign _T_1410 = _T_914 ? 3'h0 : _T_1409;
  assign _T_1411 = _T_910 ? 3'h0 : _T_1410;
  assign _T_1412 = _T_906 ? 3'h2 : _T_1411;
  assign _T_1413 = _T_902 ? 3'h2 : _T_1412;
  assign _T_1414 = _T_898 ? 3'h2 : _T_1413;
  assign _T_1415 = _T_894 ? 3'h2 : _T_1414;
  assign _T_1416 = _T_890 ? 3'h0 : _T_1415;
  assign _T_1417 = _T_886 ? 3'h0 : _T_1416;
  assign _T_1418 = _T_882 ? 3'h0 : _T_1417;
  assign _T_1419 = _T_878 ? 3'h0 : _T_1418;
  assign _T_1420 = _T_874 ? 3'h0 : _T_1419;
  assign control_5 = _T_870 ? 3'h0 : _T_1420;
  assign _T_1424 = _T_1078 ? 1'h0 : _T_1082;
  assign _T_1425 = _T_1074 ? 1'h0 : _T_1424;
  assign _T_1426 = _T_1070 ? 1'h1 : _T_1425;
  assign _T_1427 = _T_1066 ? 1'h0 : _T_1426;
  assign _T_1428 = _T_1062 ? 1'h0 : _T_1427;
  assign _T_1429 = _T_1058 ? 1'h1 : _T_1428;
  assign _T_1430 = _T_1054 ? 1'h1 : _T_1429;
  assign _T_1431 = _T_1050 ? 1'h1 : _T_1430;
  assign _T_1432 = _T_1046 ? 1'h1 : _T_1431;
  assign _T_1433 = _T_1042 ? 1'h0 : _T_1432;
  assign _T_1434 = _T_1038 ? 1'h0 : _T_1433;
  assign _T_1435 = _T_1034 ? 1'h1 : _T_1434;
  assign _T_1436 = _T_1030 ? 1'h1 : _T_1435;
  assign _T_1437 = _T_1026 ? 1'h1 : _T_1436;
  assign _T_1438 = _T_1022 ? 1'h0 : _T_1437;
  assign _T_1439 = _T_1018 ? 1'h1 : _T_1438;
  assign _T_1440 = _T_1014 ? 1'h0 : _T_1439;
  assign _T_1441 = _T_1010 ? 1'h1 : _T_1440;
  assign _T_1442 = _T_1006 ? 1'h1 : _T_1441;
  assign _T_1443 = _T_1002 ? 1'h0 : _T_1442;
  assign _T_1444 = _T_998 ? 1'h0 : _T_1443;
  assign _T_1445 = _T_994 ? 1'h0 : _T_1444;
  assign _T_1446 = _T_990 ? 1'h0 : _T_1445;
  assign _T_1447 = _T_986 ? 1'h0 : _T_1446;
  assign _T_1448 = _T_982 ? 1'h0 : _T_1447;
  assign _T_1449 = _T_978 ? 1'h1 : _T_1448;
  assign _T_1450 = _T_974 ? 1'h1 : _T_1449;
  assign _T_1451 = _T_970 ? 1'h1 : _T_1450;
  assign _T_1452 = _T_966 ? 1'h1 : _T_1451;
  assign _T_1453 = _T_962 ? 1'h1 : _T_1452;
  assign _T_1454 = _T_958 ? 1'h1 : _T_1453;
  assign _T_1455 = _T_954 ? 1'h1 : _T_1454;
  assign _T_1456 = _T_950 ? 1'h1 : _T_1455;
  assign _T_1457 = _T_946 ? 1'h1 : _T_1456;
  assign _T_1458 = _T_942 ? 1'h1 : _T_1457;
  assign _T_1459 = _T_938 ? 1'h1 : _T_1458;
  assign _T_1460 = _T_934 ? 1'h1 : _T_1459;
  assign _T_1461 = _T_930 ? 1'h1 : _T_1460;
  assign _T_1462 = _T_926 ? 1'h1 : _T_1461;
  assign _T_1463 = _T_922 ? 1'h1 : _T_1462;
  assign _T_1464 = _T_918 ? 1'h1 : _T_1463;
  assign _T_1465 = _T_914 ? 1'h1 : _T_1464;
  assign _T_1466 = _T_910 ? 1'h1 : _T_1465;
  assign _T_1467 = _T_906 ? 1'h1 : _T_1466;
  assign _T_1468 = _T_902 ? 1'h1 : _T_1467;
  assign _T_1469 = _T_898 ? 1'h1 : _T_1468;
  assign _T_1470 = _T_894 ? 1'h1 : _T_1469;
  assign _T_1471 = _T_890 ? 1'h1 : _T_1470;
  assign _T_1472 = _T_886 ? 1'h1 : _T_1471;
  assign _T_1473 = _T_882 ? 1'h1 : _T_1472;
  assign _T_1474 = _T_878 ? 1'h1 : _T_1473;
  assign _T_1475 = _T_874 ? 1'h1 : _T_1474;
  assign control_6 = _T_870 ? 1'h1 : _T_1475;
  assign _T_1481 = _T_1070 ? 1'h0 : _T_1074;
  assign _T_1482 = _T_1066 ? 1'h1 : _T_1481;
  assign _T_1483 = _T_1062 ? 1'h1 : _T_1482;
  assign _T_1484 = _T_1058 ? 1'h0 : _T_1483;
  assign _T_1485 = _T_1054 ? 1'h0 : _T_1484;
  assign _T_1486 = _T_1050 ? 1'h0 : _T_1485;
  assign _T_1487 = _T_1046 ? 1'h0 : _T_1486;
  assign _T_1488 = _T_1042 ? 1'h0 : _T_1487;
  assign _T_1489 = _T_1038 ? 1'h0 : _T_1488;
  assign _T_1490 = _T_1034 ? 1'h0 : _T_1489;
  assign _T_1491 = _T_1030 ? 1'h0 : _T_1490;
  assign _T_1492 = _T_1026 ? 1'h0 : _T_1491;
  assign _T_1493 = _T_1022 ? 1'h0 : _T_1492;
  assign _T_1494 = _T_1018 ? 1'h0 : _T_1493;
  assign _T_1495 = _T_1014 ? 1'h0 : _T_1494;
  assign _T_1496 = _T_1010 ? 1'h0 : _T_1495;
  assign _T_1497 = _T_1006 ? 1'h0 : _T_1496;
  assign _T_1498 = _T_1002 ? 1'h0 : _T_1497;
  assign _T_1499 = _T_998 ? 1'h0 : _T_1498;
  assign _T_1500 = _T_994 ? 1'h0 : _T_1499;
  assign _T_1501 = _T_990 ? 1'h0 : _T_1500;
  assign _T_1502 = _T_986 ? 1'h0 : _T_1501;
  assign _T_1503 = _T_982 ? 1'h0 : _T_1502;
  assign _T_1504 = _T_978 ? 1'h0 : _T_1503;
  assign _T_1505 = _T_974 ? 1'h0 : _T_1504;
  assign _T_1506 = _T_970 ? 1'h0 : _T_1505;
  assign _T_1507 = _T_966 ? 1'h0 : _T_1506;
  assign _T_1508 = _T_962 ? 1'h0 : _T_1507;
  assign _T_1509 = _T_958 ? 1'h0 : _T_1508;
  assign _T_1510 = _T_954 ? 1'h0 : _T_1509;
  assign _T_1511 = _T_950 ? 1'h0 : _T_1510;
  assign _T_1512 = _T_946 ? 1'h0 : _T_1511;
  assign _T_1513 = _T_942 ? 1'h0 : _T_1512;
  assign _T_1514 = _T_938 ? 1'h0 : _T_1513;
  assign _T_1515 = _T_934 ? 1'h0 : _T_1514;
  assign _T_1516 = _T_930 ? 1'h0 : _T_1515;
  assign _T_1517 = _T_926 ? 1'h0 : _T_1516;
  assign _T_1518 = _T_922 ? 1'h0 : _T_1517;
  assign _T_1519 = _T_918 ? 1'h0 : _T_1518;
  assign _T_1520 = _T_914 ? 1'h0 : _T_1519;
  assign _T_1521 = _T_910 ? 1'h0 : _T_1520;
  assign _T_1522 = _T_906 ? 1'h0 : _T_1521;
  assign _T_1523 = _T_902 ? 1'h0 : _T_1522;
  assign _T_1524 = _T_898 ? 1'h0 : _T_1523;
  assign _T_1525 = _T_894 ? 1'h0 : _T_1524;
  assign _T_1526 = _T_890 ? 1'h0 : _T_1525;
  assign _T_1527 = _T_886 ? 1'h0 : _T_1526;
  assign _T_1528 = _T_882 ? 1'h0 : _T_1527;
  assign _T_1529 = _T_878 ? 1'h0 : _T_1528;
  assign _T_1530 = _T_874 ? 1'h0 : _T_1529;
  assign control_7 = _T_870 ? 1'h0 : _T_1530;
  assign _T_1548 = _T_1022 ? 1'h1 : _T_1026;
  assign _T_1549 = _T_1018 ? 1'h1 : _T_1548;
  assign _T_1550 = _T_1014 ? 1'h1 : _T_1549;
  assign _T_1551 = _T_1010 ? 1'h1 : _T_1550;
  assign _T_1552 = _T_1006 ? 1'h1 : _T_1551;
  assign _T_1553 = _T_1002 ? 1'h1 : _T_1552;
  assign _T_1554 = _T_998 ? 1'h1 : _T_1553;
  assign _T_1555 = _T_994 ? 1'h1 : _T_1554;
  assign _T_1556 = _T_990 ? 1'h1 : _T_1555;
  assign _T_1557 = _T_986 ? 1'h1 : _T_1556;
  assign _T_1558 = _T_982 ? 1'h1 : _T_1557;
  assign _T_1559 = _T_978 ? 1'h0 : _T_1558;
  assign _T_1560 = _T_974 ? 1'h0 : _T_1559;
  assign _T_1561 = _T_970 ? 1'h0 : _T_1560;
  assign _T_1562 = _T_966 ? 1'h0 : _T_1561;
  assign _T_1563 = _T_962 ? 1'h0 : _T_1562;
  assign _T_1564 = _T_958 ? 1'h0 : _T_1563;
  assign _T_1565 = _T_954 ? 1'h0 : _T_1564;
  assign _T_1566 = _T_950 ? 1'h0 : _T_1565;
  assign _T_1567 = _T_946 ? 1'h0 : _T_1566;
  assign _T_1568 = _T_942 ? 1'h0 : _T_1567;
  assign _T_1569 = _T_938 ? 1'h0 : _T_1568;
  assign _T_1570 = _T_934 ? 1'h0 : _T_1569;
  assign _T_1571 = _T_930 ? 1'h0 : _T_1570;
  assign _T_1572 = _T_926 ? 1'h0 : _T_1571;
  assign _T_1573 = _T_922 ? 1'h0 : _T_1572;
  assign _T_1574 = _T_918 ? 1'h0 : _T_1573;
  assign _T_1575 = _T_914 ? 1'h0 : _T_1574;
  assign _T_1576 = _T_910 ? 1'h0 : _T_1575;
  assign _T_1577 = _T_906 ? 1'h0 : _T_1576;
  assign _T_1578 = _T_902 ? 1'h0 : _T_1577;
  assign _T_1579 = _T_898 ? 1'h0 : _T_1578;
  assign _T_1580 = _T_894 ? 1'h0 : _T_1579;
  assign _T_1581 = _T_890 ? 1'h0 : _T_1580;
  assign _T_1582 = _T_886 ? 1'h0 : _T_1581;
  assign _T_1583 = _T_882 ? 1'h0 : _T_1582;
  assign _T_1584 = _T_878 ? 1'h0 : _T_1583;
  assign _T_1585 = _T_874 ? 1'h0 : _T_1584;
  assign control_8 = _T_870 ? 1'h0 : _T_1585;
  assign _T_1606 = _T_1010 ? 1'h0 : _T_1550;
  assign _T_1607 = _T_1006 ? 1'h0 : _T_1606;
  assign _T_1608 = _T_1002 ? 1'h0 : _T_1607;
  assign _T_1609 = _T_998 ? 1'h0 : _T_1608;
  assign _T_1610 = _T_994 ? 1'h0 : _T_1609;
  assign _T_1611 = _T_990 ? 1'h0 : _T_1610;
  assign _T_1612 = _T_986 ? 1'h0 : _T_1611;
  assign _T_1613 = _T_982 ? 1'h0 : _T_1612;
  assign _T_1614 = _T_978 ? 1'h0 : _T_1613;
  assign _T_1615 = _T_974 ? 1'h0 : _T_1614;
  assign _T_1616 = _T_970 ? 1'h0 : _T_1615;
  assign _T_1617 = _T_966 ? 1'h0 : _T_1616;
  assign _T_1618 = _T_962 ? 1'h0 : _T_1617;
  assign _T_1619 = _T_958 ? 1'h0 : _T_1618;
  assign _T_1620 = _T_954 ? 1'h0 : _T_1619;
  assign _T_1621 = _T_950 ? 1'h0 : _T_1620;
  assign _T_1622 = _T_946 ? 1'h0 : _T_1621;
  assign _T_1623 = _T_942 ? 1'h0 : _T_1622;
  assign _T_1624 = _T_938 ? 1'h0 : _T_1623;
  assign _T_1625 = _T_934 ? 1'h0 : _T_1624;
  assign _T_1626 = _T_930 ? 1'h0 : _T_1625;
  assign _T_1627 = _T_926 ? 1'h0 : _T_1626;
  assign _T_1628 = _T_922 ? 1'h0 : _T_1627;
  assign _T_1629 = _T_918 ? 1'h0 : _T_1628;
  assign _T_1630 = _T_914 ? 1'h0 : _T_1629;
  assign _T_1631 = _T_910 ? 1'h0 : _T_1630;
  assign _T_1632 = _T_906 ? 1'h0 : _T_1631;
  assign _T_1633 = _T_902 ? 1'h0 : _T_1632;
  assign _T_1634 = _T_898 ? 1'h0 : _T_1633;
  assign _T_1635 = _T_894 ? 1'h0 : _T_1634;
  assign _T_1636 = _T_890 ? 1'h0 : _T_1635;
  assign _T_1637 = _T_886 ? 1'h0 : _T_1636;
  assign _T_1638 = _T_882 ? 1'h0 : _T_1637;
  assign _T_1639 = _T_878 ? 1'h0 : _T_1638;
  assign _T_1640 = _T_874 ? 1'h0 : _T_1639;
  assign control_9 = _T_870 ? 1'h0 : _T_1640;
  assign _T_1646 = _T_1070 ? 1'h1 : _T_1074;
  assign _T_1647 = _T_1066 ? 1'h1 : _T_1646;
  assign _T_1648 = _T_1062 ? 1'h1 : _T_1647;
  assign _T_1649 = _T_1058 ? 1'h1 : _T_1648;
  assign _T_1650 = _T_1054 ? 1'h1 : _T_1649;
  assign _T_1651 = _T_1050 ? 1'h1 : _T_1650;
  assign _T_1652 = _T_1046 ? 1'h1 : _T_1651;
  assign _T_1653 = _T_1042 ? 1'h0 : _T_1652;
  assign _T_1654 = _T_1038 ? 1'h0 : _T_1653;
  assign _T_1655 = _T_1034 ? 1'h0 : _T_1654;
  assign _T_1656 = _T_1030 ? 1'h0 : _T_1655;
  assign _T_1657 = _T_1026 ? 1'h0 : _T_1656;
  assign _T_1658 = _T_1022 ? 1'h0 : _T_1657;
  assign _T_1659 = _T_1018 ? 1'h0 : _T_1658;
  assign _T_1660 = _T_1014 ? 1'h0 : _T_1659;
  assign _T_1661 = _T_1010 ? 1'h0 : _T_1660;
  assign _T_1662 = _T_1006 ? 1'h0 : _T_1661;
  assign _T_1663 = _T_1002 ? 1'h0 : _T_1662;
  assign _T_1664 = _T_998 ? 1'h0 : _T_1663;
  assign _T_1665 = _T_994 ? 1'h0 : _T_1664;
  assign _T_1666 = _T_990 ? 1'h0 : _T_1665;
  assign _T_1667 = _T_986 ? 1'h0 : _T_1666;
  assign _T_1668 = _T_982 ? 1'h0 : _T_1667;
  assign _T_1669 = _T_978 ? 1'h0 : _T_1668;
  assign _T_1670 = _T_974 ? 1'h0 : _T_1669;
  assign _T_1671 = _T_970 ? 1'h0 : _T_1670;
  assign _T_1672 = _T_966 ? 1'h0 : _T_1671;
  assign _T_1673 = _T_962 ? 1'h0 : _T_1672;
  assign _T_1674 = _T_958 ? 1'h0 : _T_1673;
  assign _T_1675 = _T_954 ? 1'h1 : _T_1674;
  assign _T_1676 = _T_950 ? 1'h0 : _T_1675;
  assign _T_1677 = _T_946 ? 1'h1 : _T_1676;
  assign _T_1678 = _T_942 ? 1'h0 : _T_1677;
  assign _T_1679 = _T_938 ? 1'h0 : _T_1678;
  assign _T_1680 = _T_934 ? 1'h1 : _T_1679;
  assign _T_1681 = _T_930 ? 1'h1 : _T_1680;
  assign _T_1682 = _T_926 ? 1'h0 : _T_1681;
  assign _T_1683 = _T_922 ? 1'h0 : _T_1682;
  assign _T_1684 = _T_918 ? 1'h0 : _T_1683;
  assign _T_1685 = _T_914 ? 1'h0 : _T_1684;
  assign _T_1686 = _T_910 ? 1'h0 : _T_1685;
  assign _T_1687 = _T_906 ? 1'h1 : _T_1686;
  assign _T_1688 = _T_902 ? 1'h0 : _T_1687;
  assign _T_1689 = _T_898 ? 1'h1 : _T_1688;
  assign _T_1690 = _T_894 ? 1'h0 : _T_1689;
  assign _T_1691 = _T_890 ? 1'h0 : _T_1690;
  assign _T_1692 = _T_886 ? 1'h0 : _T_1691;
  assign _T_1693 = _T_882 ? 1'h1 : _T_1692;
  assign _T_1694 = _T_878 ? 1'h0 : _T_1693;
  assign _T_1695 = _T_874 ? 1'h1 : _T_1694;
  assign control_10 = _T_870 ? 1'h0 : _T_1695;
  assign _T_1716 = _T_1010 ? 1'h1 : _T_1660;
  assign _T_1717 = _T_1006 ? 1'h1 : _T_1716;
  assign _T_1718 = _T_1002 ? 1'h1 : _T_1717;
  assign _T_1719 = _T_998 ? 1'h1 : _T_1718;
  assign _T_1720 = _T_994 ? 1'h1 : _T_1719;
  assign _T_1721 = _T_990 ? 1'h1 : _T_1720;
  assign _T_1722 = _T_986 ? 1'h1 : _T_1721;
  assign _T_1723 = _T_982 ? 1'h1 : _T_1722;
  assign _T_1724 = _T_978 ? 1'h0 : _T_1723;
  assign _T_1725 = _T_974 ? 1'h0 : _T_1724;
  assign _T_1726 = _T_970 ? 1'h0 : _T_1725;
  assign _T_1727 = _T_966 ? 1'h0 : _T_1726;
  assign _T_1728 = _T_962 ? 1'h0 : _T_1727;
  assign _T_1729 = _T_958 ? 1'h0 : _T_1728;
  assign _T_1730 = _T_954 ? 1'h0 : _T_1729;
  assign _T_1731 = _T_950 ? 1'h0 : _T_1730;
  assign _T_1732 = _T_946 ? 1'h0 : _T_1731;
  assign _T_1733 = _T_942 ? 1'h0 : _T_1732;
  assign _T_1734 = _T_938 ? 1'h0 : _T_1733;
  assign _T_1735 = _T_934 ? 1'h0 : _T_1734;
  assign _T_1736 = _T_930 ? 1'h0 : _T_1735;
  assign _T_1737 = _T_926 ? 1'h0 : _T_1736;
  assign _T_1738 = _T_922 ? 1'h0 : _T_1737;
  assign _T_1739 = _T_918 ? 1'h0 : _T_1738;
  assign _T_1740 = _T_914 ? 1'h0 : _T_1739;
  assign _T_1741 = _T_910 ? 1'h0 : _T_1740;
  assign _T_1742 = _T_906 ? 1'h1 : _T_1741;
  assign _T_1743 = _T_902 ? 1'h0 : _T_1742;
  assign _T_1744 = _T_898 ? 1'h1 : _T_1743;
  assign _T_1745 = _T_894 ? 1'h0 : _T_1744;
  assign _T_1746 = _T_890 ? 1'h0 : _T_1745;
  assign _T_1747 = _T_886 ? 1'h0 : _T_1746;
  assign _T_1748 = _T_882 ? 1'h1 : _T_1747;
  assign _T_1749 = _T_878 ? 1'h0 : _T_1748;
  assign _T_1750 = _T_874 ? 1'h1 : _T_1749;
  assign control_11 = _T_870 ? 1'h0 : _T_1750;
  assign _T_1755 = _T_1074 ? 6'h20 : 6'h3e;
  assign _T_1756 = _T_1070 ? 6'h20 : _T_1755;
  assign _T_1757 = _T_1066 ? 6'h20 : _T_1756;
  assign _T_1758 = _T_1062 ? 6'h20 : _T_1757;
  assign _T_1759 = _T_1058 ? 6'h20 : _T_1758;
  assign _T_1760 = _T_1054 ? 6'h20 : _T_1759;
  assign _T_1761 = _T_1050 ? 6'h20 : _T_1760;
  assign _T_1762 = _T_1046 ? 6'h20 : _T_1761;
  assign _T_1763 = _T_1042 ? 6'h11 : _T_1762;
  assign _T_1764 = _T_1038 ? 6'h10 : _T_1763;
  assign _T_1765 = _T_1034 ? 6'h13 : _T_1764;
  assign _T_1766 = _T_1030 ? 6'h12 : _T_1765;
  assign _T_1767 = _T_1026 ? 6'h3e : _T_1766;
  assign _T_1768 = _T_1022 ? 6'h3e : _T_1767;
  assign _T_1769 = _T_1018 ? 6'h3e : _T_1768;
  assign _T_1770 = _T_1014 ? 6'h3e : _T_1769;
  assign _T_1771 = _T_1010 ? 6'h3e : _T_1770;
  assign _T_1772 = _T_1006 ? 6'h3e : _T_1771;
  assign _T_1773 = _T_1002 ? 6'h3e : _T_1772;
  assign _T_1774 = _T_998 ? 6'h3e : _T_1773;
  assign _T_1775 = _T_994 ? 6'h3e : _T_1774;
  assign _T_1776 = _T_990 ? 6'h3e : _T_1775;
  assign _T_1777 = _T_986 ? 6'h3e : _T_1776;
  assign _T_1778 = _T_982 ? 6'h3e : _T_1777;
  assign _T_1779 = _T_978 ? 6'h6 : _T_1778;
  assign _T_1780 = _T_974 ? 6'h2 : _T_1779;
  assign _T_1781 = _T_970 ? 6'h7 : _T_1780;
  assign _T_1782 = _T_966 ? 6'h3 : _T_1781;
  assign _T_1783 = _T_962 ? 6'h4 : _T_1782;
  assign _T_1784 = _T_958 ? 6'h0 : _T_1783;
  assign _T_1785 = _T_954 ? 6'h26 : _T_1784;
  assign _T_1786 = _T_950 ? 6'h26 : _T_1785;
  assign _T_1787 = _T_946 ? 6'h25 : _T_1786;
  assign _T_1788 = _T_942 ? 6'h25 : _T_1787;
  assign _T_1789 = _T_938 ? 6'h27 : _T_1788;
  assign _T_1790 = _T_934 ? 6'h3f : _T_1789;
  assign _T_1791 = _T_930 ? 6'h24 : _T_1790;
  assign _T_1792 = _T_926 ? 6'h24 : _T_1791;
  assign _T_1793 = _T_922 ? 6'h2b : _T_1792;
  assign _T_1794 = _T_918 ? 6'h2a : _T_1793;
  assign _T_1795 = _T_914 ? 6'h29 : _T_1794;
  assign _T_1796 = _T_910 ? 6'h28 : _T_1795;
  assign _T_1797 = _T_906 ? 6'h3e : _T_1796;
  assign _T_1798 = _T_902 ? 6'h3e : _T_1797;
  assign _T_1799 = _T_898 ? 6'h3e : _T_1798;
  assign _T_1800 = _T_894 ? 6'h3e : _T_1799;
  assign _T_1801 = _T_890 ? 6'h22 : _T_1800;
  assign _T_1802 = _T_886 ? 6'h22 : _T_1801;
  assign _T_1803 = _T_882 ? 6'h20 : _T_1802;
  assign _T_1804 = _T_878 ? 6'h20 : _T_1803;
  assign _T_1805 = _T_874 ? 6'h20 : _T_1804;
  assign control_12 = _T_870 ? 6'h20 : _T_1805;
  assign _T_1807 = ALUctr == 6'h4;
  assign _T_1810 = _T_1807 | Jump;
  assign _T_1812 = IF_ID_ins[15:0];
  assign Imm16 = _T_1810 ? 16'h0 : _T_1812;
  assign _T_1815 = IF_ID_ins[25:0];
  assign _T_1817 = Jump ? _T_1815 : 26'h0;
  assign _T_1818 = Imm16[15];
  assign _T_1822 = _T_1818 ? 17'h1ffff : 17'h0;
  assign _T_1823 = Imm16[14:0];
  assign _T_1824 = {_T_1822,_T_1823};
  assign _T_1827 = {16'h0,Imm16};
  assign _T_1828 = ExtOp ? _T_1824 : _T_1827;
  assign _T_1830 = dataCheck_io_ForwardA == 2'h1;
  assign _T_1832 = dataCheck_io_ForwardA == 2'h2;
  assign _T_1833 = _T_1832 ? Addr0 : ID_EX_BusA;
  assign input1 = _T_1830 ? Reg_WrData : _T_1833;
  assign _T_1835 = dataCheck_io_ForwardB == 2'h1;
  assign _T_1837 = dataCheck_io_ForwardB == 2'h2;
  assign _T_1838 = _T_1837 ? Addr0 : ID_EX_BusB;
  assign input2 = _T_1835 ? Reg_WrData : _T_1838;
  assign _T_1839 = ID_EX_Shamt ? ID_EX_Imm32 : input1;
  assign _T_1840 = ID_EX_ALUsrc ? ID_EX_Imm32 : input2;
  assign _T_1843 = CMPout & ID_EX_BorJ;
  assign _T_1844 = ID_EX_Jump ? 1'h1 : _T_1843;
  assign _T_1845 = io_boot ? 1'h0 : _T_1844;
  assign _T_1847 = pc_reg + 32'h4;
  assign _T_1848 = _T_1847[31:0];
  assign _GEN_140 = {{3'd0}, ID_EX_Imm32};
  assign br_next = _GEN_140 << 2'h2;
  assign _T_1850 = ID_EX_pcPlus4[31:28];
  assign _T_1852 = {_T_1850,ID_EX_Imm26};
  assign _T_1853 = {_T_1852,2'h0};
  assign j_target = ID_EX_Jr ? input1 : _T_1853;
  assign _GEN_141 = {{3'd0}, ID_EX_pcPlus4};
  assign _T_1854 = _GEN_141 + br_next;
  assign _T_1855 = _T_1854[34:0];
  assign _T_1860 = nPC_sel == 1'h0;
  assign _T_1862 = ID_EX_Jump == 1'h0;
  assign _T_1865 = _T_1862 & nPC_sel;
  assign _T_1868 = ID_EX_Jump ? j_target : pc_plus4;
  assign _T_1869 = _T_1865 ? pc_br : _T_1868;
  assign _T_1870 = _T_1860 ? pc_plus4 : _T_1869;
  assign _T_1871 = io_boot ? 32'h0 : _T_1870;
  assign _T_1873 = Addr0 + 32'h1;
  assign Addr1 = _T_1873[31:0];
  assign _T_1875 = Addr0 + 32'h2;
  assign Addr2 = _T_1875[31:0];
  assign _T_1877 = Addr0 + 32'h3;
  assign Addr3 = _T_1877[31:0];
  assign _T_1878 = EX_MEM_Rt == Reg_index;
  assign _T_1881 = _T_1878 & MEM_WB_RegWr;
  assign _GEN_20 = _T_1881 ? Reg_WrData : EX_MEM_dataIn;
  assign _T_1883 = EX_MEM_LSctr == 4'hb;
  assign _T_1886 = Addr0[9:0];
  assign _T_1888 = Memin[7:0];
  assign _T_1890 = EX_MEM_LSctr == 4'hd;
  assign _T_1893 = Addr0[9:0];
  assign _T_1895 = Memin[7:0];
  assign _T_1898 = Addr1[9:0];
  assign _T_1900 = Memin[15:8];
  assign _T_1903 = Addr0[9:0];
  assign _T_1905 = Memin[7:0];
  assign _T_1908 = Addr1[9:0];
  assign _T_1910 = Memin[15:8];
  assign _T_1913 = Addr2[9:0];
  assign _T_1915 = Memin[23:16];
  assign _T_1918 = Addr3[9:0];
  assign _T_1920 = Memin[31:24];
  assign _GEN_29 = _T_1890 ? 1'h0 : 1'h1;
  assign _GEN_43 = _T_1883 ? 1'h0 : _T_1890;
  assign _GEN_49 = _T_1883 ? 1'h0 : _GEN_29;
  assign _GEN_59 = EX_MEM_MemWr ? _T_1883 : 1'h0;
  assign _GEN_63 = EX_MEM_MemWr ? _GEN_43 : 1'h0;
  assign _GEN_69 = EX_MEM_MemWr ? _GEN_49 : 1'h0;
  assign _T_1923 = Addr0[9:0];
  assign _T_1926 = Addr1[9:0];
  assign _T_1929 = Addr2[9:0];
  assign _T_1932 = Addr3[9:0];
  assign _T_1935 = dmm_Data0_data[7];
  assign _T_1939 = _T_1935 ? 25'h1ffffff : 25'h0;
  assign _T_1940 = dmm_Data0_data[6:0];
  assign _T_1941 = {_T_1939,_T_1940};
  assign _T_1943 = EX_MEM_LSctr == 4'hc;
  assign _T_1949 = {24'h0,dmm_Data0_data};
  assign _T_1952 = dmm_Data1_data[7];
  assign _T_1956 = _T_1952 ? 17'h1ffff : 17'h0;
  assign _T_1957 = dmm_Data1_data[6:0];
  assign _T_1958 = {_T_1956,_T_1957};
  assign _T_1959 = {_T_1958,dmm_Data0_data};
  assign _T_1961 = EX_MEM_LSctr == 4'he;
  assign _T_1967 = {16'h0,dmm_Data1_data};
  assign _T_1968 = {_T_1967,dmm_Data0_data};
  assign _T_1969 = {dmm_Data1_data,dmm_Data0_data};
  assign _T_1970 = {dmm_Data3_data,dmm_Data2_data};
  assign _T_1971 = {_T_1970,_T_1969};
  assign _GEN_77 = _T_1961 ? _T_1968 : _T_1971;
  assign _GEN_78 = _T_1890 ? _T_1959 : _GEN_77;
  assign _GEN_79 = _T_1943 ? _T_1949 : _GEN_78;
  assign _GEN_80 = _T_1883 ? _T_1941 : _GEN_79;
  assign _GEN_142 = {{1'd0}, MEM_WB_RegSrc};
  assign _T_1973 = _GEN_142 == 3'h2;
  assign _T_1975 = _GEN_142 == 3'h1;
  assign _T_1979 = _T_1975 ? MEM_WB_MemOut : MEM_WB_ALUout;
  assign _T_1980 = _T_1973 ? {{31'd0}, MEM_WB_CMPout} : _T_1979;
  assign _GEN_81 = MEM_WB_AL ? MEM_WB_pcAL : _T_1980;
  assign io_Inst = IF_ID_ins;
  assign io_imem_addr = pc_reg;
  assign dataCheck_io_ID_EX_Rs = ID_Ex_Rs;
  assign dataCheck_io_ID_EX_Rt = ID_EX_Rt;
  assign dataCheck_io_Ex_Mem_Rd = EX_MEM_reg_index;
  assign dataCheck_io_Mem_WB_Rd = MEM_WB_reg_index;
  assign dataCheck_io_Ex_Mem_RegWr = EX_MEM_RegWr;
  assign dataCheck_io_Mem_WB_RegWr = MEM_WB_RegWr;
  assign alu_io_in1 = _T_1839;
  assign alu_io_in2 = _T_1840;
  assign alu_io_ALUctr = ID_EX_ALUctr;
  assign alu_clock = clock;
  assign alu_reset = reset;
  assign cmp_io_in1 = alu_io_in1;
  assign cmp_io_in2 = alu_io_in2;
  assign cmp_io_CMPctr = ID_EX_CMPctr;
  assign cp0_io_index = ID_EX_Rd;
  assign cp0_io_datain = input2;
  assign cp0_io_CP0ctr = ID_EX_CMPctr;
  assign cp0_clock = clock;
  assign RegWr = control_6;
  assign RegSrc = control_5[1:0];
  assign AL = control_1;
  assign MemWr = control_7;
  assign Jr = control_0;
  assign Shamt = control_2;
  assign RegDst = control_4;
  assign ALUctr = control_12;
  assign CMPctr = control_3;
  assign ALUsrc = control_10;
  assign ExtOp = control_11;
  assign Jump = control_9;
  assign BorJ = control_8;
  assign Rs = _T_110;
  assign Rd = _T_112;
  assign Rt = _T_111;
  assign BusA = _GEN_12;
  assign BusB = _GEN_16;
  assign Imm26 = _T_1817;
  assign Imm32 = _T_1828;
  assign Memout = _GEN_80;
  assign Memin = _GEN_20;
  assign CMPout = cmp_io_CMPout;
  assign nPC_sel = _T_1845;
  assign pc_next = _T_1871;
  assign pc_plus4 = _T_1848;
  assign pc_br = _T_1855[31:0];
  assign Reg_WrData = _GEN_81;
  assign Reg_index = MEM_WB_reg_index;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  _RAND_0 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1024; initvar = initvar+1)
    imm[initvar] = _RAND_0[31:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1024; initvar = initvar+1)
    dmm[initvar] = _RAND_1[7:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    RegFile[initvar] = _RAND_2[31:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  pc_reg = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  IF_ID_ins = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  IF_ID_pcPlus4 = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  ID_EX_RegWr = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  ID_EX_RegSrc = _RAND_7[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  ID_EX_AL = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  ID_EX_MemWr = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  ID_EX_Jr = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  ID_EX_Shamt = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  ID_EX_RegDst = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{$random}};
  ID_EX_ALUctr = _RAND_13[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{$random}};
  ID_EX_ALUsrc = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{$random}};
  ID_EX_Jump = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{$random}};
  ID_EX_BorJ = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{$random}};
  ID_EX_CMPctr = _RAND_17[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{$random}};
  ID_EX_BusA = _RAND_18[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{$random}};
  ID_EX_BusB = _RAND_19[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{$random}};
  ID_Ex_Rs = _RAND_20[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{$random}};
  ID_EX_Rd = _RAND_21[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{$random}};
  ID_EX_Rt = _RAND_22[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{$random}};
  ID_EX_pcPlus4 = _RAND_23[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{$random}};
  ID_EX_Imm26 = _RAND_24[25:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{$random}};
  ID_EX_Imm32 = _RAND_25[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{$random}};
  EX_MEM_RegWr = _RAND_26[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{$random}};
  EX_MEM_RegSrc = _RAND_27[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{$random}};
  EX_MEM_AL = _RAND_28[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{$random}};
  EX_MEM_MemWr = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{$random}};
  EX_MEM_pcAL = _RAND_30[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{$random}};
  Addr0 = _RAND_31[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{$random}};
  EX_MEM_Rt = _RAND_32[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{$random}};
  EX_MEM_LSctr = _RAND_33[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{$random}};
  EX_MEM_CMPout = _RAND_34[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{$random}};
  EX_MEM_dataIn = _RAND_35[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{$random}};
  EX_MEM_reg_index = _RAND_36[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{$random}};
  MEM_WB_RegWr = _RAND_37[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{$random}};
  MEM_WB_RegSrc = _RAND_38[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{$random}};
  MEM_WB_AL = _RAND_39[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{$random}};
  MEM_WB_pcAL = _RAND_40[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{$random}};
  MEM_WB_ALUout = _RAND_41[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{$random}};
  MEM_WB_CMPout = _RAND_42[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{$random}};
  MEM_WB_reg_index = _RAND_43[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{$random}};
  MEM_WB_MemOut = _RAND_44[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(imm__T_46_en & imm__T_46_mask) begin
      imm[imm__T_46_addr] <= imm__T_46_data;
    end
    if(dmm__T_1887_en & dmm__T_1887_mask) begin
      dmm[dmm__T_1887_addr] <= dmm__T_1887_data;
    end
    if(dmm__T_1894_en & dmm__T_1894_mask) begin
      dmm[dmm__T_1894_addr] <= dmm__T_1894_data;
    end
    if(dmm__T_1899_en & dmm__T_1899_mask) begin
      dmm[dmm__T_1899_addr] <= dmm__T_1899_data;
    end
    if(dmm__T_1904_en & dmm__T_1904_mask) begin
      dmm[dmm__T_1904_addr] <= dmm__T_1904_data;
    end
    if(dmm__T_1909_en & dmm__T_1909_mask) begin
      dmm[dmm__T_1909_addr] <= dmm__T_1909_data;
    end
    if(dmm__T_1914_en & dmm__T_1914_mask) begin
      dmm[dmm__T_1914_addr] <= dmm__T_1914_data;
    end
    if(dmm__T_1919_en & dmm__T_1919_mask) begin
      dmm[dmm__T_1919_addr] <= dmm__T_1919_data;
    end
    if(RegFile__T_114_en & RegFile__T_114_mask) begin
      RegFile[RegFile__T_114_addr] <= RegFile__T_114_data;
    end
    if(RegFile__T_1983_en & RegFile__T_1983_mask) begin
      RegFile[RegFile__T_1983_addr] <= RegFile__T_1983_data;
    end
    if (reset) begin
      pc_reg <= 32'h0;
    end else begin
      pc_reg <= pc_next;
    end
    if (reset) begin
      IF_ID_ins <= 32'h0;
    end else begin
      if (io_boot) begin
        IF_ID_ins <= 32'h0;
      end else begin
        if (nPC_sel) begin
          IF_ID_ins <= 32'h0;
        end else begin
          IF_ID_ins <= imm__T_109_data;
        end
      end
    end
    IF_ID_pcPlus4 <= pc_plus4;
    ID_EX_RegWr <= RegWr;
    ID_EX_RegSrc <= RegSrc;
    ID_EX_AL <= AL;
    ID_EX_MemWr <= MemWr;
    ID_EX_Jr <= Jr;
    ID_EX_Shamt <= Shamt;
    ID_EX_RegDst <= RegDst;
    ID_EX_ALUctr <= ALUctr;
    ID_EX_ALUsrc <= ALUsrc;
    ID_EX_Jump <= Jump;
    ID_EX_BorJ <= BorJ;
    ID_EX_CMPctr <= CMPctr;
    ID_EX_BusA <= BusA;
    ID_EX_BusB <= BusB;
    ID_Ex_Rs <= Rs;
    ID_EX_Rd <= Rd;
    ID_EX_Rt <= Rt;
    ID_EX_pcPlus4 <= IF_ID_pcPlus4;
    ID_EX_Imm26 <= Imm26;
    ID_EX_Imm32 <= Imm32;
    EX_MEM_RegWr <= ID_EX_RegWr;
    EX_MEM_RegSrc <= ID_EX_RegSrc;
    EX_MEM_AL <= ID_EX_AL;
    EX_MEM_MemWr <= ID_EX_MemWr;
    EX_MEM_pcAL <= _T_81;
    if (ID_EX_Jr) begin
      Addr0 <= cp0_io_dataout;
    end else begin
      Addr0 <= alu_io_ALUout;
    end
    EX_MEM_Rt <= ID_EX_Rt;
    EX_MEM_LSctr <= ID_EX_CMPctr;
    EX_MEM_CMPout <= cmp_io_CMPout;
    EX_MEM_dataIn <= ID_EX_BusB;
    if (ID_EX_AL) begin
      EX_MEM_reg_index <= 5'h1f;
    end else begin
      if (ID_EX_RegDst) begin
        EX_MEM_reg_index <= ID_EX_Rd;
      end else begin
        EX_MEM_reg_index <= ID_EX_Rt;
      end
    end
    MEM_WB_RegWr <= EX_MEM_RegWr;
    MEM_WB_RegSrc <= EX_MEM_RegSrc;
    MEM_WB_AL <= EX_MEM_AL;
    MEM_WB_pcAL <= EX_MEM_pcAL;
    MEM_WB_ALUout <= Addr0;
    MEM_WB_CMPout <= EX_MEM_CMPout;
    MEM_WB_reg_index <= EX_MEM_reg_index;
    MEM_WB_MemOut <= Memout;
  end
endmodule
