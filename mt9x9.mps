#!/usr/bin/mumps
; 9x9 multiplication table in MUMPS
; CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2020.
; ./mt9x9.mps || mumps mt9x9.mps

mt9x9
 for i=1:3:9 do
 . for j=1:1:9 do
 .. for k=i,i+1,i+2 do
 ... write k,"x",j,"=",$justify(k*j,2),$char(9)
 .. write $char(10)
 . write !
