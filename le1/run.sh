nasm -f elf32 main.asm -o main.o
ld -m elf_i386 -o main main.o

./main