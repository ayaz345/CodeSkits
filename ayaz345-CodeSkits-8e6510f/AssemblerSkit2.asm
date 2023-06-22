; Assembly code skit that calculates the factorial of a number
section .data
  num dd 5
  result dd 1

section .text
  global _start
_start:
  mov ecx, [num] ; Load num into ecx

factorial_loop:
  mul ecx        ; Multiply the result with the current value of ecx
  dec ecx        ; Decrement ecx
  jnz factorial_loop ; If ecx is not zero, jump to factorial_loop

  ret            ; Exit

