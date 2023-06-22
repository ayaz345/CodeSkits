IDENTIFICATION DIVISION.
PROGRAM-ID. Program10.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 WS-NUMBER PIC 9(8) VALUE 1024.
01 WS-SQRT-RESULT PIC 9(8)V9(8).

PROCEDURE DIVISION.
MAIN-PARAGRAPH.
    COMPUTE WS-SQRT-RESULT = FUNCTION NUMVAL-C
    (FUNCTION SQRT (FUNCTION NUMVAL (WS-NUMBER))).
    DISPLAY "Square root of " WS-NUMBER " is " WS-SQRT-RESULT.

    STOP RUN.