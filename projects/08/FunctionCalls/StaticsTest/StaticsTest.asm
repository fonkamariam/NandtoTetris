//initaliazing sys.init
@Sys.init
0;JMP
//fucntion decleration Class1.set....also 0 local segments needed
(Class1.set)
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop static 0
@SP
M=M-1
A=M
D=M
@StaticsTest.0_1
M=D    
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
//pop static 1
@SP
M=M-1
A=M
D=M
@StaticsTest.1_1
M=D    
//push constant 0
@0
D=A
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
//fucntion decleration Class1.get....also 0 local segments needed
(Class1.get)
//push static 0
@StaticsTest.0_1
D=M
@SP
A=M
M=D
@SP
M=M+1
//push static 1
@StaticsTest.1_1
D=M
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
//fucntion decleration Class2.set....also 0 local segments needed
(Class2.set)
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop static 0
@SP
M=M-1
A=M
D=M
@StaticsTest.0_3
M=D    
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
//pop static 1
@SP
M=M-1
A=M
D=M
@StaticsTest.1_3
M=D    
//push constant 0
@0
D=A
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
//fucntion decleration Class2.get....also 0 local segments needed
(Class2.get)
//push static 0
@StaticsTest.0_3
D=M
@SP
A=M
M=D
@SP
M=M+1
//push static 1
@StaticsTest.1_3
D=M
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
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Class1.set
// PUSHED THE RETURN ADDRESS IN THE STACK
@Class1.set_9
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
@7
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@7 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Class1.set   
0;JMP 
(Class1.set_9)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 23
@23
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Class2.set
// PUSHED THE RETURN ADDRESS IN THE STACK
@Class2.set_10
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
@7
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@7 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Class2.set   
0;JMP 
(Class2.set_10)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//call Class1.get
// PUSHED THE RETURN ADDRESS IN THE STACK
@Class1.get_11
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
@5
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@5 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Class1.get   
0;JMP 
(Class1.get_11)
//call Class2.get
// PUSHED THE RETURN ADDRESS IN THE STACK
@Class2.get_12
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
@5
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@5 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Class2.get   
0;JMP 
(Class2.get_12)
//label WHILE
(WHILE)
//unconditiona jump to WHILE_13
@WHILE
0;JMP
