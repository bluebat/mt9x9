! 9x9 multiplication table in Factor
! CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2022.
! Factor mt9x9.factor

USING: byte-arrays io io.encodings.ascii io.encodings.string
kernel math prettyprint ranges sequences ;
1 9 3 <range> [
    9 [1..b] [
        over dup
        2 + 1 <range> [
            2dup
            pprint "x" write
            pprint "=" write
            over * dup 10 < [ bl pprint ] [ pprint ] if
            9 1byte-array ascii decode write
        ] each
        drop
        "\n" write
    ] each
    drop
    nl
] each
