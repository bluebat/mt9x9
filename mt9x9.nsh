# 9x9 multiplication table in EFI Shell
# CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2025.
# mt9x9.nsh

@echo -off
for %i run (1 9 3)
    for %j run (1 9)
        set s ""
        set a 0
        for %t run (%i 10 2)
            if not %t == %i then
                if %a% == 0 then
                    set a %t
                endif
            endif
        endfor
        for %k run (%i %a%)
            set b 0
            for %p run (1 %k)
                set q %b%
                for %t run (%q% 100 %j)
                    if not %t == %b% then
                        if %b% == %q% then
                            set b %t
                        endif
                    endif
                endfor
            endfor
            set s "%s%%kx%j="
            for %t run (%b% 0 -10)
                set c %t
            endfor
            if %c% == %b% then
                set s "%s% "
            endif
            set s "%s%%b%  "
        endfor
        echo "%s%"
    endfor
    echo " "
endfor
