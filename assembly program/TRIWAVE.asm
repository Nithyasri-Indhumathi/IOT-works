;CLR A
;CLR P0.7
;L1:
;INC A
;MOV P1,A
;CJNE A,#40H,L1

;L2:

;DEC A
;MOV P1,A
;CJNE A,#00H,L2
;SJMP L1
;END

CLR A
CLR P0.7
L1:
ADD A,#10H
MOV P1,A
CJNE A,#100H,L1
MOV A,#100H
L2:

SUBB A,#10H
MOV P1,A
CJNE A,#10H,L2
SJMP L1
END
