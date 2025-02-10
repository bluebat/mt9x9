" 9x9 multiplication table in Vimscript
" CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2025.
" vim --cmd 'source mt9x9.vim'

for i in range(1, 9, 3)
    for j in range(1, 9)
        for k in [i, i+1, i+2]
            echon k'x'j'='k*j<10?' ':''k*j"\t"
        endfor
        echon "\n"
    endfor
    echo ""
endfor
quit
