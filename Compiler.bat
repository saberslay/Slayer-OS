cd src

nasm main.asm -f bin -o main.bin

copy /b main.bin boot.flp
del main.bin
robocopy D:\Slayer-OS\src D:\Slayer-OS\System boot.flp
cd..
cd src
del boot.flp
cd..
cd System
call bochsrc.bxrc