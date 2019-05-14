; 9x9 multiplication table in IDL
; CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2019.
; gdl -q -e mt9x9

pro mt9x9
    for i = 1, 9, 3 do begin
        for j = 1, 9 do begin
            for k = i, i+2 do begin           
                print, k,"x",j,"=",k*j,string(9b), $
                    format='($,I1,A,I1,A,I2,A)'
            endfor
            print, string(10b), format='($,A)'
        endfor
        print
    endfor
end
