package Pipeline

import chisel3.iotesters.Driver
import utils.ercesiMIPSRunner

object Launcher_p {
  val tests = Map(

    "Pipelines" -> { (backendName: String) =>
      Driver(() => new Pipelines(), backendName) {
        (c) => new PipeTests_p(c)
      }
    }
  )

  def main(args: Array[String]): Unit = {
    ercesiMIPSRunner(tests, args) 
  }
}

/*
object Launcher{
  def main(args: Array[String]): Unit = {
    Driver(()=>new Pipelines){
      (c)=> new PipeTests(c)
    }
  }
}
*/
