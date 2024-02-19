//push ARG 1
@1
D=A
@ARG
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@ARG
M=M-D
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop THAT 0
@SP
M=M-1
A=M
D=M
@THAT
A=M
M=D
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop THAT 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@THAT 
M=M+D
@VAR
D=M
@THAT 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@THAT  
M=M-D
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 2
@2
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
//label MAIN_LOOP_START
(MAIN_LOOP_START)
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//if goto COMPUTE_ELEMENT // if num_of_elements > 0, goto COMPUTE_ELEMENT
@SP
M=M-1
A=M
D=M
@COMPUTE_ELEMENT // if num_of_elements > 0, goto COMPUTE_ELEMENT
D;JNE
//unconditiona jump to END_PROGRAM        // otherwise, goto END_PROGRAM
@END_PROGRAM        // otherwise, goto END_PROGRAM
0;JMP
//label COMPUTE_ELEMENT
(COMPUTE_ELEMENT)
//push THAT 0
@THAT
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THAT 1
@1
D=A
@THAT
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@THAT
M=M-D
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
//pop THAT 2
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@2 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@THAT 
M=M+D
@VAR
D=M
@THAT 
A=M
M=D
@2 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@THAT  
M=M-D
//push pointer 1
@THAT
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
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
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
//unconditiona jump to MAIN_LOOP_START
@MAIN_LOOP_START
0;JMP
//label END_PROGRAM
(END_PROGRAM)
(Haaland)
@Haaland
0;JMP
