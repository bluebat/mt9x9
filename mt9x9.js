#!/usr/bin/gjs
// 9x9 multiplication table in Javascript
// CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
// gjs mt9x9.js || ( chmod +x mt9x9.js ; ./mt9x9.js )

for(var i = 1; i <= 9; i += 3) {
    for(var j = 1; j <= 9; j++)
        print(
            [i, i+1, i+2].map(
                k => k+'x'+j+'='+(' '+k*j).slice(-2)
            ).join('\t')
        )
    print()
}
