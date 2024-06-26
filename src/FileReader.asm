PROGRAM_SPACE equ 0x7e00

ReadPart:
    mov ah, 0x02
    mov bx, PROGRAM_SPACE
    mov al, 2
    mov dl, [BOOT_PART]
    mov ch, 0x00
    mov dh, 0x00
    mov cl, 0x02

    int 0x13

    jc PartReadFailed

    ret

BOOT_PART:
    db 0

PartReadFailedString:
    db 'Partition read failed!!', 0

PartReadFailed:
    mov bx, PartReadFailedString
    call Printing

    jmp $