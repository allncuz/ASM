global _start

_start:
    mov eax, 1   ; mov xotira manzillari o'rtasida ma'lumotlarni ko'chirish '1 ni eax ga' 1 esa yuklanadigan qiymat.
    mov ebx, 42  ; ebx registrining qiymati 42 bo'ladi. 42 ni ebx ga'
    sub ebx, 29  ; sub ebx 42 ga teng dan 29 ni ayiradi
    int 0x80     : yoki syscall 64 bit va int 0x80 32 bit batafsil sys.md da