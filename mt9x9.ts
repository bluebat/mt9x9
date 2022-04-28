#!/usr/bin/deno run
/*
9x9 multiplication table in TypeScript
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2022.
*/
// deno compile mt9x9.ts && ./mt9x9 ||
// ./mt9x9.ts || deno run mt9x9.ts

for(let i:number = 1; i <= 9; i += 3) {
    for(let j:number = 1; j <= 9; j++)
        console.log(
            [i, i+1, i+2].map(
                k => k+'x'+j+'='+(' '+k*j).slice(-2)
            ).join('\t')
        )
    console.log()
}
