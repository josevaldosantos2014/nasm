global _start

    section .text
    _start:
        mov rax,1         ; system call for white
        mov rdi,1         ; file handle 1 is stdout
        mov rsi,message    ; address of string to output
        mov rdx,13       ; number of bytes
        syscall             ; invoke operation system to do the write
        mov rax,60        ; system call for exit
        xor rdi,rdi       ; exit code 0
        syscall            ; invoke operationg system to exit


        section .data
        message:db   'Hello, Word' ,10  ; note the newline at the ende