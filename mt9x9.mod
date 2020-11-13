(*
9x9 multiplication table in Modula-2
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
*)
(* m2c -all mt9x9.mod -o mt9x9 ; ./mt9x9 *)

MODULE mt9x9;
IMPORT InOut;
VAR
  i, j, k: CARDINAL;
BEGIN
    FOR i:=1 TO 9 BY 3 DO
        FOR j:=1 TO 9 DO
            FOR k:=i TO i+2 DO
                InOut.WriteInt(k, 1);
                InOut.Write('x');
                InOut.WriteInt(j, 1);
                InOut.Write('=');
                InOut.WriteInt(k*j, 2);
                InOut.Write(11C);
            END;
            InOut.Write(12C);
        END;
        InOut.WriteLn;
    END;
END mt9x9.
