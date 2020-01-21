section .data
section .bss
section .text
      global main

main:
section .text
  push  rbp
  mov   rbp, rsp
  mov   rdi, $8
  call  doit
  leave
  ret

doit:
section .data
  .msg db "doit...",10,0 ; not visible outside of doit.
  .len equ $-.msg-1      ; not visible outside of doit.
section .text
  push  rbp
  mov   rbp, rsp
  mov rdx, rdi
  mov rax, 1
  mov rdi, 1
  mov rsi, .msg
  syscall
  leave
  ret
