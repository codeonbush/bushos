; load DH sectors to ES:BX from drive DL
disk_load:
	mov dx, 0x1235
	call print_hex
	jmp $

	push dx ;将dx寄存器的内容压入栈中，这样稍后可以获取需要读取多少个扇区，即使这期间dx的内容被修改了
	mov ah, 0x02 ;BIOS的读取sector方法
	mov al, dh ;读取DH个sectors
	mov ch, 0x00 ;柱面0
	mov dh, 0x00 ;磁头0
	mov cl, 0x02 ;从第二个sector开始读取，即从boot sector之后开始读取

	int 0x13 ;执行BIOS中断调用

	jc disk_error ;判断是否读取成功，即cf寄存器标志是否有写入
	
	pop dx ;将之前压栈的dx内容弹出

	cmp dh, al ;如果al（读取的sectors数量）不等于dh（期望读取的sectors数量）则读取失败
	jne disk_error 
	ret
	
disk_error :

	mov bx, DISK_ERROR_MSG 
	call print_string
	jmp $
	
; Variables
DISK_ERROR_MSG db "Disk read errorrrrrrr!", 0