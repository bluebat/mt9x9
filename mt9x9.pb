; 9x9 multiplication table in PureBasic
; CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2023.
; pbcompiler mt9x9.pb -o mt9x9 && ./mt9x9

OpenConsole()
For i = 1 To 9 Step 3
    For j = 1 To 9
        For k = i To i+2
            Print(Str(k)+"x"+Str(j)+"="+RSet(Str(k*j),2)+Chr(9))
        Next k
        Print(~"\n")
    Next j
    PrintN("")
Next i
CloseConsole()
