MOV TMOD,#60H
MOV TH1,#0
SETB P3.5
AGAIN:
SETB TR1
L1:
MOV A,TL1
MOV P1,A
JNB TF1,L1
CLR TF1
CLR TR1
SJMP AGAIN