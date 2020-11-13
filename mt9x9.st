#!/usr/bin/gst
"
9x9 multiplication table in Smalltalk
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2019.
"
" gst mt9x9.st || ( chmod +x mt9x9.st ; ./mt9x9.st ) "

1 to: 9 by: 3 do: [ :i |
    1 to: 9 do: [ :j |
        i to: i+2 do: [ :k |
            Transcript show: k printString, 'x', j printString, '='.
            k*j < 10 ifTrue: [Transcript show: ' '].
            Transcript show: (k*j) printString.
            Character tab display
        ].
        Character nl display
    ].
    Transcript cr
].
