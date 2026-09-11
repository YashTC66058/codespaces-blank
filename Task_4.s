.section .bss
.globl ram
.lcomm ram, 256

.section .text
.globl fill_ram

fill_ram:
    movb $1, %al
    movb $0, %dl

sum_loop:
    addb %al, %dl
    incb %al
    cmpb $11, %al
    jne sum_loop

    movb %dl, ram+0x50

    ret

.section .note.GNU-stack,"",@progbits