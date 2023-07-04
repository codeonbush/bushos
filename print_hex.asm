print_hex:
    ; Convert the hexadecimal value in DX to ASCII codes
    push bx
    mov bx, HEX_OUT + 2 ; Skip the "0x" prefix in HEX_OUT
    mov cx, 4 ; Process 4 hexadecimal digits
    
convert_hex_digit:
    rol dx, 4 ; Rotate the least significant nibble to the most significant position
    mov dl, dh ; Move the most significant nibble to DL
    and dl, 0x0F ; Mask out the upper bits
    add dl, '0' ; Convert the nibble to its ASCII code
    
    cmp dl, '9' ; Check if the digit is greater than 9
    jbe skip_addition ; If not, skip the addition
    
    add dl, 7 ; Convert the digit (A-F) to its ASCII code

skip_addition:
    mov [bx], dl ; Store the ASCII code at HEX_OUT
    inc bx ; Move to the next character
    loop convert_hex_digit ; Repeat for all digits
    
    pop bx
    
    call print_string ; Print the modified HEX_OUT string
    ret