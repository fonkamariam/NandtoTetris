@temp
M=0
@24576
D=A
@temp
A=D
D=M
@46// IF LOOPU
D;JNE
@bit // start of white pixel
M=0
@8192
D=A 
@R0
M=D
@n // CREATION OF N VAR
M=D
@16384 // SCREEN VARIABLE CREATION
D=A
@screen 
M=D
@i // I VAR CREATED
M=0
D=M
@n
D=D-M
@44 // START OF IF CONDITION
D;JGE
@screen
D=M
@bit
A=D+M
M=0
@1 // UPDATION OF BIT
D=A
@bit
M=D+M
@i // UPDATION OF I
M=M+1
D=M
@n
D=D-M
@26
0;JMP
@0
0;JMP//end of white pixel
@bit
M=0 
@8192
D=A
@R0
M=D
@n // CREATION OF N VAR 
M=D
@16384 // SCREEN VARIABLE CREATION
D=A
@screen 
M=D
@i // I VAR CREATED
M=0
D=M
@n
D=D-M
@81 // START OF IF CONDITION
D;JGE
@screen
D=M
@bit
A=D+M
M=-1
@1 // UPDATION OF BIT
D=A
@bit
M=D+M
@i // UPDATION OF I
M=M+1
D=M
@n
D=D-M
@63
0;JMP
@0 // END
0;JMP






