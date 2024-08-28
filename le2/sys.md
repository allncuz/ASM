## int 0x80 va syscall 
- bu ikkita usul bo'lib, ular orqali Linux yadrosiga tizim chaqiruvlari (`system calls`) amalga oshiriladi. Bu usullar o'rtasida bir necha farqlar mavjud:

### 1. Tizim chaqiruvi mexanizmi:
`int 0x80`: Bu eski usul bo'lib, `32-bit` Linux tizimlarida tizim chaqiruvlarini bajarish uchun ishlatiladi. Bu usulda `CPU 0x80` raqamli uzilish (interrupt) ishlatadi, bu esa Linux yadrosiga tizim chaqiruvini qayta ishlashni bildiradi. eax registrida tizim chaqiruvining identifikatori (raqami) beriladi, boshqa registrlar esa argumentlarni o'z ichiga oladi.

`syscall`: Bu yangi va samaraliroq usul bo'lib, `64-bit` Linux   tizimlarida ishlatiladi. Bu usulda tizim chaqiruvi bevosita bajariladi va bu tezroq ishlaydi, chunki u uzilishlar bilan bog'liq qo'shimcha xarajatlarni talab qilmaydi.

### 2. Platformaga bog'liqlik:
`int 0x80`: Asosan `32-bit` Linux tizimlari uchun ishlatiladi.
`syscall`: Asosan `64-bit` Linux tizimlari uchun mo'ljallangan. Ba'zi 64-bit tizimlar int 0x80ni qo'llab-quvvatlasa-da, bu samaradorlik jihatidan tavsiya etilmaydi.

### 3. Samaradorlik:
`int 0x80`: Bu usul nisbatan sekinroq, chunki u uzilishga sabab bo'ladi va `CPU` rejimlarini almashish talab qilinadi.
`syscall`: Bu usul samaraliroq, chunki u uzilish mexanizmini chetlab o'tadi va tizim chaqiruvini bevosita bajaradi, natijada `CPU` vaqtini tejaydi.
### 4. Tizim chaqiruvlari interfeysi:
`int 0x80`: `32-bit` Linux tizimlaridagi tizim chaqiruvlari interfeysi bilan bog'liq.
`syscall`: `64-bit` tizim chaqiruvlari interfeysi bilan bog'liq.
## Qisqacha xulosa:
`int 0x80` eski, `32-bit` Linux uchun ishlatiladigan tizim chaqiruvi mexanizmi.
`syscall` yangi va samaraliroq, `64-bit` Linux uchun mo'ljallangan tizim chaqiruvi mexanizmi.

# [Syscall.docs](https://chromium.googlesource.com/chromiumos/docs/+/master/constants/syscalls.md)

```asm
mov ebx, 123    ; ebx = 123
mov eax, ebx    ; eax = ebx
add ebx, ecx    ; ebx += ecx
sub ebx, edx    ; ebx -= edx
mul ebx         ; ebx *= ebx
div edx         ; eax /= edx
```