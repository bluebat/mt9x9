#!/usr/bin/roc
# 9x9 multiplication table in Roc
# CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2024.
# ./mt9x9.roc || roc mt9x9.roc

app [main] { pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.10.0/vNe6s9hWzoTZtFmNkvEICPErI9ptji_ySjicO6CkucY.tar.br" }
import pf.Stdout
import pf.Task exposing [loop]
main =
    loop! { i: 1, j: 0, k: 0 } block
block = \s ->
    if s.i <= 9 then
        loop! { i: s.i, j: 1, k: 0 } line
        Task.ok (Step { i: s.i + 3, j: s.j, k: s.k })
    else
        Task.ok (Done {})
line = \s ->
    if s.j <= 9 then
        loop! { i: s.i, j: s.j, k: s.i } item
        Task.ok (Step { i: s.i, j: s.j + 1, k: s.k })
    else
        Stdout.line! ""
        Task.ok (Done {})
item = \s ->
    if s.k <= s.i + 2 then
        Stdout.write! "$(Num.toStr s.k)x$(Num.toStr s.j)="
        Stdout.write! "$(if (s.k * s.j) < 10 then " " else "")"
        Stdout.write! "$(Num.toStr (s.k * s.j))\t"
        Task.ok (Step { i: s.i, j: s.j, k: s.k + 1 })
    else
        Stdout.write! "\n"
        Task.ok (Done {})
