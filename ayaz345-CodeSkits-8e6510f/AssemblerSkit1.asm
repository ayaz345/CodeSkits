; Simple assembly code skit that adds two numbers
section .data
  num1 dw 5
  num2 dw 10
  result dw 0

section .text
  global _start
_start:
  mov ax, [num1]  ; Load the first number into ax
  mov bx, [num2]  ; Load the second number into bx

  add ax, bx      ; Add the numbers
  mov [result], ax ; Save the result

  ret             ; Exit

