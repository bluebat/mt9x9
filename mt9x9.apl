⍝ 9x9 multiplication table in APL
⍝ CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2026.
⍝ apl -s --OFF -f mt9x9.apl

item←{(⎕UCS 8),(⍕⍵),'x',(⍕⍺),'=',((⎕UCS 0) ' ')[1+(⍵×⍺)<10],(⍕⍵×⍺),"\t"}
line←{⍵ item¨ (⍳3)+⍺-1 ⋄ "\0"}
block←{⍵ line¨ ⍳9 ⋄ →(⍵=7)/0 ⋄ ''}
_ ← block¨ ¯2+3×⍳3
