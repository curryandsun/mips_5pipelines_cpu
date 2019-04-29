//**************************************************************************
//--------------------------------------------------------------------------
//
// version 2.0
//--------------------------------------------------------------------------
//**************************************************************************


package Pipeline

import chisel3.iotesters.PeekPokeTester
import java.io.PrintWriter
import java.io.File
import scala.io.Source
import scala.collection.mutable.ArrayBuffer
import scala.util.control._


class PipeTests_p(c: Pipelines) extends PeekPokeTester(c) {


    val file        = new File("Inst_p")
    val data_file   = new File("data_p")

    var inst_amount = 0
    var cycles      = 0
    var IPC         = 0
    var inst_last   = 0
    def base_addr   = 0
    var passed_num	= 0
    var no_passe_num= 0
    var accuracy_all = 0.0
    var test_num	= 0

    val no_passe_files = new ArrayBuffer[File]
    val no_passe_files_num = new ArrayBuffer[Int]

    def asUInt(InInt: Int) = (BigInt(InInt >>> 1) << 1) + (InInt & 1)

     // Reset the CPU
    def TopBoot() = {
        poke(c.io.test_wr, 1)
        poke(c.io.test_addr, 0)
        poke(c.io.test_inst, 0)
        poke(c.io.test_wr_dmm, 1)
        poke(c.io.test_addr_dmm, 0)
        poke(c.io.test_data, 0)
        poke(c.io.boot, 1)
        // poke(c.io.test_dm_wr, 0)
        step(1)
    }

    def WriteImm (filename : File) = {

        var addr = 0
        var Inst = 0
        for (line <- Source.fromFile(filename).getLines){
           Inst = Integer.parseUnsignedInt(line, 16)
           poke(c.io.test_wr, 1)
           poke(c.io.test_addr, addr*4 + base_addr)
           poke(c.io.test_inst, asUInt(Inst))
           poke(c.io.boot, 1)

           addr = addr + 1

           inst_amount = inst_amount + 1

           inst_last = Inst
           step(1)
        }
        poke(c.io.test_wr, 0)
    }

    def WriteDmm (filename : File) = {

      var addr = 0
      var data = 0
      for (line <- Source.fromFile(filename).getLines){
        data = Integer.parseUnsignedInt(line, 16)
        poke(c.io.test_wr_dmm, 1)
        poke(c.io.test_addr_dmm, addr + base_addr)
        poke(c.io.test_data, asUInt(data))
        poke(c.io.boot, 1)
        addr = addr + 4
        step(1)
      }
      poke(c.io.test_wr_dmm, 0)
    }

    def RunCpu (/*defcycle : Int, */filename : File, test_num : Int) =
    {
        poke(c.io.boot, 0)
        var flag = 0
        var wrong = 0
        var lastflag = 0

        var branchSum = 0
        var branchHappen = 0
        var predictRight = 0
        //val loop = new Breaks;




           while(cycles<86524&&flag==0)
           {
                poke(c.io.test_wr, 0)
                poke(c.io.test_wr_dmm, 0)

                cycles = cycles + 1

                if( peek(c.io.Branch) == 1 ) {
                    branchSum = branchSum + 1
                    if(peek(c.io.Bhappen) == 1){
                      branchHappen = branchHappen + 1
                    }
                    if(peek(c.io.Bhappen) == peek(c.io.Bpredict)){
                      predictRight = predictRight + 1
                    }
                }

		//执行到exit段 退出
                if( peek(c.io.Inst) == 0x340900ff ) {
                    flag = 1
                    poke(c.io.test_wr, 1)
                    poke(c.io.test_addr, 0)
                    poke(c.io.test_inst, 0)
                }
                

                step(1)
           }
        printf("inst_amount = %3d\n", inst_amount)




        printf("BranchSUM:%d    BranchHappen:%d  predictRight:%d  \naccuracy:%.6f\n", branchSum,branchHappen,predictRight,1.0*predictRight/branchSum)
        accuracy_all = accuracy_all + 1.0*predictRight/branchSum
    }

    def SubFile(dir: File): Iterator[File] = {
        val d = dir.listFiles.filter(_.isDirectory)
        val f = dir.listFiles.toIterator
        f ++ d.toIterator.flatMap(SubFile _)
    }

    //test all files in the TestFiles
    var count1 = 1
    for( filename <- SubFile(file) )
    {
        if(filename.toString == "Inst_p/dhrystone.coe"){
          poke(c.io.test_exc ,1)
        }else if(filename.toString == "Inst_p/crc32.coe"){
          //printf("\ncrc32 EXC replace")
          poke(c.io.test_exc ,2)
        }else if(filename.toString == "Inst_p/coremark.coe"){
          //printf("\ncoremark EXC replace")
          poke(c.io.test_exc ,3)
        }else{
          poke(c.io.test_exc ,0)
        }


        var count2 = 1
        printf("\nfilename = %s\n",filename)
        TopBoot()
        inst_amount = 0
        WriteImm(filename)
        for(datafilename <- SubFile(data_file)){

          if(count1 == count2){
            printf("writing Data:")
            printf(datafilename.toString)
            WriteDmm(datafilename)
	    printf("\nwriting over")
          }
          count2 = count2 + 1
        }
        cycles      = 0
        test_num = test_num + 1
        printf("\ntest_num : %2d\n", test_num)
 //       poke(c.io.rf_19_reset,1)
        step(1)
        //poke(c.io.rf_19_reset,0)
        RunCpu(filename, test_num)
        count1 = count1+1
    }

    printf("\n")
    printf("the average of predict accuracy:%.6f",accuracy_all/test_num)
    printf("\n\n\n")

}
