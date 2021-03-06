/*
9x9 multiplication table in Go
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
*/
// go build mt9x9.go && ./mt9x9 || go run mt9x9.go

package main
import "fmt"
func main() {
    for i := 1; i <= 9; i += 3 {
        for j := 1; j <= 9; j++ {
            for _, k := range []int{i, i+1, i+2} {
                fmt.Printf("%dx%d=%2d\t", k, j, k*j)
            }
            fmt.Printf("\n")
        }
        println()
    }
}
