//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop LCL 0
@SP 
M=M-1
A=M
D=M
@LCL
A=M
M=D
//label LOOP_START
(LOOP_START)
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//add
@SP
M=M-1
A=M
D=M
@SP  
M=M-1
A=M
M=D+M
@SP
M=M+1
//pop LCL 0
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//sub
@SP 
M=M-1 
A=M
D=M
@SP  
M=M-1
A=M
M=M-D
@SP
M=M+1
//pop ARG 0
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//if goto LOOP_START  // If counter != 0, goto LOOP_START
@SP
M=M-1
A=M
D=M
@LOOP_START  // If counter != 0, goto LOOP_START
D;JNE
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
(Haaland)
@Haaland
0;JMP
