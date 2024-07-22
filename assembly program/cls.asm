ORG 0
MOV P2, #0FFH
MOV TMOD,#20H
;timer 1, mode 2
MOV TH1, #-6
MOV SCON, #50H
SETB TR1
MOV DPTR, #MYDATA
H_1:CLR A
MOVC A,@A+DPTR
;get the character
JZ B_1
;iflast character get out
ACALL SEND
INC DPTR
;next one
SJMP H_1
B_1:MOV a,P2
;read data on P2
ACALL SEND
ACALL RECV
MOV P1,A 
SJMP B_1
SEND: MOV SBUF,A
H_2: JNB TI,H_2
;stay here until last bit gone
CLR TI
RET


RECV: JNB RI, RECV
;wait here for char
MOV A, SBUF
; save it in ACC
CLR RI
;get ready for next char
RET
;return to caller
ORG 50H
MYDATA: DB "We Are Ready"
END