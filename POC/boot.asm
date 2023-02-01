section .boot
    bits 64
    
    global start
start:

    mov ax, 0x07c0
    add ax, 0x0800
    mov es, ax
    mov bx, 0x0000
    mov dh, 0x00
    mov dl, 0x80
    mov ch, 0x00
    mov cl, 0x02
    mov ah, 0x02
    int 0x13

    mov edx, 13
    mov ecx, message
    mov ebx, 0x000b8000
    mov eax, 4
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80

section .data
    message db '[DEBUG] PSI Booted.', 0
