(*
9x9 multiplication table in Wolfram
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2023.
*)
(* mathicsscript mt9x9.wl *)

For[ i = 1, i <= 9, i += 3,
    For[ j = 1, j <= 9, j++,
        For[ k = i, k <= i+2, k++,
            WriteString[ OutputStream[ "stdout", 1 ], k, "x", j, "=" ];
            WriteString[ OutputStream[ "stdout", 1 ], If[ k*j < 10, " ", "" ] ];
            WriteString[ OutputStream[ "stdout", 1 ], k*j, "\t" ];
        ];
        WriteString[ OutputStream[ "stdout", 1 ], "\n" ];
    ];
    If[ i < 7, Print[ "" ] ];
];
