' 9x9 multiplication table in VBScript
' CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
' oscript mt9x9.vbs

For i = 1 To 9 Step 3
    For j = 1 To 9
        s = ""
        For k = i To i+2
            s = s+CStr(k)+"x"+CStr(j)+"="
            If k*j < 10 Then
                s = s+" "
            End If
            s = s+CStr(k*j)+vbTab
        Next
        Wscript.Echo s
    Next
    Wscript.Echo ""
Next
