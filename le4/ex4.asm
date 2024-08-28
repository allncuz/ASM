global _start

section .text
_start:
    mov ebx, 1      ; start et 1
    mov ecx, 6      ; number is interations
lable:
    add ebx, ebx    ; ebx += ebx
    dec ecx         ; ecx - 1
    cmp ecx, 0      ; compare ecx with 0
    jg lable        ; jump to leble if greater
    mov eax, 1      ; sys_exit system call 
    int 0x80