CLR P0.7
MOV TMOD,#02H
LOOP:
MOV TH0,#0E0H
MOV A,P1
CPL A
MOV P1,A
ACALL DELAY
SJMP LOOP
DELAY:
SETB TR0
AGAIN:
JNB TF0,AGAIN
CLR TF0
RET
END