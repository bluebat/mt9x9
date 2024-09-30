"
9x9 multiplication table in Self
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2024.
"
" zigself mt9x9.self "

'objects/everything.self' _RunScript.
0 to: 3 Do: [| :ii |
    1 to: 10 Do: [| :j |
        (ii*3)+1 to: (ii*3)+4 Do: [| :k |
            k asString, 'x', j asString, '='; print.
            (k*j) < 10 ifTrue: [' ' print].
            (k*j) asString, '\t'; print.
        ].
        '' printLine.
    ].
    '\n' print.
].
