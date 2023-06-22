; Assembly code skit that finds the largest number in an array
section .data
  array dd 3, 7, 1, 12, 5
  len equ ($-array) / 4
  max dw 0

section .text
  global _start
_start:
  lea si, [array]     ; Load the address of the array into si
  mov cx, len          ; Load len into cx

find_max_loop:
  lodsd                ; Load the value at si into eax and increment si by 4
  cmp eax, [max]       ; Compare eax and max
  jle continue_loop    ; If eax <= max, continue the loop
  mov [max], eax       ; Store the value of eax in max

continue_loop:
  loop find_max_loop   ; Decrement cx and jump to find_max_loop if cx is not zero

  ret                  ; Exit

