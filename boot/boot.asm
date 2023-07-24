[org 0x7c00]
	mov [BOOT_DRIVE], dl ;BIOS stores our boot drive in DL, so it’s best to remember this for later.
	
	mov bp, 0x8000 ;Here we set our stack safely out of the way, at 0x8000
	mov sp, bp
	
	mov bx, 0x9000 ;Load 5 sectors to 0x0000(ES):0x9000(BX)
	mov dh, 5
	mov dl, [BOOT_DRIVE]
	call disk_load

	mov dx, [0x9000] ;Print out the first loaded word, which we expect to be 0xdada, stored at address 0x9000
	call print_hex
	
	mov dx, [0x9000 + 512] ;Also, print the first word from the 2nd loaded sector: should be 0xface
	call print_hex
	
	jmp $
	
%include "../print/print_string.asm" ; Re-use our print_string function
%include "../print/print_hex.asm" 
%include "disk_load.asm"

; Global variables 
BOOT_DRIVE: db 0

; Bootsector padding
times 510-($-$$) db 0
dw 0xaa55

;BIOS只负责加载第一个sector的内容，将后面两个sector填充相同的数字，可以验证后续的硬盘读取是否成功
times 256 dw 0xdada 
times 256 dw 0xface