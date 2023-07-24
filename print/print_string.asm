print_string: 

mov ah, 0x0e ; int=10/ah=0x0e -> BIOS tele-type output

loop:
    mov al, [bx]
    int 0x10    ; print the character in al  
    inc bx
    cmp byte [bx], 0 ; check if we've reached the end of the string
    jne loop
    ret  