//push constant 10
@10
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
//push constant 21
@21
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop ARG 2
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@2 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@ARG 
M=M+D
@VAR
D=M
@ARG 
A=M
M=D
@2 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@ARG  
M=M-D
//pop ARG 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@ARG 
M=M+D
@VAR
D=M
@ARG 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@ARG  
M=M-D
//push constant 36
@36
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop THIS 6
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@6 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@THIS 
M=M+D
@VAR
D=M
@THIS 
A=M
M=D
@6 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@THIS  
M=M-D
//push constant 42
@42
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop THAT 5
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@5 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@THAT 
M=M+D
@VAR
D=M
@THAT 
A=M
M=D
@5 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@THAT  
M=M-D
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
//push constant 510
@510
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop temp 6
@SP
M=M-1
A=M
D=M
@11
M=D
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THAT 5
@5
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
@5
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
//push THIS 6
@6
D=A
@THIS
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@6
D=A
@THIS
M=M-D
//push THIS 6
@6
D=A
@THIS
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@6
D=A
@THIS
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
//push temp 6
@11
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
(Haaland)
@Haaland
0;JMP
