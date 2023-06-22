IDENTIFICATION DIVISION.
PROGRAM-ID. Program9.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 WS-DATE-STR PIC X(8).
01 WS-FORMATTED-DATE-STR PIC X(10).
01 WS-DATE.
   02 WS-YEAR      PIC 9(4).
   02 WS-MONTH     PIC 9(2) COMP-X.
   02 WS-DAY       PIC 9(2) COMP-X.

PROCEDURE DIVISION.
MAIN-PARAGRAPH.
    ACCEPT WS-DATE FROM DATE

    MOVE WS-DATE TO WS-DATE-STR.
    
    UNSTRING WS-DATE-STR
        INTO WS-YEAR WS-MONTH WS-DAY
    DELIMITED BY ALL SPACES.

    STRING WS-YEAR '/' WS-MONTH '/' WS-DAY
    INTO WS-FORMATTED-DATE-STR.

    DISPLAY "Current Date: " WS-FORMATTED-DATE-STR.  
    STOP RUN.

