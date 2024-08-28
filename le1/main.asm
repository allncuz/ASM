section .text
   global _start     ;linker (ld) uchun deklaratsiya qilinishi kerak

_start:              ;linker uchun kirish nuqtasini ko'rsatadi
   mov edx, len     ;xabar uzunligi
   mov ecx, msg     ;yoziladigan xabar
   mov ebx, 1       ;file descriptor (stdout)
   mov eax, 4       ;sistema chaqiruvi raqami (sys_write)
   int 0x80         ;yadro chaqirishi

   mov eax, 1       ;sistema chaqiruvi raqami (sys_exit)
   int 0x80         ;yadro chaqirishi

section .data
msg db 'Hello, world!', 0xa  ;chiqariladigan matn
len equ $ - msg     ;matn uzunligini hisoblash
