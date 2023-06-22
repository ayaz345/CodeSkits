IDENTIFICATION DIVISION.
PROGRAM-ID. Program6.

DATA DIVISION.

WORKING-STORAGE SECTION.
01 WS-NUM1 PIC 9(2) VALUE 0.
01 WS-NUM2 PIC 9(2) VALUE 0.
01 WS-RESULT PIC 9(3) VALUE 0.

PROCEDURE DIVISION.

MAIN-PARAGRAPH.
    DISPLAY "Enter first number: ".
    ACCEPT WS-NUM1.
    DISPLAY "Enter second number: ".
    ACCEPT WS-NUM2.
    PERFORM MULTIPLY-TWO-NUMBERS.
    DISPLAY "Product: " WS-RESULT.
    STOP RUN.

MULTIPLY-TWO-NUMBERS.
    MULTIPLY WS-NUM1 BY WS-NUM2 GIVING WS-RESULT.
