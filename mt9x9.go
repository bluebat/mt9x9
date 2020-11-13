/*
9x9 multiplication table in Go
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
*/
// go run mt9x9.go || ( go build mt9x9.go ; ./mt9x9 )

package main
import "fmt"
func main() {
    for i := 1; i <= 9; i += 3 {
        for j := 1; j <= 9; j++ {
            for k := i; k < i+3; k++ {
                fmt.Printf("%dx%d=%2d\t", k, j, k*j)
            }
            fmt.Printf("\n")
        }
        println()
    }
}
