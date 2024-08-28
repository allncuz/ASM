### Mana bu assembly tilida yozilgan dastur 32-bitli Linux tizimi uchun mo‘ljallangan va `"Hello, world!"` matnini terminalga chiqaradi. Keling, kodni qatorma-qator tushuntirib beraman.
```asm
global _start

section .data
    msg db "Hello, world!", 0x0a
    len equ $ - msg

section .text
_start:
    mov eax, 4      ; sys_write call
    mov ebx, 1      ; stdout file descriptor
    mov ecx, msg    ; beyts to write
    mov edx, len    ; number of bytes to write 
    int 0x80        ; perform system call 
    mov eax, 1      ; sys_exit system call
    mov ebx, 0      ; exit status is 0
    int 0x80        ; 32 bit system call
```

### Kodning bo‘limlari:
`section .data:`

- Ushbu bo‘limda boshlang‘ich qiymatga ega ma'lumotlar yoki doimiy qiymatlar aniqlanadi. `msg` o‘zgaruvchisi "Hello, world!" matnini va undan keyin yangi qatordan boshlab belgini `(0x0a)` saqlaydi.

- `len equ $ - msg` esa msg satrining uzunligini hisoblaydi. Bu yerda $ joriy manzilni ifodalaydi va undan `msg` ning boshlanish manzilini ayirish orqali satr uzunligini aniqlaydi.

`section .text:`

- Ushbu bo‘limda protsessor bajarishi kerak bo‘lgan buyruqlar yoziladi.

`_start:`


- Bu dastur boshlanish nuqtasi hisoblanadi. Dastur ishga tushirilganda, aynan shu yerda bajarilish boshlanadi.

### Tizim chaqiruvlari (System Calls):

`sys_write (tizim chaqiruvi raqami: 4):`
- `mov eax, 4: eax` registriga 4 qiymati yuklanadi, bu esa `sys_write` tizim chaqiruvi raqami hisoblanadi.

- `mov ebx, 1: ebx` registriga 1 qiymati yuklanadi, bu esa standarta chiqish `(stdout)`fayl deskriptori hisoblanadi.

- `mov ecx, msg: ecx `registriga msg satrining manzili yuklanadi, ya'ni yozilishi kerak bo‘lgan ma'lumot.

- `mov edx, len: edx` registriga len qiymati yuklanadi, ya'ni yozilishi kerak bo‘lgan baytlar soni.

- `int 0x80:` Ushbu buyruq dasturiy uzilishni `(interrupt)` amalga oshiradi va protsessor tizim chaqiruvini bajarish uchun `yadroni` chaqiradi (bu holatda `sys_write` chaqiruvi).

### sys_exit (tizim chaqiruvi raqami: 1):

- `mov eax, 1: eax` registriga 1 qiymati yuklanadi, bu esa sys_exit tizim chaqiruvi raqami hisoblanadi.
- `mov ebx, 0: ebx `registriga `0` qiymati yuklanadi, bu dastur muvaffaqiyatli tugatilganligini bildiruvchi chiqish status kodi.

- `int 0x80:` Ushbu buyruq protsessorni dastur bajarilishini yakunlash va boshqaruvni operatsion tizimga qaytarish uchun yadroni chaqiradi.
### Xulosa:
- Dastur `"Hello, world!"` satrini terminalga chiqaradi va so‘ngra yakunlanadi. Matnni chiqarish uchun `sys_write` tizim chaqiruvi, dasturdan chiqish uchun esa `sys_exit` tizim chaqiruvi ishlatiladi.

Bu Linux muhitida 32-bitli tizim chaqiruvlarini ishlatgan holda yozilgan assembly dasturlash tilining oddiy va keng tarqalgan misollaridan biridir.







