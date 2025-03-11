// 9x9 multiplication table in Muon
// CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2025.
// muon /usr/share/muon/lib/core.mu mt9x9.mu ;
// gcc -I/usr/share/muon/examples -o mt9x9 out.c ; ./mt9x9

printf(fmt cstring) int #Foreign("printf") #VarArgs

main() {
    for i := 1; i < 10; i+=3 {
        for j := 1; j <= 9 {
            for k := i; k <= i+2 {
                printf("%dx%d=%2d\t", k, j, k*j)
            }
            printf("\n")
        }
        printf("\n")
    }
}
