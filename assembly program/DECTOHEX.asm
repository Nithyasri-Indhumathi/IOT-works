;MOV R0,#40H
;MOV R1,#10H
;MOV A,@R0
;ANL A,#0F0h
;SWAP A
;MOV B,#0AH
;MUL AB
;MOV R2,A
;MOV A,@R0
;ANL A,#0FH
;ADD A,R2
;MOV @R1,A


MOV R0,#41H
MOV A,@R0
ANL A,#0F0H
SWAP A
MOV B,#0AH
MUL AB
MOV R2,A
MOV A,@R0
ANL A,#0FH
ADD A,R2
MOV R1,A
MOV R0,#40H
MOV A,@R0
MOV B,#64H
MUL AB
ADD A,R1
MOV R0,#42H
MOV @R0,A




