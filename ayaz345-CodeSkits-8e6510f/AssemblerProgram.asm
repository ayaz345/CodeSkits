; Assembler Program

; Basic Instructions

; Load data
LD A, 42

; Add data
ADD A, 10

; Compare data
CP A, 50

; Jump to address/label
JP Z, SomeLabel

; Write data to memory
LD (0x1234), A

SomeLabel:

; Load value at memory address
LD A, (0x1234)

; Halt execution
HALT