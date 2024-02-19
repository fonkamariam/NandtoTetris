//push constant 3030
@3030
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D
//push constant 3040
@3040
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop THIS 2
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@2 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@THIS 
M=M+D
@VAR
D=M
@THIS 
A=M
M=D
@2 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@THIS  
M=M-D
//push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop THAT 6
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@6 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@THAT 
M=M+D
@VAR
D=M
@THAT 
A=M
M=D
@6 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@THAT  
M=M-D
//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//push pointer 1
@THAT
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
//push THIS 2
@2
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
@2
D=A
@THIS
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
//push THAT 6
@6
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
@6
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
