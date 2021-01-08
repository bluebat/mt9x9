/*
9x9 multiplication table in Scala
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
*/
// scalac mt9x9.scala && scala mt9x9

object mt9x9 {
    def main(args: Array[String]) = {
        for (i <- 1 to 9 by 3) {
            for (j <- 1 to 9) {
                List(i, i+1, i+2).foreach {
                    k => print(k+"x"+j+"="+f"${k*j}%2d"+"\t")
                }
                println()
            }
            println()
        }
    }
}
