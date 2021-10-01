// 9x9 multiplication table in Lobster
// CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
// lobster mt9x9.lobster

for([1, 4, 7]) i:
    for(9) J:
        let j = J + 1
        var s = ""
        for([i, i+1, i+2]) k:
            s += "{k}x{j}={if k*j<10: " " else: ""}{k*j}\t"
        print s
    print ""
