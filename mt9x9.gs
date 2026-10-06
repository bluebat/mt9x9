/*
9x9 multiplication table in Genie
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2026.
*/
// valac mt9x9.gs && ./mt9x9

[indent=4]
init
    i : int = 1
    while i <= 9
        for var j = 1 to 9
            K : array of int = {i, i+1, i+2}
            for k in K do stdout.printf("%dx%d=%2d\t", k, j, k*j)
            stdout.printf("\n")
        print ""
        i += 3
