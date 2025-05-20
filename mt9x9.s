/*
9x9 multiplication table in Assembly(AT&T)
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2025.
*/
# as mt9x9.s -o mt9x9.o && ld mt9x9.o -o mt9x9 && ./mt9x9

.global    _start
.data
i:    .byte    0
j:    .byte    0
k:    .byte    0
ten:    .byte    10
item:    .ascii    "9x9=81\t"
nl:    .ascii    "\n"
.text
_start:
    movb    $1, i
loop_i:
    movb    $1, j
loop_j:
    movb    $0, k
loop_k:
    movb    k, %al
    addb    i, %al
    addb    $48, %al
    movb    %al, item
    movb    j, %al
    addb    $48, %al
    movb    %al, item+2
    movb    k, %al
    addb    i, %al
    mulb    j
    cmpb    ten, %al
    jb    if_then
    divb    ten
    addb    $48, %al
    movb    %al, item+4
    addb    $48, %ah
    movb    %ah, item+5
    jmp    if_end
if_then:
    addb    $48, %al
    movb    $32, item+4
    movb    %al, item+5
if_end:
    mov    $1, %rax
    mov    $1, %rdi
    mov    $item, %rsi
    mov    $7, %rdx
    syscall
    incb    k
    cmpb    $2, k
    jbe    loop_k
    call    newline
    incb    j
    cmpb    $9, j
    jbe    loop_j
    call    newline
    addb    $3, i
    cmpb    $9, i
    jbe    loop_i
    mov    $60, %rax
    xor    %rdi, %rdi
    syscall
newline:
    mov    $1, %rax
    mov    $1, %rdi
    mov    $nl, %rsi
    mov    $1, %rdx
    syscall
    ret
