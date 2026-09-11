.section .bss
.globl ram
.lcomm ram, 256

.section .text
.globl fill_ram

fill_ram:
    mov $ram+0x50, %rax
    mov $9, %rcx

fill_loop:
    movb $0xFF, (%rax)
    inc %rax
    dec %rcx
    jne fill_loop

    ret

.section .note.GNU-stack,"",@progbits