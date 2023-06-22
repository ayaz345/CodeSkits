; Assembly code skit that calculates the length of a string
section .data
  input db 'Hello, World!', 0
  len dw 0

section .text
  global _start
_start:
  lea si, [input]     ; Load the address of the input string into si

strlen_loop:
  lodsb                ; Load the character at si into al and increment si
  cmp al, 0            ; Compare al with 0 (null-terminator)
  je end_strlen        ; If al is 0, jump to end_strlen
  inc [len]            ; Increment len by 1
  jmp strlen_loop      ; Continue the loop

end_strlen:
  ret                  ; Exit