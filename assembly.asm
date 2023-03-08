    bits 64

    section .data ; Data

    section .text ; Core 
    
    global _get_char
_get_char:
    mov al, byte 'A'
    ret