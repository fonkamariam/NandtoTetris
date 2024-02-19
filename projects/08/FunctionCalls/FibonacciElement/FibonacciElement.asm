//initaliazing sys.init
@Sys.init
0;JMP
//fucntion decleration Main.fibonacci....also 0 local segments needed
(Main.fibonacci)
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
//lt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=D-M// GETS ME Y-X
@NEGATIVE_lt_9 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_9
0;JMP
(NEGATIVE_lt_9)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_9)
//if goto IF_TRUE
@SP
M=M-1
A=M
D=M
@IF_TRUE
D;JNE
//unconditiona jump to IF_FALSE_11
@IF_FALSE
0;JMP
//label IF_TRUE
(IF_TRUE)
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//return
// CREATES VARIABLE ENDFRAME
@LCL
D=M
@13 // ENDFRAME=LCL
M=D
// retAddr = *endframe-5
@5
D=A
@13
D=M-D
@14
M=D
A=M
D=M
@14   // becomes add=17,34...
M=D
// SETS THE RETURN VALUE TO THE CALLER
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
// GIVES THE POINTER BACK TO THE CALLER
@ARG
M=M+1
D=M
@SP
M=D
//RESTORING THAT
@13
M=M-1
A=M
D=M
@THAT
M=D
//RESTORING THIS
@13
M=M-1
A=M
D=M
@THIS
M=D
//RESTORING ARG
@13
M=M-1
A=M
D=M
@ARG
M=D
//RESTORING LCL
@13
M=M-1
A=M
D=M
@LCL
M=D
@14 // goto return address
A=M
0;JMP
//label IF_FALSE
(IF_FALSE)
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
//call Main.fibonacci
// PUSHED THE RETURN ADDRESS IN THE STACK
@Main.fibonacci_12
D=A
@SP
A=M
M=D
@SP
M=M+1
//SAVED LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
//SAVED ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
//SAVED THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// SAVED THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
//SETTING THE ARG = (SP-5-i)
@6
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@6 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Main.fibonacci   
0;JMP 
(Main.fibonacci_12)
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
//call Main.fibonacci
// PUSHED THE RETURN ADDRESS IN THE STACK
@Main.fibonacci_13
D=A
@SP
A=M
M=D
@SP
M=M+1
//SAVED LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
//SAVED ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
//SAVED THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// SAVED THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
//SETTING THE ARG = (SP-5-i)
@6
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@6 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Main.fibonacci   
0;JMP 
(Main.fibonacci_13)
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
//return
// CREATES VARIABLE ENDFRAME
@LCL
D=M
@13 // ENDFRAME=LCL
M=D
// retAddr = *endframe-5
@5
D=A
@13
D=M-D
@14
M=D
A=M
D=M
@14   // becomes add=17,34...
M=D
// SETS THE RETURN VALUE TO THE CALLER
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
// GIVES THE POINTER BACK TO THE CALLER
@ARG
M=M+1
D=M
@SP
M=D
//RESTORING THAT
@13
M=M-1
A=M
D=M
@THAT
M=D
//RESTORING THIS
@13
M=M-1
A=M
D=M
@THIS
M=D
//RESTORING ARG
@13
M=M-1
A=M
D=M
@ARG
M=D
//RESTORING LCL
@13
M=M-1
A=M
D=M
@LCL
M=D
@14 // goto return address
A=M
0;JMP
//fucntion decleration Sys.init....also 0 local segments needed
(Sys.init)
//push constant 5
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Main.fibonacci
// PUSHED THE RETURN ADDRESS IN THE STACK
@Main.fibonacci_14
D=A
@SP
A=M
M=D
@SP
M=M+1
//SAVED LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
//SAVED ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
//SAVED THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// SAVED THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
//SETTING THE ARG = (SP-5-i)
@6
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@6 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Main.fibonacci   
0;JMP 
(Main.fibonacci_14)
//label WHILE
(WHILE)
//unconditiona jump to WHILE              // loops infinitely_15
@WHILE              // loops infinitely
0;JMP
