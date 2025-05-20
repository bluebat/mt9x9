; 9x9 multiplication table in Assembly(Intel)
; CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2025.
; nasm -f elf64 mt9x9.asm && ld mt9x9.o -o mt9x9 && ./mt9x9

GLOBAL    _start
SECTION    .data
i:    DB    0
j:    DB    0
k:    DB    0
ten:    DB    10
item:    DB    '9x9=81', 9
nl:    DB    10
SECTION    .text
_start:
    MOV    BYTE[i], 1
loop_i:
    MOV    BYTE[j], 1
loop_j:
    MOV    BYTE[k], 0
loop_k:
    MOV    AL, [k]
    ADD    AL, [i]
    ADD    AL, 48
    MOV    BYTE[item], AL
    MOV    AL, [j]
    ADD    AL, 48
    MOV    BYTE[item+2], AL
    MOV    AL, [k]
    ADD    AL, [i]
    MUL    BYTE[j]
    CMP    AL, [ten]
    JB    if_then
    DIV    BYTE[ten]
    ADD    AL, 48
    MOV    BYTE[item+4], AL
    ADD    AH, 48
    MOV    BYTE[item+5], AH
    JMP    if_end
if_then:
    ADD    AL, 48
    MOV    BYTE[item+4], ' '
    MOV    BYTE[item+5], AL
if_end:
    MOV    RAX, 1
    MOV    RDI, 1
    MOV    RSI, item
    MOV    RDX, 7
    SYSCALL
    INC    BYTE[k]
    CMP    BYTE[k], 2
    JBE    loop_k
    CALL    newline
    INC    BYTE[j]
    CMP    BYTE[j], 9
    JBE    loop_j
    CALL    newline
    ADD    BYTE[i], 3
    CMP    BYTE[i], 9
    JBE    loop_i
    MOV    RAX, 60
    XOR    RDI, RDI
    SYSCALL
newline:
    MOV    RAX, 1
    MOV    RDI, 1
    MOV    RSI, nl
    MOV    RDX, 1
    SYSCALL
    RET
