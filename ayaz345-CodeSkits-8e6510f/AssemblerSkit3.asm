; Assembly code skit that reverses a string
section .data
  input db 'Hello, World!', 0
  len equ $-input ; Calculate the length of the input string

section .text
  global _start
_start:
  lea di, [input]     ; Load the address of the input string into di
  lea si, [input+len-1] ; Load the address of the last character into si

reverse_loop:
  cmp di, si          ; Compare di and si
  jge end_reverse     ; If di >= si, end the loop
  mov al, [di]        ; Load the character at di into al
  mov ah, [si]        ; Load the character at si into ah
  xchg al, ah         ; Exchange the values of al and ah
  mov [di], al        ; Store the value of al at di
  mov [si], ah        ; Store the value of ah at si
  inc di              ; Increment di
  dec si              ; Decrement si
  jmp reverse_loop    ; Continue the loop

end_reverse:
  ret                 ; Exit

