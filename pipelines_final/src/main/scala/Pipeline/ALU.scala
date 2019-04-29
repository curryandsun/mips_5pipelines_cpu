package Pipeline
import chisel3._
import chisel3.util._
import Define._

class ALU extends Module {
  val io = IO(new Bundle {
    //input
    val in1 = Input(UInt(32.W))
    val in2 = Input(UInt(32.W))
    val ALUctr = Input(UInt(6.W))
    //val start = Input(UInt(5.W))
    //output
    val ALUout = Output(UInt(32.W))
    val overflow = Output(Bool())
    /*
    val Quotient=Output(UInt(32.W))
    val remained=Output(UInt(32.W))
    val product = Output(UInt(64.W))
    val complete = Output(UInt(1.W))
    */

  })

  val HI = RegInit(init = 0.U(32.W))
  val LO = RegInit(init = 0.U(32.W))

  def UnuseOtput_alg() ={
    io.overflow := false.B
  }


    //Add
  when ( io.ALUctr === ALU_Add ) {
    io.ALUout := io.in1+io.in2
    //unuse
    UnuseOtput_alg()


    //Addex
  }.elsewhen(io.ALUctr === ALU_Addex ){
    io.ALUout := io.in1+io.in2
    //io.overflow := (io.ALUout ^ io.in1).asSInt()<0.S && (io.ALUout ^ io.in2).asSInt()<0.S
    io.overflow := (io.ALUout.asSInt()>0.S && io.in1.asSInt()<0.S && io.in2.asSInt()<0.S) || (io.ALUout.asSInt()<0.S && io.in1.asSInt()>0.S && io.in2.asSInt()>0.S)


    //Sub
  }.elsewhen(io.ALUctr === ALU_Sub ){
    io.ALUout := io.in1-io.in2
    //unuse
    UnuseOtput_alg()


    //Subex
  }.elsewhen(io.ALUctr === ALU_Subex ){
    io.ALUout := io.in1-io.in2
    //unuse
    io.overflow := (io.ALUout.asSInt()<0.S && io.in1.asSInt()>0.S && io.in2.asSInt()<0.S) || (io.ALUout.asSInt()>0.S && io.in1.asSInt()<0.S && io.in2.asSInt()>0.S)



    //and
  }.elsewhen(io.ALUctr === ALU_And ){
    io.ALUout := io.in1 & io.in2
    //unuse
    UnuseOtput_alg()



    //nor
  }.elsewhen(io.ALUctr === ALU_Nor ){
    io.ALUout := ~(io.in1|io.in2)
    //unuse
    UnuseOtput_alg()



    //or
  }.elsewhen(io.ALUctr === ALU_Or ){
    io.ALUout := io.in1 | io.in2
    //unuse
    UnuseOtput_alg()



    //xor
  }.elsewhen(io.ALUctr === ALU_Xor ){
    io.ALUout :=io.in1 ^ io.in2
    //unuse
    UnuseOtput_alg()


    //Lui
  }.elsewhen(io.ALUctr === ALU_Lui ){
    io.ALUout :=io.in2<< 16.U
    //unuse
    UnuseOtput_alg()


    //sll
  }.elsewhen(io.ALUctr === ALU_Sll ){
    io.ALUout :=io.in2 << io.in1(10,6)//shamt
    //unuse
    UnuseOtput_alg()


    //sllv
  }.elsewhen(io.ALUctr === ALU_Sllv ){
    io.ALUout :=io.in2<<io.in1(15,0)
    //unuse
    UnuseOtput_alg()


    //srlv
  }.elsewhen(io.ALUctr === ALU_Srlv ){
    io.ALUout := io.in2>>io.in1(15,0)
    //unuse
    UnuseOtput_alg()



    //sra
  }.elsewhen(io.ALUctr === ALU_Sra) {
    io.ALUout :=(io.in2.asSInt() >> io.in1(10,6)).asUInt() //shamt
    //unuse
    UnuseOtput_alg()


    //srav
  }.elsewhen(io.ALUctr === ALU_Srav) {
    io.ALUout := (io.in2.asSInt()>>io.in1(15,0)).asUInt()
    //unuse
    UnuseOtput_alg()


    //srl
  }.elsewhen(io.ALUctr === ALU_Srl) {
    io.ALUout :=io.in2 >> io.in1(10,6)//shamt
    //unuse
    UnuseOtput_alg()


    //mthi
  }.elsewhen(io.ALUctr === MT_hi) {
    HI := io.in1
    io.ALUout := 0.U
    //unuse
    UnuseOtput_alg()


    //mtlo
  }.elsewhen(io.ALUctr === MT_lo) {
    LO := io.in1
    io.ALUout := 0.U
    //unuse
    UnuseOtput_alg()


    //mfhi
  }.elsewhen(io.ALUctr === MF_hi) {
    io.ALUout := HI
    //unuse
    UnuseOtput_alg()


    //mfhi
  }.elsewhen(io.ALUctr === MF_lo) {
    io.ALUout := LO
    //unuse
    UnuseOtput_alg()


    //mult
  }.elsewhen(io.ALUctr === ALU_Mult) {
    io.ALUout := 0.U
    val mul = (io.in1.asSInt() * io.in2.asSInt()).asUInt()
    HI := mul(63,32)
    LO := mul(31,0)
    //unuse
    UnuseOtput_alg()


    //multu
  }.elsewhen(io.ALUctr === ALU_Multu) {
    io.ALUout := 0.U
    val mul = io.in1*io.in2
    HI := mul(63,32)
    LO := mul(31,0)
    //unuse
    UnuseOtput_alg()


    //Div
  }.elsewhen(io.ALUctr === ALU_Div) {
    io.ALUout := 0.U
    HI := (io.in1.asSInt() % io.in2.asSInt()).asUInt()
    LO := (io.in1.asSInt() / io.in2.asSInt()).asUInt()
    //unuse
    UnuseOtput_alg()


    //Divu
  }.elsewhen(io.ALUctr === ALU_Divu) {
    io.ALUout := 0.U
    HI := io.in1 % io.in2
    LO := io.in1 / io.in2
    //unuse
    UnuseOtput_alg()
  /*
    //MULu
  }.elsewhen(io.ALUctr === "b011001".U(6.W)){
    counter32.io.en := 1.U
    add1.io.A := 0.U
    add1.io.B := reg(63, 32)
    add1.io.Cin := 0.U

    when(io.start === 0.U(1.W)){
      //init
      counter32.io.reset := 1.U(1.W)
      reg := Cat(0.U(32.W),io.in2)
    }.otherwise({
      counter32.io.reset := 0.U(1.W)
      when(reg(0) === 1.U) {
        add1.io.A := io.in1
      }.otherwise({
        add1.io.A := 0.U
      })
      reg := Cat(add1.io.Sum,reg(31,0))>>1
    })

    when(counter32.io.now === 0.U){
      io.complete := 1.U
    }.otherwise({
      io.complete := 0.U
    })

    io.product := reg
    io.ALUout := reg(31,0)
    //unuse
    counter33.io.en := 0.U
    counter33.io.reset :=0.U
    io.Quotient :=0.U
    io.remained :=0.U



    //Mul booth
  }.elsewhen(io.ALUctr === "b011000".U(6.W)) {
    counter32.io.en := 1.U
    add1.io.A := 0.U
    add1.io.B := 0.U
    add1.io.Cin := 0.U

    when(io.start === 0.U(1.W)) {
      //init
      counter32.io.reset := 1.U(1.W)
      Booth := Cat(0.U(32.W), io.in2,0.U(1.W)).asSInt()
    }.otherwise({
      counter32.io.reset := 0.U(1.W)

      switch (Booth(1,0)){
        is ("b01".U(2.W)){
          add1.io.A := Booth(64,33)
          add1.io.B := io.in1
          add1.io.Cin := 0.U
          Booth := Cat(add1.io.Sum,Booth(32,0)).asSInt()>>1//sar
        }
        is ("b10".U(2.W)){
          add1.io.A := Booth(64,33)
          add1.io.B := ~io.in1
          add1.io.Cin := 1.U
          Booth := Cat(add1.io.Sum,Booth(32,0)).asSInt()>>1//sar
        }
        is ("b00".U(2.W)){
          Booth := Booth >> 1
        }
        is ("b11".U(2.W)) {
          Booth := Booth >> 1
        }
      }

    })
    when(counter32.io.now === 0.U) {
      io.complete := 1.U
    }.otherwise({
      io.complete := 0.U
    })
    io.product := Booth(64,1).asUInt()
    io.ALUout := Booth(31, 0)
    //unuse
    counter33.io.en := 0.U
    counter33.io.reset :=0.U
    io.Quotient := 0.U
    io.remained := 0.U



    //divu
  }.elsewhen(io.ALUctr === "b011011".U(6.W)){
    counter33.io.en := 1.U
    add1.io.A := 0.U
    add1.io.B := 0.U
    add1.io.Cin := 0.U

    when(io.start === 0.U(1.W)){
      //init
      counter33.io.reset := 1.U(1.W)
      reg := Cat(0.U(32.W),io.in1)
    }.otherwise({
      counter33.io.reset := 0.U(1.W)
      add1.io.A := reg(63,32)
      add1.io.B := ~io.in2
      add1.io.Cin := 1.U
      when(add1.io.Sum(31) === 0.U) {
        when(counter33.io.now ===1.U){
          reg := Cat(add1.io.Sum,reg(31,1),1.U(1.W))
        }.otherwise({
          reg := Cat(add1.io.Sum,reg(31,1),1.U(1.W))<<1
        })
      }.otherwise({
        when(counter33.io.now ===1.U){
          //nothing
        }.otherwise({
          reg := reg<<1
        })
      })
    })

    when(counter33.io.now === 0.U){
      io.complete := 1.U
    }.otherwise({
      io.complete := 0.U
    })

    io.Quotient :=reg(31,0)
    io.remained :=reg(63,32)
    //unuse
    counter32.io.en := 0.U
    counter32.io.reset :=0.U
    io.product := 0.U
    io.ALUout := 0.U
    */


    //other
  }.otherwise({
    //unuse
    io.ALUout := 0.U
    UnuseOtput_alg()
  })



}

