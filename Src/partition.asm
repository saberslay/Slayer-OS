[org 0x7e00]

mov bx, ReadPartSuccess
call Printing

jmp $

%include "printing.asm"

ReadPartSuccess:
    db 'OS: Booting Completed! PartitonReading: Success!', 0

times 2048-($-$$)db 0