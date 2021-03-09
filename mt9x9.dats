(*
9x9 multiplication table in ATS
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
*)
// patscc mt9x9.dats -o mt9x9 && ./mt9x9

#include "share/atspre_staload.hats"
implement main0() = block(1) where {
    fun item(i: int, j: int, k: int): void =
        if k < i+3 then (
            print!(k, "x", j, "=", (if k*j < 10 then " " else ""): string, k*j, "\t");
            item(i, j, k+1)
        )
    fun line(i: int, j: int): void =
        if j < 10 then (
            item(i, j, i);
            print("\n");
            line(i, j+1)
        )
    fun block(i: int): void =
        if i < 10 then (
            line(i, 1);
            print_newline();
            block(i+3)
        )
}
