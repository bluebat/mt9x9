*> 9x9 multiplication table in COBOL
*> CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
*> cobc -Fx mt9x9.cob && ./mt9x9 || cobc -Fxj mt9x9.cob

identification division.
program-id. mt9x9.
data division.
working-storage section.
01 i pic 9.
01 j pic 9.
01 k pic 9.
01 l pic 9.
01 kj pic z9.
procedure division.
perform varying i from 0 by 3 until i greater than 8
    perform with test after varying j from 1 by 1 until j equal 9
        perform varying l from 1 by 1 until l greater than 3
            add i l giving k
            multiply k by j giving kj
            display k "x" j "=" kj x"09" with no advancing
        end-perform
        display x"0a" with no advancing
    end-perform
    display x"00"
end-perform
stop run.
