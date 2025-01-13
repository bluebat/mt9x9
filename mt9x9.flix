// 9x9 multiplication table in Flix
// CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2025.
// java -jar flix.jar mt9x9.flix

def main(): Unit \ IO =
    foreach(i <- List#{1, 4, 7}) {
        foreach(j <- List.range(1, 10)) {
            let s0 = if (i*j < 10) " " else "";
            let s1 = if ((i+1)*j < 10) " " else "";
            let s2 = if ((i+2)*j < 10) " " else "";
            println("${i}x${j}=${s0}${i*j}\t${i+1}x${j}=${s1}${(i+1)*j}\t${i+2}x${j}=${s2}${(i+2)*j}")
        };
        println("")
    }