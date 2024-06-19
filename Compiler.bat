cd src

nasm Boot.asm -f bin -o boot.bin
nasm partition.asm -f bin -o partition.bin

robocopy L:\ASM\Slayer-os\Src L:\ASM\Slayer-os\build boot.bin
robocopy L:\ASM\Slayer-os\Src L:\ASM\Slayer-os\build partition.bin

del boot.bin
del partition.bin

cd..
cd build

copy /b boot.bin+partition.bin boot.flp

robocopy L:\ASM\Slayer-os\build L:\ASM\Slayer-os\System boot.flp

del boot.flp

cd..
cd System
call bochsrc.bxrc