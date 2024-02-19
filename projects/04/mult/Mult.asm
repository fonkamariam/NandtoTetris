@R1
D=M
@n // LIMIT OF LOOP
M=D
@prod // TEMPORARY VAR
M=0
@i // COUNTER
M=0
D=0
@n
D=D-M
@24
D;JGE
@R0
D=M
@prod // PROD UPDATED
M=D+M
@i
M=M+1
D=M
@n
D=D-M
@11 //BACK TO IF 
0;JMP
@prod // END OF LOOP
D=M
@R2
M=D
@28
0;JMP