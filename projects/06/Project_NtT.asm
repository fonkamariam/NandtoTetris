@256
D=A
@SP
M=D
@Sys.init
0;JMP
(Memory.init)
//push constant 0
@0
D=A
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
@Project_NtT.0
M=D    
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 1
@SP
M=M-1
A=M
D=M
@Project_NtT.1
M=D    
//push constant 14334
@14334
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 2
@SP
M=M-1
A=M
D=M
@Project_NtT.2
M=D    
//push static 1
@Project_NtT.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 2048
@2048
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
//push static 2
@Project_NtT.2
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push temp 0
@5
D=M
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
//push static 1
@Project_NtT.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 2049
@2049
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
//push constant 2050
@2050
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push temp 0
@5
D=M
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
//fucntion decleration Memory.peek....also 0 local segments needed
(Memory.peek)
//push static 0
@Project_NtT.0
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG 0
@ARG
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
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push THAT 0
@THAT
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
//fucntion decleration Memory.poke....also 0 local segments needed
(Memory.poke)
//push static 0
@Project_NtT.0
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG 0
@ARG
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
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push temp 0
@5
D=M
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
//function decleration of Memory.alloc
//PUSHING 0 i TIMES IN THE STACK 
(Memory.alloc) 
@4
D=A
@temp
M=D
(LCL_COND)
@SP
A=M
M=0
@SP
M=M+1
@temp
M=M-1
D=M
@LCL_COND
D;JNE
(Jump_end_func)
//push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//label while(1)
(while(1))
//push static 1
@Project_NtT.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//push LCL 1
@1
D=A
@LCL
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
@LCL
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
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push THAT 0
@THAT
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//lt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=D-M// GETS ME Y-X
@NEGATIVE_lt_5 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_5
0;JMP
(NEGATIVE_lt_5)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_5)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(1)
@SP
M=M-1
A=M
D=M
@whileif(1)
D;JNE
//push static 1
@Project_NtT.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
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
//push THAT 0
@THAT
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//unconditiona jump to while(1)_7
@while(1)
0;JMP
//label whileif(1)
(whileif(1))
//push static 1
@Project_NtT.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//push LCL 1
@1
D=A
@LCL
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
@LCL
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
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push THAT 0
@THAT
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop LCL 2
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@2 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@2 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 2
@2
D=A
@LCL
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
@LCL
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
//pop LCL 2
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@2 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@2 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push static 1
@Project_NtT.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
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
//push THAT 0
@THAT
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop LCL 3
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@3 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@3 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push static 1
@Project_NtT.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//push LCL 1
@1
D=A
@LCL
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
@LCL
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push temp 0
@5
D=M
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
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//push constant 2
@2
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
//pop LCL 0
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
//push static 1
@Project_NtT.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
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
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG 0
@ARG
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
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push temp 0
@5
D=M
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
//push static 1
@Project_NtT.1
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
//push ARG 0
@ARG
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
//push LCL 2
@2
D=A
@LCL
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
@LCL
M=M-D
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push temp 0
@5
D=M
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
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG 0
@ARG
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
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
M=M-D
//lt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=D-M// GETS ME Y-X
@NEGATIVE_lt_8 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_8
0;JMP
(NEGATIVE_lt_8)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_8)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(1)
@SP
M=M-1
A=M
D=M
@if(1)
D;JNE
//push static 1
@Project_NtT.1
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
//push ARG 0
@ARG
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
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
M=M-D
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push temp 0
@5
D=M
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
//push LCL 0
@LCL
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
//unconditiona jump to else(1)_10
@else(1)
0;JMP
//label if(1)
(if(1))
//push static 1
@Project_NtT.1
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
//push ARG 0
@ARG
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
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG 0
@ARG
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
//push constant 2
@2
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
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push temp 0
@5
D=M
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
//push LCL 0
@LCL
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
//label else(1)
(else(1))
//push LCL 0
@LCL
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
//function decleration of Memory.deAlloc
//PUSHING 0 i TIMES IN THE STACK 
(Memory.deAlloc) 
@2
D=A
@temp
M=D
(LCL_COND)
@SP
A=M
M=0
@SP
M=M+1
@temp
M=M-1
D=M
@LCL_COND
D;JNE
(Jump_end_func)
//push static 1
@Project_NtT.1
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//push THAT 0
@THAT
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG 0
@ARG
A=M
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
//pop LCL 0
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
//push static 1
@Project_NtT.1
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
//push ARG 0
@ARG
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
//push THAT 0
@THAT
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
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_11 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_11
0;JMP
(NEGATIVE_11)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_11)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(2)
@SP
M=M-1
A=M
D=M
@if(2)
D;JNE
//push static 1
@Project_NtT.1
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
//push ARG 0
@ARG
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
//push THAT 0
@THAT
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
//push constant 2
@2
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
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push static 1
@Project_NtT.1
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push temp 0
@5
D=M
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
//push static 1
@Project_NtT.1
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push temp 0
@5
D=M
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
//unconditiona jump to else(2)_13
@else(2)
0;JMP
//label if(
(if()
//push static 1
@Project_NtT.1
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push temp 0
@5
D=M
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
//label else(
(else()
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
//fucntion decleration Array.new....also 0 local segments needed
(Array.new)
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Memory.alloc
// PUSHED THE RETURN ADDRESS IN THE STACK
@Memory.alloc_14
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
@Memory.alloc   
0;JMP 
(Memory.alloc_14)
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
//fucntion decleration Array.dispose....also 0 local segments needed
(Array.dispose)
//push ARG 0
@ARG
A=M
D=M
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
//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Memory.deAlloc
// PUSHED THE RETURN ADDRESS IN THE STACK
@Memory.deAlloc_15
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
@Memory.deAlloc   
0;JMP 
(Memory.deAlloc_15)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//function decleration of Math.init
//PUSHING 0 i TIMES IN THE STACK 
(Math.init) 
@2
D=A
@temp
M=D
(LCL_COND)
@SP
A=M
M=0
@SP
M=M+1
@temp
M=M-1
D=M
@LCL_COND
D;JNE
(Jump_end_func)
//push constant 1
@1
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Array.new
// PUSHED THE RETURN ADDRESS IN THE STACK
@Array.new_16
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
@Array.new   
0;JMP 
(Array.new_16)
//pop static 0
@SP
M=M-1
A=M
D=M
@Project_NtT.0
M=D    
//label while(
(while()
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//push constant 16
@16
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
@NEGATIVE_lt_17 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_17
0;JMP
(NEGATIVE_lt_17)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_17)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(2)
@SP
M=M-1
A=M
D=M
@whileif(2)
D;JNE
//push static 0
@Project_NtT.0
D=M
@SP
A=M
M=D
@SP
M=M+1
//push LCL 1
@1
D=A
@LCL
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
@LCL
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
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push temp 0
@5
D=M
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
//push LCL 0
@LCL
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
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
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
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//unconditiona jump to while(2)_19
@while(2)
0;JMP
//label whileif(
(whileif()
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
//function decleration of Math.Mod
//PUSHING 0 i TIMES IN THE STACK 
(Math.Mod) 
@2
D=A
@temp
M=D
(LCL_COND)
@SP
A=M
M=0
@SP
M=M+1
@temp
M=M-1
D=M
@LCL_COND
D;JNE
(Jump_end_func)
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
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//label while(3)
(while(3))
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
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
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_20 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_20
0;JMP
(NEGATIVE_20)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_20)
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
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
//equal
@SP
M=M-1
A=M
D=M
@A // XOR 1 
M=D
@SP
M=M-1
A=M
D=M
@B //XOR 2
M=D
// XOR IMPLEMENTATION
@NB
M=!D
@A
D=M
@NA
M=!D
D=M
@B
D=M&D
@w1
M=D
@NB
D=M
@A
D=M&D
@w2
M=D
D=M
@w1
D=D|M
@XOR  // XOR DONE
M=D 
@ONE_eq_21 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_21
0;JMP
(ONE_eq_21)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_21)
//or
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D|M // X AND Y
@SP
M=M+1
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(3)
@SP
M=M-1
A=M
D=M
@whileif(3)
D;JNE
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
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
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 0
@LCL
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
//unconditiona jump to while(3)_23
@while(3)
0;JMP
//label whileif(3)
(whileif(3))
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
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
//fucntion decleration Math.abs....also 0 local segments needed
(Math.abs)
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
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
@NEGATIVE_lt_24 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_24
0;JMP
(NEGATIVE_lt_24)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_24)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(3)
@SP
M=M-1
A=M
D=M
@if(3)
D;JNE
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
M=M-1
A=M
M=!M
M=M+1
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
//unconditiona jump to else(3)_26
@else(3)
0;JMP
//label if(3)
(if(3))
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
//label else(3)
(else(3))
//function decleration of Math.multiply
//PUSHING 0 i TIMES IN THE STACK 
(Math.multiply) 
@5
D=A
@temp
M=D
(LCL_COND)
@SP
A=M
M=0
@SP
M=M+1
@temp
M=M-1
D=M
@LCL_COND
D;JNE
(Jump_end_func)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
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
//pop LCL 3
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@3 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@3 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//label while(4)
(while(4))
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 16
@16
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
@NEGATIVE_lt_27 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_27
0;JMP
(NEGATIVE_lt_27)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_27)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(4)
@SP
M=M-1
A=M
D=M
@whileif(4)
D;JNE
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
//push static 0
@Project_NtT.0
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
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push THAT 0
@THAT
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// and
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D&M // X AND Y
@SP
M=M+1    
//pop LCL 4
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@4 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@4 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 4
@4
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@LCL
M=M-D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//equal
@SP
M=M-1
A=M
D=M
@A // XOR 1 
M=D
@SP
M=M-1
A=M
D=M
@B //XOR 2
M=D
// XOR IMPLEMENTATION
@NB
M=!D
@A
D=M
@NA
M=!D
D=M
@B
D=M&D
@w1
M=D
@NB
D=M
@A
D=M&D
@w2
M=D
D=M
@w1
D=D|M
@XOR  // XOR DONE
M=D 
@ONE_eq_29 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_29
0;JMP
(ONE_eq_29)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_29)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(4)
@SP
M=M-1
A=M
D=M
@if(4)
D;JNE
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
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
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//unconditiona jump to else(4)_31
@else(4)
0;JMP
//label if(4)
(if(4))
//label else(4)
(else(4))
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
M=M-D
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
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
//pop LCL 3
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@3 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@3 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 0
@LCL
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
//unconditiona jump to while(4)_32
@while(4)
0;JMP
//label whileif(4)
(whileif(4))
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
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
//function decleration of Math.divide
//PUSHING 0 i TIMES IN THE STACK 
(Math.divide) 
@2
D=A
@temp
M=D
(LCL_COND)
@SP
A=M
M=0
@SP
M=M+1
@temp
M=M-1
D=M
@LCL_COND
D;JNE
(Jump_end_func)
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
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//label while(5)
(while(5))
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
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
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_33 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_33
0;JMP
(NEGATIVE_33)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_33)
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
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
//equal
@SP
M=M-1
A=M
D=M
@A // XOR 1 
M=D
@SP
M=M-1
A=M
D=M
@B //XOR 2
M=D
// XOR IMPLEMENTATION
@NB
M=!D
@A
D=M
@NA
M=!D
D=M
@B
D=M&D
@w1
M=D
@NB
D=M
@A
D=M&D
@w2
M=D
D=M
@w1
D=D|M
@XOR  // XOR DONE
M=D 
@ONE_eq_34 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_34
0;JMP
(ONE_eq_34)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_34)
//or
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D|M // X AND Y
@SP
M=M+1
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(5)
@SP
M=M-1
A=M
D=M
@whileif(5)
D;JNE
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
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
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 0
@LCL
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
//unconditiona jump to while(5)_36
@while(5)
0;JMP
//label whileif(5)
(whileif(5))
//push LCL 0
@LCL
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
//fucntion decleration Math.max....also 0 local segments needed
(Math.max)
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
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
@NEGATIVE_lt_37 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_37
0;JMP
(NEGATIVE_lt_37)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_37)
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
// and
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D&M // X AND Y
@SP
M=M+1    
//push constant 0
@0
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
@NEGATIVE_lt_38 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_38
0;JMP
(NEGATIVE_lt_38)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_38)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(5)
@SP
M=M-1
A=M
D=M
@if(5)
D;JNE
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_40 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_40
0;JMP
(NEGATIVE_40)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_40)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(6)
@SP
M=M-1
A=M
D=M
@if(6)
D;JNE
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
//unconditiona jump to else(5)_42
@else(5)
0;JMP
//label if(6)
(if(6))
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
//label else(5)
(else(5))
//unconditiona jump to else(6)_43
@else(6)
0;JMP
//label if(5)
(if(5))
//label else(6)
(else(6))
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
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
@NEGATIVE_lt_44 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_44
0;JMP
(NEGATIVE_lt_44)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_44)
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
// and
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D&M // X AND Y
@SP
M=M+1    
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_45 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_45
0;JMP
(NEGATIVE_45)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_45)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(7)
@SP
M=M-1
A=M
D=M
@if(7)
D;JNE
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
//unconditiona jump to else(7)_47
@else(7)
0;JMP
//label if(7)
(if(7))
//label else(7)
(else(7))
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_48 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_48
0;JMP
(NEGATIVE_48)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_48)
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
// and
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D&M // X AND Y
@SP
M=M+1    
//push constant 0
@0
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
@NEGATIVE_lt_49 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_49
0;JMP
(NEGATIVE_lt_49)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_49)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(8)
@SP
M=M-1
A=M
D=M
@if(8)
D;JNE
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
//unconditiona jump to else(8)_51
@else(8)
0;JMP
//label if(8)
(if(8))
//label else(8)
(else(8))
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_52 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_52
0;JMP
(NEGATIVE_52)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_52)
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
// and
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D&M // X AND Y
@SP
M=M+1    
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_53 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_53
0;JMP
(NEGATIVE_53)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_53)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(9)
@SP
M=M-1
A=M
D=M
@if(9)
D;JNE
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_55 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_55
0;JMP
(NEGATIVE_55)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_55)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(10)
@SP
M=M-1
A=M
D=M
@if(10)
D;JNE
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
//unconditiona jump to else(9)_57
@else(9)
0;JMP
//label if(1
(if(1)
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
//label else(9)
(else(9))
//unconditiona jump to else(10)_58
@else(10)
0;JMP
//label if(9)
(if(9))
//label else(1
(else(1)
//fucntion decleration Math.min....also 0 local segments needed
(Math.min)
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
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
@NEGATIVE_lt_59 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_59
0;JMP
(NEGATIVE_lt_59)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_59)
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
//push constant 0
@0
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
@NEGATIVE_lt_60 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_60
0;JMP
(NEGATIVE_lt_60)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_60)
// and
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D&M // X AND Y
@SP
M=M+1    
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(11)
@SP
M=M-1
A=M
D=M
@if(11)
D;JNE
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
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
//push constant 0
@0
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
@NEGATIVE_lt_62 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_62
0;JMP
(NEGATIVE_lt_62)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_62)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(12)
@SP
M=M-1
A=M
D=M
@if(12)
D;JNE
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
//unconditiona jump to else(11)_64
@else(11)
0;JMP
//label if(1
(if(1)
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
//label else(11)
(else(11))
//unconditiona jump to else(12)_65
@else(12)
0;JMP
//label if(11)
(if(11))
//label else(1
(else(1)
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
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
@NEGATIVE_lt_66 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_66
0;JMP
(NEGATIVE_lt_66)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_66)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_67 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_67
0;JMP
(NEGATIVE_67)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_67)
// and
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D&M // X AND Y
@SP
M=M+1    
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(13)
@SP
M=M-1
A=M
D=M
@if(13)
D;JNE
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
//unconditiona jump to else(13)_69
@else(13)
0;JMP
//label if(13)
(if(13))
//label else(13)
(else(13))
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_70 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_70
0;JMP
(NEGATIVE_70)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_70)
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
//push constant 0
@0
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
@NEGATIVE_lt_71 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_71
0;JMP
(NEGATIVE_lt_71)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_71)
// and
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D&M // X AND Y
@SP
M=M+1    
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(14)
@SP
M=M-1
A=M
D=M
@if(14)
D;JNE
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
//unconditiona jump to else(14)_73
@else(14)
0;JMP
//label if(14)
(if(14))
//label else(14)
(else(14))
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_74 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_74
0;JMP
(NEGATIVE_74)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_74)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_75 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_75
0;JMP
(NEGATIVE_75)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_75)
// and
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D&M // X AND Y
@SP
M=M+1    
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(15)
@SP
M=M-1
A=M
D=M
@if(15)
D;JNE
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
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
//push constant 0
@0
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
@NEGATIVE_lt_77 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_77
0;JMP
(NEGATIVE_lt_77)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_77)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(16)
@SP
M=M-1
A=M
D=M
@if(16)
D;JNE
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
//unconditiona jump to else(15)_79
@else(15)
0;JMP
//label if(16)
(if(16))
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
//label else(15)
(else(15))
//unconditiona jump to else(16)_80
@else(16)
0;JMP
//label if(15)
(if(15))
//label else(16)
(else(16))
//function decleration of Math.sqrt
//PUSHING 0 i TIMES IN THE STACK 
(Math.sqrt) 
@4
D=A
@temp
M=D
(LCL_COND)
@SP
A=M
M=0
@SP
M=M+1
@temp
M=M-1
D=M
@LCL_COND
D;JNE
(Jump_end_func)
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
//call Math.divide
// PUSHED THE RETURN ADDRESS IN THE STACK
@Math.divide_81
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
@Math.divide   
0;JMP 
(Math.divide_81)
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//label while(6)
(while(6))
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//lt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=D-M// GETS ME Y-X
@NEGATIVE_lt_82 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_82
0;JMP
(NEGATIVE_lt_82)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_82)
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//equal
@SP
M=M-1
A=M
D=M
@A // XOR 1 
M=D
@SP
M=M-1
A=M
D=M
@B //XOR 2
M=D
// XOR IMPLEMENTATION
@NB
M=!D
@A
D=M
@NA
M=!D
D=M
@B
D=M&D
@w1
M=D
@NB
D=M
@A
D=M&D
@w2
M=D
D=M
@w1
D=D|M
@XOR  // XOR DONE
M=D 
@ONE_eq_83 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_83
0;JMP
(ONE_eq_83)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_83)
//or
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D|M // X AND Y
@SP
M=M+1
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(6)
@SP
M=M-1
A=M
D=M
@whileif(6)
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
//push LCL 1
@1
D=A
@LCL
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
@LCL
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
//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.divide
// PUSHED THE RETURN ADDRESS IN THE STACK
@Math.divide_85
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
@Math.divide   
0;JMP 
(Math.divide_85)
//pop LCL 2
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@2 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@2 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 2
@2
D=A
@LCL
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
@LCL
M=M-D
//push LCL 2
@2
D=A
@LCL
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
@LCL
M=M-D
//call Math.multiply
// PUSHED THE RETURN ADDRESS IN THE STACK
@Math.multiply_86
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
@Math.multiply   
0;JMP 
(Math.multiply_86)
//pop LCL 3
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@3 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@3 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
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
//lt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=D-M// GETS ME Y-X
@NEGATIVE_lt_87 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_87
0;JMP
(NEGATIVE_lt_87)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_87)
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
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
//equal
@SP
M=M-1
A=M
D=M
@A // XOR 1 
M=D
@SP
M=M-1
A=M
D=M
@B //XOR 2
M=D
// XOR IMPLEMENTATION
@NB
M=!D
@A
D=M
@NA
M=!D
D=M
@B
D=M&D
@w1
M=D
@NB
D=M
@A
D=M&D
@w2
M=D
D=M
@w1
D=D|M
@XOR  // XOR DONE
M=D 
@ONE_eq_88 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_88
0;JMP
(ONE_eq_88)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_88)
//or
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D|M // X AND Y
@SP
M=M+1
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
M=M-D
//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
//push LCL 2
@2
D=A
@LCL
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
@LCL
M=M-D
//call Math.multiply
// PUSHED THE RETURN ADDRESS IN THE STACK
@Math.multiply_89
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
@Math.multiply   
0;JMP 
(Math.multiply_89)
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
// and
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D&M // X AND Y
@SP
M=M+1    
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_90 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_90
0;JMP
(NEGATIVE_90)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_90)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(17)
@SP
M=M-1
A=M
D=M
@if(17)
D;JNE
//push LCL 2
@2
D=A
@LCL
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
@LCL
M=M-D
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
//unconditiona jump to else(17)_92
@else(17)
0;JMP
//label if(17)
(if(17))
//label else(17)
(else(17))
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
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
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_93 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_93
0;JMP
(NEGATIVE_93)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_93)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(18)
@SP
M=M-1
A=M
D=M
@if(18)
D;JNE
//push LCL 2
@2
D=A
@LCL
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
@LCL
M=M-D
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
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//unconditiona jump to else(18)_95
@else(18)
0;JMP
//label if(18)
(if(18))
//label else(18)
(else(18))
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
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
//lt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=D-M// GETS ME Y-X
@NEGATIVE_lt_96 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_96
0;JMP
(NEGATIVE_lt_96)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_96)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(19)
@SP
M=M-1
A=M
D=M
@if(19)
D;JNE
//push LCL 2
@2
D=A
@LCL
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
@LCL
M=M-D
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
//pop LCL 0
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
//unconditiona jump to else(19)_98
@else(19)
0;JMP
//label if(19)
(if(19))
//label else(19)
(else(19))
//unconditiona jump to while(6)_99
@while(6)
0;JMP
//label whileif(6)
(whileif(6))
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
//fucntion decleration Math.bit....also 0 local segments needed
(Math.bit)
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push static 0
@Project_NtT.0
D=M
@SP
A=M
M=D
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
//push THAT 0
@THAT
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// and
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D&M // X AND Y
@SP
M=M+1    
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//equal
@SP
M=M-1
A=M
D=M
@A // XOR 1 
M=D
@SP
M=M-1
A=M
D=M
@B //XOR 2
M=D
// XOR IMPLEMENTATION
@NB
M=!D
@A
D=M
@NA
M=!D
D=M
@B
D=M&D
@w1
M=D
@NB
D=M
@A
D=M&D
@w2
M=D
D=M
@w1
D=D|M
@XOR  // XOR DONE
M=D 
@ONE_eq_100 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_100
0;JMP
(ONE_eq_100)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_100)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(20)
@SP
M=M-1
A=M
D=M
@if(20)
D;JNE
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
M=M-1
A=M
M=!M
M=M+1
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
//unconditiona jump to else(20)_102
@else(20)
0;JMP
//label if(
(if()
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
//label else(
(else()
//fucntion decleration Math.getPower....also 0 local segments needed
(Math.getPower)
//push static 0
@Project_NtT.0
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG 0
@ARG
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
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push THAT 0
@THAT
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
//fucntion decleration Screen.init....also 0 local segments needed
(Screen.init)
//push constant 16384
@16384
D=A
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
@Project_NtT.0
M=D    
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 1
@SP
M=M-1
A=M
D=M
@Project_NtT.1
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
//function decleration of Screen.clearScreen
//PUSHING 0 i TIMES IN THE STACK 
(Screen.clearScreen) 
@1
D=A
@temp
M=D
(LCL_COND)
@SP
A=M
M=0
@SP
M=M+1
@temp
M=M-1
D=M
@LCL_COND
D;JNE
(Jump_end_func)
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
//label while(7)
(while(7))
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 8191
@8191
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
@NEGATIVE_lt_103 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_103
0;JMP
(NEGATIVE_lt_103)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_103)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(7)
@SP
M=M-1
A=M
D=M
@whileif(7)
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
//push static 0
@Project_NtT.0
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Memory.poke
// PUSHED THE RETURN ADDRESS IN THE STACK
@Memory.poke_105
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
@Memory.poke   
0;JMP 
(Memory.poke_105)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//pop LCL 0
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
//unconditiona jump to while(7)_106
@while(7)
0;JMP
//label whileif(7)
(whileif(7))
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
//fucntion decleration Screen.setColor....also 0 local segments needed
(Screen.setColor)
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
//neg
@SP
M=M-1
A=M
M=!M
M=M+1
@SP
M=M+1    
//equal
@SP
M=M-1
A=M
D=M
@A // XOR 1 
M=D
@SP
M=M-1
A=M
D=M
@B //XOR 2
M=D
// XOR IMPLEMENTATION
@NB
M=!D
@A
D=M
@NA
M=!D
D=M
@B
D=M&D
@w1
M=D
@NB
D=M
@A
D=M&D
@w2
M=D
D=M
@w1
D=D|M
@XOR  // XOR DONE
M=D 
@ONE_eq_107 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_107
0;JMP
(ONE_eq_107)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_107)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(21)
@SP
M=M-1
A=M
D=M
@if(21)
D;JNE
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 1
@SP
M=M-1
A=M
D=M
@Project_NtT.1
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
//unconditiona jump to else(21)_109
@else(21)
0;JMP
//label if(
(if()
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 1
@SP
M=M-1
A=M
D=M
@Project_NtT.1
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
//label else(
(else()
//function decleration of Screen.drawPixel
//PUSHING 0 i TIMES IN THE STACK 
(Screen.drawPixel) 
@3
D=A
@temp
M=D
(LCL_COND)
@SP
A=M
M=0
@SP
M=M+1
@temp
M=M-1
D=M
@LCL_COND
D;JNE
(Jump_end_func)
//push constant 32
@32
D=A
@SP
A=M
M=D
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
//call Math.multiply
// PUSHED THE RETURN ADDRESS IN THE STACK
@Math.multiply_110
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
@Math.multiply   
0;JMP 
(Math.multiply_110)
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.divide
// PUSHED THE RETURN ADDRESS IN THE STACK
@Math.divide_111
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
@Math.divide   
0;JMP 
(Math.divide_111)
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
//push static 0
@Project_NtT.0
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
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Memory.peek
// PUSHED THE RETURN ADDRESS IN THE STACK
@Memory.peek_112
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
@Memory.peek   
0;JMP 
(Memory.peek_112)
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
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
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.Mod
// PUSHED THE RETURN ADDRESS IN THE STACK
@Math.Mod_113
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
@Math.Mod   
0;JMP 
(Math.Mod_113)
//pop LCL 2
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@2 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@2 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 2
@2
D=A
@LCL
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
@LCL
M=M-D
//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
//equal
@SP
M=M-1
A=M
D=M
@A // XOR 1 
M=D
@SP
M=M-1
A=M
D=M
@B //XOR 2
M=D
// XOR IMPLEMENTATION
@NB
M=!D
@A
D=M
@NA
M=!D
D=M
@B
D=M&D
@w1
M=D
@NB
D=M
@A
D=M&D
@w2
M=D
D=M
@w1
D=D|M
@XOR  // XOR DONE
M=D 
@ONE_eq_114 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_114
0;JMP
(ONE_eq_114)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_114)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(22)
@SP
M=M-1
A=M
D=M
@if(22)
D;JNE
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//push constant 32767
@32767
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
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//call Memory.poke
// PUSHED THE RETURN ADDRESS IN THE STACK
@Memory.poke_116
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
@Memory.poke   
0;JMP 
(Memory.poke_116)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//unconditiona jump to else(22)_117
@else(22)
0;JMP
//label if(
(if()
//label else(
(else()
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//push LCL 2
@2
D=A
@LCL
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
@LCL
M=M-D
//call Math.getPower
// PUSHED THE RETURN ADDRESS IN THE STACK
@Math.getPower_118
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
@Math.getPower   
0;JMP 
(Math.getPower_118)
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
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//call Memory.poke
// PUSHED THE RETURN ADDRESS IN THE STACK
@Memory.poke_119
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
@Memory.poke   
0;JMP 
(Memory.poke_119)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//function decleration of Screen.drawLine
//PUSHING 0 i TIMES IN THE STACK 
(Screen.drawLine) 
@5
D=A
@temp
M=D
(LCL_COND)
@SP
A=M
M=0
@SP
M=M+1
@temp
M=M-1
D=M
@LCL_COND
D;JNE
(Jump_end_func)
//push ARG 2
@2
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
@2
D=A
@ARG
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
//pop LCL 2
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@2 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@2 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push ARG 3
@3
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
@3
D=A
@ARG
M=M-D
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
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop LCL 3
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@3 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@3 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop LCL 4
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@4 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@4 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 2
@2
D=A
@LCL
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
@LCL
M=M-D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//equal
@SP
M=M-1
A=M
D=M
@A // XOR 1 
M=D
@SP
M=M-1
A=M
D=M
@B //XOR 2
M=D
// XOR IMPLEMENTATION
@NB
M=!D
@A
D=M
@NA
M=!D
D=M
@B
D=M&D
@w1
M=D
@NB
D=M
@A
D=M&D
@w2
M=D
D=M
@w1
D=D|M
@XOR  // XOR DONE
M=D 
@ONE_eq_120 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_120
0;JMP
(ONE_eq_120)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_120)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(23)
@SP
M=M-1
A=M
D=M
@if(23)
D;JNE
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_122 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_122
0;JMP
(NEGATIVE_122)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_122)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(24)
@SP
M=M-1
A=M
D=M
@if(24)
D;JNE
//label while(8)
(while(8))
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_124 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_124
0;JMP
(NEGATIVE_124)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_124)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(8)
@SP
M=M-1
A=M
D=M
@whileif(8)
D;JNE
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
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
//call Screen.drawPixel
// PUSHED THE RETURN ADDRESS IN THE STACK
@Screen.drawPixel_126
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
@Screen.drawPixel   
0;JMP 
(Screen.drawPixel_126)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
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
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//unconditiona jump to while(8)_127
@while(8)
0;JMP
//label whileif(8)
(whileif(8))
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
//unconditiona jump to else(23)_128
@else(23)
0;JMP
//label if(
(if()
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
M=M-1
A=M
M=!M
M=M+1
@SP
M=M+1    
//call Math.multiply
// PUSHED THE RETURN ADDRESS IN THE STACK
@Math.multiply_129
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
@Math.multiply   
0;JMP 
(Math.multiply_129)
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//label while(9)
(while(9))
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_130 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_130
0;JMP
(NEGATIVE_130)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_130)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(9)
@SP
M=M-1
A=M
D=M
@whileif(9)
D;JNE
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
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
//call Screen.drawPixel
// PUSHED THE RETURN ADDRESS IN THE STACK
@Screen.drawPixel_132
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
@Screen.drawPixel   
0;JMP 
(Screen.drawPixel_132)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
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
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//unconditiona jump to while(9)_133
@while(9)
0;JMP
//label whileif(9)
(whileif(9))
//label else(
(else()
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
//unconditiona jump to else(24)_134
@else(24)
0;JMP
//label if(
(if()
//label else(
(else()
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//equal
@SP
M=M-1
A=M
D=M
@A // XOR 1 
M=D
@SP
M=M-1
A=M
D=M
@B //XOR 2
M=D
// XOR IMPLEMENTATION
@NB
M=!D
@A
D=M
@NA
M=!D
D=M
@B
D=M&D
@w1
M=D
@NB
D=M
@A
D=M&D
@w2
M=D
D=M
@w1
D=D|M
@XOR  // XOR DONE
M=D 
@ONE_eq_135 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_135
0;JMP
(ONE_eq_135)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_135)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(25)
@SP
M=M-1
A=M
D=M
@if(25)
D;JNE
//push LCL 2
@2
D=A
@LCL
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
@LCL
M=M-D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_137 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_137
0;JMP
(NEGATIVE_137)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_137)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(26)
@SP
M=M-1
A=M
D=M
@if(26)
D;JNE
//label while(1
(while(1)
//push LCL 2
@2
D=A
@LCL
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
@LCL
M=M-D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_139 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_139
0;JMP
(NEGATIVE_139)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_139)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(10)
@SP
M=M-1
A=M
D=M
@whileif(10)
D;JNE
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
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
//call Screen.drawPixel
// PUSHED THE RETURN ADDRESS IN THE STACK
@Screen.drawPixel_141
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
@Screen.drawPixel   
0;JMP 
(Screen.drawPixel_141)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//pop ARG 0
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
//push LCL 2
@2
D=A
@LCL
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
@LCL
M=M-D
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
//pop LCL 2
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@2 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@2 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//unconditiona jump to while(10)_142
@while(10)
0;JMP
//label whileif(1
(whileif(1)
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
//unconditiona jump to else(25)_143
@else(25)
0;JMP
//label if(
(if()
//push LCL 2
@2
D=A
@LCL
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
@LCL
M=M-D
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
M=M-1
A=M
M=!M
M=M+1
@SP
M=M+1    
//call Math.multiply
// PUSHED THE RETURN ADDRESS IN THE STACK
@Math.multiply_144
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
@Math.multiply   
0;JMP 
(Math.multiply_144)
//pop LCL 2
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@2 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@2 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//label while(11)
(while(11))
//push LCL 2
@2
D=A
@LCL
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
@LCL
M=M-D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_145 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_145
0;JMP
(NEGATIVE_145)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_145)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(11)
@SP
M=M-1
A=M
D=M
@whileif(11)
D;JNE
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
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
//call Screen.drawPixel
// PUSHED THE RETURN ADDRESS IN THE STACK
@Screen.drawPixel_147
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
@Screen.drawPixel   
0;JMP 
(Screen.drawPixel_147)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
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
//pop LCL 2
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@2 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@2 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//unconditiona jump to while(11)_148
@while(11)
0;JMP
//label whileif(11)
(whileif(11))
//label else(
(else()
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
//unconditiona jump to else(26)_149
@else(26)
0;JMP
//label if(
(if()
//label else(
(else()
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG 2
@2
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
@2
D=A
@ARG
M=M-D
//lt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=D-M// GETS ME Y-X
@NEGATIVE_lt_150 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_150
0;JMP
(NEGATIVE_lt_150)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_150)
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
//push ARG 3
@3
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
@3
D=A
@ARG
M=M-D
//lt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=D-M// GETS ME Y-X
@NEGATIVE_lt_151 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_151
0;JMP
(NEGATIVE_lt_151)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_151)
// and
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D&M // X AND Y
@SP
M=M+1    
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(27)
@SP
M=M-1
A=M
D=M
@if(27)
D;JNE
//label while(1
(while(1)
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
M=M-D
//push LCL 2
@2
D=A
@LCL
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
@LCL
M=M-D
//lt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=D-M// GETS ME Y-X
@NEGATIVE_lt_153 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_153
0;JMP
(NEGATIVE_lt_153)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_153)
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
M=M-D
//push LCL 2
@2
D=A
@LCL
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
@LCL
M=M-D
//equal
@SP
M=M-1
A=M
D=M
@A // XOR 1 
M=D
@SP
M=M-1
A=M
D=M
@B //XOR 2
M=D
// XOR IMPLEMENTATION
@NB
M=!D
@A
D=M
@NA
M=!D
D=M
@B
D=M&D
@w1
M=D
@NB
D=M
@A
D=M&D
@w2
M=D
D=M
@w1
D=D|M
@XOR  // XOR DONE
M=D 
@ONE_eq_154 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_154
0;JMP
(ONE_eq_154)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_154)
//or
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D|M // X AND Y
@SP
M=M+1
//push LCL 4
@4
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@LCL
M=M-D
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//lt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=D-M// GETS ME Y-X
@NEGATIVE_lt_155 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_155
0;JMP
(NEGATIVE_lt_155)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_155)
//push LCL 4
@4
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@LCL
M=M-D
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//equal
@SP
M=M-1
A=M
D=M
@A // XOR 1 
M=D
@SP
M=M-1
A=M
D=M
@B //XOR 2
M=D
// XOR IMPLEMENTATION
@NB
M=!D
@A
D=M
@NA
M=!D
D=M
@B
D=M&D
@w1
M=D
@NB
D=M
@A
D=M&D
@w2
M=D
D=M
@w1
D=D|M
@XOR  // XOR DONE
M=D 
@ONE_eq_156 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_156
0;JMP
(ONE_eq_156)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_156)
//or
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D|M // X AND Y
@SP
M=M+1
// and
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D&M // X AND Y
@SP
M=M+1    
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(12)
@SP
M=M-1
A=M
D=M
@whileif(12)
D;JNE
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
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
//push LCL 4
@4
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@LCL
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
//call Screen.drawPixel
// PUSHED THE RETURN ADDRESS IN THE STACK
@Screen.drawPixel_158
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
@Screen.drawPixel   
0;JMP 
(Screen.drawPixel_158)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//push constant 0
@0
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
@NEGATIVE_lt_159 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_159
0;JMP
(NEGATIVE_lt_159)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_159)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(28)
@SP
M=M-1
A=M
D=M
@if(28)
D;JNE
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
M=M-D
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
//pop LCL 3
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@3 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@3 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push LCL 1
@1
D=A
@LCL
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
@LCL
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
//pop LCL 0
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
//unconditiona jump to else(27)_161
@else(27)
0;JMP
//label if(
(if()
//push LCL 4
@4
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@LCL
M=M-D
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
//pop LCL 4
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@4 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@4 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push LCL 2
@2
D=A
@LCL
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
@LCL
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
//pop LCL 0
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
//label else(
(else()
//unconditiona jump to while(12)_162
@while(12)
0;JMP
//label whileif(1
(whileif(1)
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
//unconditiona jump to else(28)_163
@else(28)
0;JMP
//label if(
(if()
//label else(
(else()
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG 2
@2
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
@2
D=A
@ARG
M=M-D
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_164 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_164
0;JMP
(NEGATIVE_164)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_164)
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
//push ARG 3
@3
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
@3
D=A
@ARG
M=M-D
//lt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=D-M// GETS ME Y-X
@NEGATIVE_lt_165 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_165
0;JMP
(NEGATIVE_lt_165)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_165)
// and
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D&M // X AND Y
@SP
M=M+1    
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(29)
@SP
M=M-1
A=M
D=M
@if(29)
D;JNE
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG 2
@2
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
@2
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
//pop LCL 2
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@2 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@2 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//label while(13)
(while(13))
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
M=M-D
//push LCL 2
@2
D=A
@LCL
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
@LCL
M=M-D
//lt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=D-M// GETS ME Y-X
@NEGATIVE_lt_167 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_167
0;JMP
(NEGATIVE_lt_167)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_167)
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
M=M-D
//push LCL 2
@2
D=A
@LCL
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
@LCL
M=M-D
//equal
@SP
M=M-1
A=M
D=M
@A // XOR 1 
M=D
@SP
M=M-1
A=M
D=M
@B //XOR 2
M=D
// XOR IMPLEMENTATION
@NB
M=!D
@A
D=M
@NA
M=!D
D=M
@B
D=M&D
@w1
M=D
@NB
D=M
@A
D=M&D
@w2
M=D
D=M
@w1
D=D|M
@XOR  // XOR DONE
M=D 
@ONE_eq_168 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_168
0;JMP
(ONE_eq_168)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_168)
//or
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D|M // X AND Y
@SP
M=M+1
//push LCL 4
@4
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@LCL
M=M-D
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//lt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=D-M// GETS ME Y-X
@NEGATIVE_lt_169 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_169
0;JMP
(NEGATIVE_lt_169)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_169)
//push LCL 4
@4
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@LCL
M=M-D
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//equal
@SP
M=M-1
A=M
D=M
@A // XOR 1 
M=D
@SP
M=M-1
A=M
D=M
@B //XOR 2
M=D
// XOR IMPLEMENTATION
@NB
M=!D
@A
D=M
@NA
M=!D
D=M
@B
D=M&D
@w1
M=D
@NB
D=M
@A
D=M&D
@w2
M=D
D=M
@w1
D=D|M
@XOR  // XOR DONE
M=D 
@ONE_eq_170 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_170
0;JMP
(ONE_eq_170)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_170)
//or
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D|M // X AND Y
@SP
M=M+1
// and
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D&M // X AND Y
@SP
M=M+1    
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(13)
@SP
M=M-1
A=M
D=M
@whileif(13)
D;JNE
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
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
//push LCL 4
@4
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@LCL
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
//call Screen.drawPixel
// PUSHED THE RETURN ADDRESS IN THE STACK
@Screen.drawPixel_172
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
@Screen.drawPixel   
0;JMP 
(Screen.drawPixel_172)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//push constant 0
@0
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
@NEGATIVE_lt_173 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_173
0;JMP
(NEGATIVE_lt_173)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_173)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(30)
@SP
M=M-1
A=M
D=M
@if(30)
D;JNE
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
M=M-D
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
//pop LCL 3
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@3 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@3 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push LCL 1
@1
D=A
@LCL
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
@LCL
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
//pop LCL 0
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
//unconditiona jump to else(29)_175
@else(29)
0;JMP
//label if(3
(if(3)
//push LCL 4
@4
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@LCL
M=M-D
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
//pop LCL 4
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@4 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@4 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push LCL 2
@2
D=A
@LCL
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
@LCL
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
//pop LCL 0
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
//label else(
(else()
//unconditiona jump to while(13)_176
@while(13)
0;JMP
//label whileif(13)
(whileif(13))
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
//unconditiona jump to else(30)_177
@else(30)
0;JMP
//label if(
(if()
//label else(3
(else(3)
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG 2
@2
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
@2
D=A
@ARG
M=M-D
//lt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=D-M// GETS ME Y-X
@NEGATIVE_lt_178 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_178
0;JMP
(NEGATIVE_lt_178)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_178)
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
//push ARG 3
@3
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
@3
D=A
@ARG
M=M-D
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_179 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_179
0;JMP
(NEGATIVE_179)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_179)
// and
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D&M // X AND Y
@SP
M=M+1    
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(31)
@SP
M=M-1
A=M
D=M
@if(31)
D;JNE
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
//push ARG 3
@3
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
@3
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
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//label while(14)
(while(14))
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
M=M-D
//push LCL 2
@2
D=A
@LCL
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
@LCL
M=M-D
//lt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=D-M// GETS ME Y-X
@NEGATIVE_lt_181 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_181
0;JMP
(NEGATIVE_lt_181)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_181)
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
M=M-D
//push LCL 2
@2
D=A
@LCL
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
@LCL
M=M-D
//equal
@SP
M=M-1
A=M
D=M
@A // XOR 1 
M=D
@SP
M=M-1
A=M
D=M
@B //XOR 2
M=D
// XOR IMPLEMENTATION
@NB
M=!D
@A
D=M
@NA
M=!D
D=M
@B
D=M&D
@w1
M=D
@NB
D=M
@A
D=M&D
@w2
M=D
D=M
@w1
D=D|M
@XOR  // XOR DONE
M=D 
@ONE_eq_182 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_182
0;JMP
(ONE_eq_182)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_182)
//or
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D|M // X AND Y
@SP
M=M+1
//push LCL 4
@4
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@LCL
M=M-D
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//lt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=D-M// GETS ME Y-X
@NEGATIVE_lt_183 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_183
0;JMP
(NEGATIVE_lt_183)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_183)
//push LCL 4
@4
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@LCL
M=M-D
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//equal
@SP
M=M-1
A=M
D=M
@A // XOR 1 
M=D
@SP
M=M-1
A=M
D=M
@B //XOR 2
M=D
// XOR IMPLEMENTATION
@NB
M=!D
@A
D=M
@NA
M=!D
D=M
@B
D=M&D
@w1
M=D
@NB
D=M
@A
D=M&D
@w2
M=D
D=M
@w1
D=D|M
@XOR  // XOR DONE
M=D 
@ONE_eq_184 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_184
0;JMP
(ONE_eq_184)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_184)
//or
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D|M // X AND Y
@SP
M=M+1
// and
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D&M // X AND Y
@SP
M=M+1    
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(14)
@SP
M=M-1
A=M
D=M
@whileif(14)
D;JNE
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
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
//push LCL 4
@4
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@LCL
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
//call Screen.drawPixel
// PUSHED THE RETURN ADDRESS IN THE STACK
@Screen.drawPixel_186
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
@Screen.drawPixel   
0;JMP 
(Screen.drawPixel_186)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//push constant 0
@0
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
@NEGATIVE_lt_187 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_187
0;JMP
(NEGATIVE_lt_187)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_187)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(32)
@SP
M=M-1
A=M
D=M
@if(32)
D;JNE
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
M=M-D
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
//pop LCL 3
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@3 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@3 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push LCL 1
@1
D=A
@LCL
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
@LCL
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
//pop LCL 0
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
//unconditiona jump to else(31)_189
@else(31)
0;JMP
//label if(3
(if(3)
//push LCL 4
@4
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@LCL
M=M-D
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
//pop LCL 4
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@4 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@4 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push LCL 2
@2
D=A
@LCL
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
@LCL
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
//pop LCL 0
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
//label else(31)
(else(31))
//unconditiona jump to while(14)_190
@while(14)
0;JMP
//label whileif(14)
(whileif(14))
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
//unconditiona jump to else(32)_191
@else(32)
0;JMP
//label if(31)
(if(31))
//label else(3
(else(3)
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG 2
@2
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
@2
D=A
@ARG
M=M-D
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_192 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_192
0;JMP
(NEGATIVE_192)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_192)
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
//push ARG 3
@3
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
@3
D=A
@ARG
M=M-D
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_193 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_193
0;JMP
(NEGATIVE_193)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_193)
// and
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D&M // X AND Y
@SP
M=M+1    
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(33)
@SP
M=M-1
A=M
D=M
@if(33)
D;JNE
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
//push ARG 3
@3
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
@3
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
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
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
//push ARG 2
@2
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
@2
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
//pop LCL 2
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@2 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@2 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//label while(15)
(while(15))
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
M=M-D
//push LCL 2
@2
D=A
@LCL
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
@LCL
M=M-D
//lt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=D-M// GETS ME Y-X
@NEGATIVE_lt_195 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_195
0;JMP
(NEGATIVE_lt_195)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_195)
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
M=M-D
//push LCL 2
@2
D=A
@LCL
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
@LCL
M=M-D
//equal
@SP
M=M-1
A=M
D=M
@A // XOR 1 
M=D
@SP
M=M-1
A=M
D=M
@B //XOR 2
M=D
// XOR IMPLEMENTATION
@NB
M=!D
@A
D=M
@NA
M=!D
D=M
@B
D=M&D
@w1
M=D
@NB
D=M
@A
D=M&D
@w2
M=D
D=M
@w1
D=D|M
@XOR  // XOR DONE
M=D 
@ONE_eq_196 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_196
0;JMP
(ONE_eq_196)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_196)
//or
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D|M // X AND Y
@SP
M=M+1
//push LCL 4
@4
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@LCL
M=M-D
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//lt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=D-M// GETS ME Y-X
@NEGATIVE_lt_197 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_197
0;JMP
(NEGATIVE_lt_197)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_197)
//push LCL 4
@4
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@LCL
M=M-D
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//equal
@SP
M=M-1
A=M
D=M
@A // XOR 1 
M=D
@SP
M=M-1
A=M
D=M
@B //XOR 2
M=D
// XOR IMPLEMENTATION
@NB
M=!D
@A
D=M
@NA
M=!D
D=M
@B
D=M&D
@w1
M=D
@NB
D=M
@A
D=M&D
@w2
M=D
D=M
@w1
D=D|M
@XOR  // XOR DONE
M=D 
@ONE_eq_198 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_198
0;JMP
(ONE_eq_198)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_198)
//or
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D|M // X AND Y
@SP
M=M+1
// and
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D&M // X AND Y
@SP
M=M+1    
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(15)
@SP
M=M-1
A=M
D=M
@whileif(15)
D;JNE
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
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
//push LCL 4
@4
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@LCL
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
//call Screen.drawPixel
// PUSHED THE RETURN ADDRESS IN THE STACK
@Screen.drawPixel_200
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
@Screen.drawPixel   
0;JMP 
(Screen.drawPixel_200)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//push constant 0
@0
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
@NEGATIVE_lt_201 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_201
0;JMP
(NEGATIVE_lt_201)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_201)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(34)
@SP
M=M-1
A=M
D=M
@if(34)
D;JNE
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
M=M-D
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
//pop LCL 3
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@3 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@3 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push LCL 1
@1
D=A
@LCL
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
@LCL
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
//pop LCL 0
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
//unconditiona jump to else(33)_203
@else(33)
0;JMP
//label if(34)
(if(34))
//push LCL 4
@4
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@LCL
M=M-D
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
//pop LCL 4
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@4 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@4 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push LCL 2
@2
D=A
@LCL
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
@LCL
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
//pop LCL 0
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
//label else(33)
(else(33))
//unconditiona jump to while(15)_204
@while(15)
0;JMP
//label whileif(15)
(whileif(15))
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
//unconditiona jump to else(34)_205
@else(34)
0;JMP
//label if(33)
(if(33))
//label else(34)
(else(34))
//function decleration of Screen.drawRectangle
//PUSHING 0 i TIMES IN THE STACK 
(Screen.drawRectangle) 
@2
D=A
@temp
M=D
(LCL_COND)
@SP
A=M
M=0
@SP
M=M+1
@temp
M=M-1
D=M
@LCL_COND
D;JNE
(Jump_end_func)
//push ARG 2
@2
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
@2
D=A
@ARG
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
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push ARG 3
@3
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
@3
D=A
@ARG
M=M-D
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
//pop LCL 0
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
//label while(16)
(while(16))
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_206 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_206
0;JMP
(NEGATIVE_206)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_206)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(16)
@SP
M=M-1
A=M
D=M
@whileif(16)
D;JNE
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
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
//push ARG 2
@2
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
@2
D=A
@ARG
M=M-D
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
//call Screen.drawLine
// PUSHED THE RETURN ADDRESS IN THE STACK
@Screen.drawLine_208
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
@9
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@9 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Screen.drawLine   
0;JMP 
(Screen.drawLine_208)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//push LCL 0
@LCL
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
//pop LCL 0
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
//unconditiona jump to while(16)_209
@while(16)
0;JMP
//label whileif(16)
(whileif(16))
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
//function decleration of Screen.drawCircle
//PUSHING 0 i TIMES IN THE STACK 
(Screen.drawCircle) 
@3
D=A
@temp
M=D
(LCL_COND)
@SP
A=M
M=0
@SP
M=M+1
@temp
M=M-1
D=M
@LCL_COND
D;JNE
(Jump_end_func)
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG 2
@2
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
@2
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
//pop LCL 0
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
//push ARG 2
@2
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
@2
D=A
@ARG
M=M-D
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//label while(17)
(while(17))
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_210 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_210
0;JMP
(NEGATIVE_210)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_210)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(17)
@SP
M=M-1
A=M
D=M
@whileif(17)
D;JNE
//push ARG 2
@2
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
@2
D=A
@ARG
M=M-D
//push ARG 2
@2
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
@2
D=A
@ARG
M=M-D
//call Math.multiply
// PUSHED THE RETURN ADDRESS IN THE STACK
@Math.multiply_212
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
@Math.multiply   
0;JMP 
(Math.multiply_212)
//push LCL 0
@LCL
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
//call Math.multiply
// PUSHED THE RETURN ADDRESS IN THE STACK
@Math.multiply_213
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
@Math.multiply   
0;JMP 
(Math.multiply_213)
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
//call Math.sqrt
// PUSHED THE RETURN ADDRESS IN THE STACK
@Math.sqrt_214
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
@Math.sqrt   
0;JMP 
(Math.sqrt_214)
//pop LCL 2
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@2 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@2 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
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
//push LCL 2
@2
D=A
@LCL
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
@LCL
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
//call Screen.drawPixel
// PUSHED THE RETURN ADDRESS IN THE STACK
@Screen.drawPixel_215
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
@Screen.drawPixel   
0;JMP 
(Screen.drawPixel_215)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//push LCL 2
@2
D=A
@LCL
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
@LCL
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
//call Screen.drawPixel
// PUSHED THE RETURN ADDRESS IN THE STACK
@Screen.drawPixel_216
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
@Screen.drawPixel   
0;JMP 
(Screen.drawPixel_216)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
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
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 0
@LCL
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
//pop LCL 0
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
//unconditiona jump to while(17)_217
@while(17)
0;JMP
//label whileif(17)
(whileif(17))
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
//fucntion decleration Screen.retBaseScreen....also 0 local segments needed
(Screen.retBaseScreen)
//push constant 16384
@16384
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
//fucntion decleration Output.init....also 0 local segments needed
(Output.init)
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 1
@SP
M=M-1
A=M
D=M
@Project_NtT.1
M=D    
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 2
@SP
M=M-1
A=M
D=M
@Project_NtT.2
M=D    
//call Output.initMap
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.initMap_218
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
@Output.initMap   
0;JMP 
(Output.initMap_218)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//function decleration of Output.initMap
//PUSHING 0 i TIMES IN THE STACK 
(Output.initMap) 
@1
D=A
@temp
M=D
(LCL_COND)
@SP
A=M
M=0
@SP
M=M+1
@temp
M=M-1
D=M
@LCL_COND
D;JNE
(Jump_end_func)
//push constant 127
@127
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Array.new
// PUSHED THE RETURN ADDRESS IN THE STACK
@Array.new_219
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
@Array.new   
0;JMP 
(Array.new_219)
//pop static 0
@SP
M=M-1
A=M
D=M
@Project_NtT.0
M=D    
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_220
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_220)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_221
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_221)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_222
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_222)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 34
@34
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_223
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_223)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_224
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_224)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 36
@36
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_225
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_225)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 37
@37
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_226
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_226)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_227
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_227)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 39
@39
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_228
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_228)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 40
@40
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_229
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_229)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 41
@41
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_230
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_230)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 42
@42
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_231
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_231)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_232
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_232)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_233
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_233)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_234
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_234)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_235
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_235)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 47
@47
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_236
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_236)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_237
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_237)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 14
@14
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_238
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_238)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_239
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_239)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_240
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_240)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 52
@52
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 26
@26
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_241
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_241)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_242
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_242)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_243
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_243)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_244
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_244)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_245
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_245)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 57
@57
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_246
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_246)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 58
@58
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_247
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_247)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_248
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_248)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_249
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_249)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 61
@61
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_250
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_250)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_251
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_251)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 64
@64
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_252
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_252)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_253
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_253)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 65
@65
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_254
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_254)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 66
@66
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_255
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_255)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 67
@67
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_256
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_256)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 68
@68
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
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_257
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_257)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 11
@11
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
//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_258
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_258)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 70
@70
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 11
@11
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
//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_259
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_259)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 71
@71
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_260
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_260)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 72
@72
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_261
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_261)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 73
@73
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_262
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_262)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 74
@74
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_263
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_263)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 75
@75
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
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
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_264
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_264)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 76
@76
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_265
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_265)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 77
@77
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_266
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_266)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 78
@78
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_267
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_267)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 79
@79
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_268
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_268)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 80
@80
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_269
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_269)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 81
@81
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_270
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_270)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_271
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_271)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 83
@83
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_272
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_272)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 85
@85
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_273
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_273)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 86
@86
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_274
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_274)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 87
@87
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_275
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_275)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 88
@88
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_276
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_276)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 89
@89
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_277
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_277)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 90
@90
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_278
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_278)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 91
@91
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_279
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_279)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 92
@92
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
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
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_280
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_280)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 93
@93
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_281
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_281)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 94
@94
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
//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_282
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_282)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 95
@95
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_283
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_283)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 96
@96
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_284
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_284)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_285
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_285)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 98
@98
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
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
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_286
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_286)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 99
@99
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_287
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_287)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_288
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_288)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_289
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_289)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 102
@102
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
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
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_290
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_290)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 103
@103
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_291
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_291)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 104
@104
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_292
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_292)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_293
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_293)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 106
@106
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_294
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_294)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 107
@107
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
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
//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_295
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_295)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_296
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_296)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_297
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_297)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_298
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_298)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_299
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_299)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 112
@112
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_300
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_300)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 113
@113
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_301
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_301)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_302
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_302)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_303
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_303)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
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
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_304
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_304)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_305
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_305)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 118
@118
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_306
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_306)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 119
@119
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_307
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_307)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 120
@120
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_308
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_308)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 121
@121
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_309
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_309)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 122
@122
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_310
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_310)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 123
@123
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_311
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_311)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 124
@124
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_312
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_312)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 125
@125
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_313
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_313)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 126
@126
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 38
@38
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
//push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.create_314
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
@17
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@17 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@Output.create   
0;JMP 
(Output.create_314)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//function decleration of Output.create
//PUSHING 0 i TIMES IN THE STACK 
(Output.create) 
@1
D=A
@temp
M=D
(LCL_COND)
@SP
A=M
M=0
@SP
M=M+1
@temp
M=M-1
D=M
@LCL_COND
D;JNE
(Jump_end_func)
//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Array.new
// PUSHED THE RETURN ADDRESS IN THE STACK
@Array.new_315
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
@Array.new   
0;JMP 
(Array.new_315)
//pop LCL 0
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
//push static 0
@Project_NtT.0
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG 0
@ARG
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
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push temp 0
@5
D=M
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
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
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
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push temp 0
@5
D=M
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
//push LCL 0
@LCL
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
//push ARG 2
@2
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
@2
D=A
@ARG
M=M-D
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push temp 0
@5
D=M
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
//push LCL 0
@LCL
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
//push ARG 3
@3
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
@3
D=A
@ARG
M=M-D
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push temp 0
@5
D=M
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
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
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
//push ARG 4
@4
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
@4
D=A
@ARG
M=M-D
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push temp 0
@5
D=M
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
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 4
@4
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
//push ARG 5
@5
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
@5
D=A
@ARG
M=M-D
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push temp 0
@5
D=M
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
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 5
@5
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
//push ARG 6
@6
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
@6
D=A
@ARG
M=M-D
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push temp 0
@5
D=M
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
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
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
//push ARG 7
@7
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
@7
D=A
@ARG
M=M-D
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push temp 0
@5
D=M
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
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 7
@7
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
//push ARG 8
@8
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
@8
D=A
@ARG
M=M-D
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push temp 0
@5
D=M
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
//push LCL 0
@LCL
A=M
D=M
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
//push ARG 9
@9
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
@9
D=A
@ARG
M=M-D
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push temp 0
@5
D=M
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
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 9
@9
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
//push ARG 10
@10
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
@10
D=A
@ARG
M=M-D
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push temp 0
@5
D=M
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
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 10
@10
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
//push ARG 11
@11
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
@11
D=A
@ARG
M=M-D
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push temp 0
@5
D=M
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
//fucntion decleration Output.getMap....also 0 local segments needed
(Output.getMap)
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 32
@32
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
@NEGATIVE_lt_316 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_316
0;JMP
(NEGATIVE_lt_316)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_316)
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 126
@126
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_317 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_317
0;JMP
(NEGATIVE_317)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_317)
//or
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D|M // X AND Y
@SP
M=M+1
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(35)
@SP
M=M-1
A=M
D=M
@if(35)
D;JNE
//push constant 0
@0
D=A
@SP
A=M
M=D
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
//unconditiona jump to else(35)_319
@else(35)
0;JMP
//label if(35)
(if(35))
//label else(35)
(else(35))
//push static 0
@Project_NtT.0
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG 0
@ARG
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
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push THAT 0
@THAT
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
//fucntion decleration Output.moveCursor....also 0 local segments needed
(Output.moveCursor)
//push static 1
@Project_NtT.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG 0
@ARG
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
//pop static 1
@SP
M=M-1
A=M
D=M
@Project_NtT.1
M=D    
//push static 2
@Project_NtT.2
D=M
@SP
A=M
M=D
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
//pop static 2
@SP
M=M-1
A=M
D=M
@Project_NtT.2
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
//function decleration of Output.printChar
//PUSHING 0 i TIMES IN THE STACK 
(Output.printChar) 
@6
D=A
@temp
M=D
(LCL_COND)
@SP
A=M
M=0
@SP
M=M+1
@temp
M=M-1
D=M
@LCL_COND
D;JNE
(Jump_end_func)
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Output.getMap
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.getMap_320
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
@Output.getMap   
0;JMP 
(Output.getMap_320)
//pop LCL 0
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop LCL 2
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@2 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@2 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push static 2
@Project_NtT.2
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop LCL 3
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@3 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@3 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//label while(18)
(while(18))
//push LCL 2
@2
D=A
@LCL
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
@LCL
M=M-D
//push constant 11
@11
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
@NEGATIVE_lt_321 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_321
0;JMP
(NEGATIVE_lt_321)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_321)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(18)
@SP
M=M-1
A=M
D=M
@whileif(18)
D;JNE
//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
M=M-D
//call Math.multiply
// PUSHED THE RETURN ADDRESS IN THE STACK
@Math.multiply_323
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
@Math.multiply   
0;JMP 
(Math.multiply_323)
//push static 1
@Project_NtT.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.divide
// PUSHED THE RETURN ADDRESS IN THE STACK
@Math.divide_324
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
@Math.divide   
0;JMP 
(Math.divide_324)
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
//call Screen.retBaseScreen
// PUSHED THE RETURN ADDRESS IN THE STACK
@Screen.retBaseScreen_325
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
@Screen.retBaseScreen   
0;JMP 
(Screen.retBaseScreen_325)
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
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push static 1
@Project_NtT.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.Mod
// PUSHED THE RETURN ADDRESS IN THE STACK
@Math.Mod_326
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
@Math.Mod   
0;JMP 
(Math.Mod_326)
//pop LCL 5
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@5 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@5 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//call Memory.peek
// PUSHED THE RETURN ADDRESS IN THE STACK
@Memory.peek_327
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
@Memory.peek   
0;JMP 
(Memory.peek_327)
//pop LCL 4
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@4 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@4 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 5
@5
D=A
@LCL
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
@LCL
M=M-D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//equal
@SP
M=M-1
A=M
D=M
@A // XOR 1 
M=D
@SP
M=M-1
A=M
D=M
@B //XOR 2
M=D
// XOR IMPLEMENTATION
@NB
M=!D
@A
D=M
@NA
M=!D
D=M
@B
D=M&D
@w1
M=D
@NB
D=M
@A
D=M&D
@w2
M=D
D=M
@w1
D=D|M
@XOR  // XOR DONE
M=D 
@ONE_eq_328 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_328
0;JMP
(ONE_eq_328)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_328)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(36)
@SP
M=M-1
A=M
D=M
@if(36)
D;JNE
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//push LCL 4
@4
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@LCL
M=M-D
//push constant 256
@256
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply
// PUSHED THE RETURN ADDRESS IN THE STACK
@Math.multiply_330
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
@Math.multiply   
0;JMP 
(Math.multiply_330)
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push LCL 2
@2
D=A
@LCL
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
@LCL
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
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push THAT 0
@THAT
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
//call Memory.poke
// PUSHED THE RETURN ADDRESS IN THE STACK
@Memory.poke_331
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
@Memory.poke   
0;JMP 
(Memory.poke_331)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//unconditiona jump to else(36)_332
@else(36)
0;JMP
//label if(36)
(if(36))
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//push LCL 4
@4
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@LCL
M=M-D
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push LCL 2
@2
D=A
@LCL
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
@LCL
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
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push THAT 0
@THAT
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 256
@256
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply
// PUSHED THE RETURN ADDRESS IN THE STACK
@Math.multiply_333
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
@Math.multiply   
0;JMP 
(Math.multiply_333)
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
//call Memory.poke
// PUSHED THE RETURN ADDRESS IN THE STACK
@Memory.poke_334
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
@Memory.poke   
0;JMP 
(Memory.poke_334)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//label else(36)
(else(36))
//push LCL 2
@2
D=A
@LCL
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
@LCL
M=M-D
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
//pop LCL 2
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@2 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@2 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
M=M-D
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
//pop LCL 3
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@3 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@3 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//unconditiona jump to while(18)_335
@while(18)
0;JMP
//label whileif(18)
(whileif(18))
//push static 1
@Project_NtT.1
D=M
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
//push constant 505
@505
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
@NEGATIVE_lt_336 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_336
0;JMP
(NEGATIVE_lt_336)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_336)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(37)
@SP
M=M-1
A=M
D=M
@if(37)
D;JNE
//push static 1
@Project_NtT.1
D=M
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
//pop static 1
@SP
M=M-1
A=M
D=M
@Project_NtT.1
M=D    
//unconditiona jump to else(37)_338
@else(37)
0;JMP
//label if(37)
(if(37))
//call Output.println
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.println_339
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
@Output.println   
0;JMP 
(Output.println_339)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//label else(37)
(else(37))
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
//function decleration of Output.printString
//PUSHING 0 i TIMES IN THE STACK 
(Output.printString) 
@2
D=A
@temp
M=D
(LCL_COND)
@SP
A=M
M=0
@SP
M=M+1
@temp
M=M-1
D=M
@LCL_COND
D;JNE
(Jump_end_func)
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
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call String.length
// PUSHED THE RETURN ADDRESS IN THE STACK
@String.length_340
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
@String.length   
0;JMP 
(String.length_340)
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//label while(19)
(while(19))
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//lt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=D-M// GETS ME Y-X
@NEGATIVE_lt_341 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_341
0;JMP
(NEGATIVE_lt_341)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_341)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(19)
@SP
M=M-1
A=M
D=M
@whileif(19)
D;JNE
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
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push THAT 0
@THAT
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Output.printChar
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.printChar_343
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
@Output.printChar   
0;JMP 
(Output.printChar_343)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//pop LCL 0
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
//unconditiona jump to while(19)_344
@while(19)
0;JMP
//label whileif(19)
(whileif(19))
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
//function decleration of Output.printInt
//PUSHING 0 i TIMES IN THE STACK 
(Output.printInt) 
@2
D=A
@temp
M=D
(LCL_COND)
@SP
A=M
M=0
@SP
M=M+1
@temp
M=M-1
D=M
@LCL_COND
D;JNE
(Jump_end_func)
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_345 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_345
0;JMP
(NEGATIVE_345)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_345)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(38)
@SP
M=M-1
A=M
D=M
@if(38)
D;JNE
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
//unconditiona jump to else(38)_347
@else(38)
0;JMP
//label if(38)
(if(38))
//label else(38)
(else(38))
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.Mod
// PUSHED THE RETURN ADDRESS IN THE STACK
@Math.Mod_348
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
@Math.Mod   
0;JMP 
(Math.Mod_348)
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push LCL 1
@1
D=A
@LCL
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
@LCL
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
//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.divide
// PUSHED THE RETURN ADDRESS IN THE STACK
@Math.divide_349
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
@Math.divide   
0;JMP 
(Math.divide_349)
//pop LCL 0
@SP
M=M-1
A=M
D=M
@LCL
A=M
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
//call Output.printInt
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.printInt_350
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
@Output.printInt   
0;JMP 
(Output.printInt_350)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push LCL 1
@1
D=A
@LCL
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
@LCL
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
//call Output.printChar
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.printChar_351
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
@Output.printChar   
0;JMP 
(Output.printChar_351)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//fucntion decleration Output.println....also 0 local segments needed
(Output.println)
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 1
@SP
M=M-1
A=M
D=M
@Project_NtT.1
M=D    
//push static 2
@Project_NtT.2
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 245
@245
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
@NEGATIVE_lt_352 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_352
0;JMP
(NEGATIVE_lt_352)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_352)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(39)
@SP
M=M-1
A=M
D=M
@if(39)
D;JNE
//push static 2
@Project_NtT.2
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 11
@11
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
//pop static 2
@SP
M=M-1
A=M
D=M
@Project_NtT.2
M=D    
//unconditiona jump to else(39)_354
@else(39)
0;JMP
//label if(39)
(if(39))
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
//label else(39)
(else(39))
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
//function decleration of Output.backSpace
//PUSHING 0 i TIMES IN THE STACK 
(Output.backSpace) 
@8
D=A
@temp
M=D
(LCL_COND)
@SP
A=M
M=0
@SP
M=M+1
@temp
M=M-1
D=M
@LCL_COND
D;JNE
(Jump_end_func)
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push static 2
@Project_NtT.2
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop LCL 2
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@2 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@2 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop LCL 5
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@5 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@5 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop LCL 7
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@7 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@7 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop LCL 6
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@6 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@6 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//label while(
(while()
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//push constant 11
@11
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
@NEGATIVE_lt_355 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_355
0;JMP
(NEGATIVE_lt_355)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_355)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(20)
@SP
M=M-1
A=M
D=M
@whileif(20)
D;JNE
//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//push LCL 2
@2
D=A
@LCL
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
@LCL
M=M-D
//call Math.multiply
// PUSHED THE RETURN ADDRESS IN THE STACK
@Math.multiply_357
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
@Math.multiply   
0;JMP 
(Math.multiply_357)
//push static 1
@Project_NtT.1
D=M
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
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.divide
// PUSHED THE RETURN ADDRESS IN THE STACK
@Math.divide_358
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
@Math.divide   
0;JMP 
(Math.divide_358)
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
//call Screen.retBaseScreen
// PUSHED THE RETURN ADDRESS IN THE STACK
@Screen.retBaseScreen_359
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
@Screen.retBaseScreen   
0;JMP 
(Screen.retBaseScreen_359)
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
//push static 1
@Project_NtT.1
D=M
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
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.Mod
// PUSHED THE RETURN ADDRESS IN THE STACK
@Math.Mod_360
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
@Math.Mod   
0;JMP 
(Math.Mod_360)
//pop LCL 3
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@3 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@3 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Memory.peek
// PUSHED THE RETURN ADDRESS IN THE STACK
@Memory.peek_361
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
@Memory.peek   
0;JMP 
(Memory.peek_361)
//pop LCL 4
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@4 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@4 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
M=M-D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//equal
@SP
M=M-1
A=M
D=M
@A // XOR 1 
M=D
@SP
M=M-1
A=M
D=M
@B //XOR 2
M=D
// XOR IMPLEMENTATION
@NB
M=!D
@A
D=M
@NA
M=!D
D=M
@B
D=M&D
@w1
M=D
@NB
D=M
@A
D=M&D
@w2
M=D
D=M
@w1
D=D|M
@XOR  // XOR DONE
M=D 
@ONE_eq_362 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_362
0;JMP
(ONE_eq_362)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_362)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(40)
@SP
M=M-1
A=M
D=M
@if(40)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Memory.poke
// PUSHED THE RETURN ADDRESS IN THE STACK
@Memory.poke_364
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
@Memory.poke   
0;JMP 
(Memory.poke_364)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//unconditiona jump to else(40)_365
@else(40)
0;JMP
//label if(4
(if(4)
//label while(
(while()
//push LCL 7
@7
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@7
D=A
@LCL
M=M-D
//push constant 8
@8
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
@NEGATIVE_lt_366 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_366
0;JMP
(NEGATIVE_lt_366)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_366)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(21)
@SP
M=M-1
A=M
D=M
@whileif(21)
D;JNE
//push LCL 4
@4
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@LCL
M=M-D
//push LCL 7
@7
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@7
D=A
@LCL
M=M-D
//call Math.bit
// PUSHED THE RETURN ADDRESS IN THE STACK
@Math.bit_368
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
@Math.bit   
0;JMP 
(Math.bit_368)
//pop LCL 5
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@5 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@5 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 5
@5
D=A
@LCL
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
@LCL
M=M-D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//equal
@SP
M=M-1
A=M
D=M
@A // XOR 1 
M=D
@SP
M=M-1
A=M
D=M
@B //XOR 2
M=D
// XOR IMPLEMENTATION
@NB
M=!D
@A
D=M
@NA
M=!D
D=M
@B
D=M&D
@w1
M=D
@NB
D=M
@A
D=M&D
@w2
M=D
D=M
@w1
D=D|M
@XOR  // XOR DONE
M=D 
@ONE_eq_369 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_369
0;JMP
(ONE_eq_369)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_369)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(41)
@SP
M=M-1
A=M
D=M
@if(41)
D;JNE
//push LCL 6
@6
D=A
@LCL
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
@LCL
M=M-D
//push LCL 7
@7
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@7
D=A
@LCL
M=M-D
//call Math.getPower
// PUSHED THE RETURN ADDRESS IN THE STACK
@Math.getPower_371
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
@Math.getPower   
0;JMP 
(Math.getPower_371)
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
//pop LCL 6
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@6 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@6 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 7
@7
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@7
D=A
@LCL
M=M-D
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
//pop LCL 7
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@7 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@7 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//unconditiona jump to else(41)_372
@else(41)
0;JMP
//label if(41)
(if(41))
//label else(41)
(else(41))
//unconditiona jump to while(21)_373
@while(21)
0;JMP
//label whileif(
(whileif()
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push LCL 4
@4
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@LCL
M=M-D
//push LCL 6
@6
D=A
@LCL
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
@LCL
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
//call Memory.poke
// PUSHED THE RETURN ADDRESS IN THE STACK
@Memory.poke_374
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
@Memory.poke   
0;JMP 
(Memory.poke_374)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//label else(4
(else(4)
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
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
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 2
@2
D=A
@LCL
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
@LCL
M=M-D
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
//pop LCL 2
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@2 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@2 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//unconditiona jump to while(20)_375
@while(20)
0;JMP
//label whileif(
(whileif()
//push static 1
@Project_NtT.1
D=M
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
//pop static 1
@SP
M=M-1
A=M
D=M
@Project_NtT.1
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
//fucntion decleration String.new....also 0 local segments needed
(String.new)
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Memory.alloc
// PUSHED THE RETURN ADDRESS IN THE STACK
@Memory.alloc_376
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
@Memory.alloc   
0;JMP 
(Memory.alloc_376)
//pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
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
//call Memory.alloc
// PUSHED THE RETURN ADDRESS IN THE STACK
@Memory.alloc_377
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
@Memory.alloc   
0;JMP 
(Memory.alloc_377)
//pop THIS 0
@SP
M=M-1
A=M
D=M
@THIS
A=M
M=D
//push constant 0
@0
D=A
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
@Project_NtT.0
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
//pop static 1
@SP
M=M-1
A=M
D=M
@Project_NtT.1
M=D    
//push pointer 0
@THIS
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
//fucntion decleration String.dispose....also 0 local segments needed
(String.dispose)
//push ARG 0
@ARG
A=M
D=M
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
//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Memory.deAlloc
// PUSHED THE RETURN ADDRESS IN THE STACK
@Memory.deAlloc_378
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
@Memory.deAlloc   
0;JMP 
(Memory.deAlloc_378)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//fucntion decleration String.length....also 0 local segments needed
(String.length)
//push ARG 0
@ARG
A=M
D=M
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
//push static 0
@Project_NtT.0
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
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//fucntion decleration String.charAt....also 0 local segments needed
(String.charAt)
//push ARG 0
@ARG
A=M
D=M
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
//push static 1
@Project_NtT.1
D=M
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
@NEGATIVE_lt_379 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_379
0;JMP
(NEGATIVE_lt_379)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_379)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(42)
@SP
M=M-1
A=M
D=M
@if(42)
D;JNE
//push THIS 0
@THIS
A=M
D=M
@SP
A=M
M=D
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
//push THAT 0
@THAT
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
//unconditiona jump to else(42)_381
@else(42)
0;JMP
//label if(4
(if(4)
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
//label else(4
(else(4)
//fucntion decleration String.setCharAt....also 0 local segments needed
(String.setCharAt)
//push ARG 0
@ARG
A=M
D=M
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
//push static 1
@Project_NtT.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_382 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_382
0;JMP
(NEGATIVE_382)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_382)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(43)
@SP
M=M-1
A=M
D=M
@if(43)
D;JNE
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
//unconditiona jump to else(43)_384
@else(43)
0;JMP
//label if(43)
(if(43))
//label else(43)
(else(43))
//push THIS 0
@THIS
A=M
D=M
@SP
A=M
M=D
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
//push ARG 2
@2
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
@2
D=A
@ARG
M=M-D
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push temp 0
@5
D=M
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
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//fucntion decleration String.appendChar....also 0 local segments needed
(String.appendChar)
//push ARG 0
@ARG
A=M
D=M
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
//push static 0
@Project_NtT.0
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
//push static 1
@Project_NtT.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_385 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_385
0;JMP
(NEGATIVE_385)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_385)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(44)
@SP
M=M-1
A=M
D=M
@if(44)
D;JNE
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
//unconditiona jump to else(44)_387
@else(44)
0;JMP
//label if(44)
(if(44))
//label else(44)
(else(44))
//push THIS 0
@THIS
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push static 0
@Project_NtT.0
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
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push temp 0
@5
D=M
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
//push static 0
@Project_NtT.0
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
//pop static 0
@SP
M=M-1
A=M
D=M
@Project_NtT.0
M=D    
//push THIS 0
@THIS
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
//fucntion decleration String.eraseLastChar....also 0 local segments needed
(String.eraseLastChar)
//push ARG 0
@ARG
A=M
D=M
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
//push static 0
@Project_NtT.0
D=M
@SP
A=M
M=D
@SP
M=M+1
//push static 1
@Project_NtT.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_388 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_388
0;JMP
(NEGATIVE_388)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_388)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(45)
@SP
M=M-1
A=M
D=M
@if(45)
D;JNE
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
//unconditiona jump to else(45)_390
@else(45)
0;JMP
//label if(45)
(if(45))
//label else(45)
(else(45))
//push THIS 0
@THIS
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push static 0
@Project_NtT.0
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push temp 0
@5
D=M
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
//push static 0
@Project_NtT.0
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
//pop static 0
@SP
M=M-1
A=M
D=M
@Project_NtT.0
M=D    
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//function decleration of String.intValue
//PUSHING 0 i TIMES IN THE STACK 
(String.intValue) 
@3
D=A
@temp
M=D
(LCL_COND)
@SP
A=M
M=0
@SP
M=M+1
@temp
M=M-1
D=M
@LCL_COND
D;JNE
(Jump_end_func)
//push ARG 0
@ARG
A=M
D=M
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//label while(
(while()
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push static 0
@Project_NtT.0
D=M
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
@NEGATIVE_lt_391 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_391
0;JMP
(NEGATIVE_lt_391)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_391)
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
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(22)
@SP
M=M-1
A=M
D=M
@whileif(22)
D;JNE
//push THIS 0
@THIS
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
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push THAT 0
@THAT
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 47
@47
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_393 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_393
0;JMP
(NEGATIVE_393)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_393)
//push THIS 0
@THIS
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
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push THAT 0
@THAT
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 58
@58
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
@NEGATIVE_lt_394 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_394
0;JMP
(NEGATIVE_lt_394)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_394)
// and
@SP
M=M-1
A=M
D=M //Y
@SP
M=M-1
A=M
M=D&M // X AND Y
@SP
M=M+1    
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(46)
@SP
M=M-1
A=M
D=M
@if(46)
D;JNE
//push THIS 0
@THIS
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
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push THAT 0
@THAT
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
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
//pop LCL 2
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@2 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@2 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply
// PUSHED THE RETURN ADDRESS IN THE STACK
@Math.multiply_396
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
@Math.multiply   
0;JMP 
(Math.multiply_396)
//push LCL 2
@2
D=A
@LCL
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
@LCL
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
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 0
@LCL
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
//unconditiona jump to else(46)_397
@else(46)
0;JMP
//label if(46)
(if(46))
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
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
//label else(46)
(else(46))
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
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
//unconditiona jump to while(22)_398
@while(22)
0;JMP
//label whileif(
(whileif()
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//fucntion decleration String.setInt....also 0 local segments needed
(String.setInt)
//push ARG 0
@ARG
A=M
D=M
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
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//fucntion decleration String.newLine....also 0 local segments needed
(String.newLine)
//push constant 128
@128
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
//fucntion decleration String.backSpace....also 0 local segments needed
(String.backSpace)
//push constant 129
@129
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
//fucntion decleration String.doubleQuote....also 0 local segments needed
(String.doubleQuote)
//push constant 234
@234
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
//fucntion decleration Keyboard.init....also 0 local segments needed
(Keyboard.init)
//push constant 24576
@24576
D=A
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
@Project_NtT.0
M=D    
//fucntion decleration Keyboard.keyPressed....also 0 local segments needed
(Keyboard.keyPressed)
//push static 0
@Project_NtT.0
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Memory.peek
// PUSHED THE RETURN ADDRESS IN THE STACK
@Memory.peek_399
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
@Memory.peek   
0;JMP 
(Memory.peek_399)
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
//function decleration of Keyboard.readChar
//PUSHING 0 i TIMES IN THE STACK 
(Keyboard.readChar) 
@2
D=A
@temp
M=D
(LCL_COND)
@SP
A=M
M=0
@SP
M=M+1
@temp
M=M-1
D=M
@LCL_COND
D;JNE
(Jump_end_func)
//call Keyboard.keyPressed
// PUSHED THE RETURN ADDRESS IN THE STACK
@Keyboard.keyPressed_400
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
@Keyboard.keyPressed   
0;JMP 
(Keyboard.keyPressed_400)
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//label while(
(while()
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//equal
@SP
M=M-1
A=M
D=M
@A // XOR 1 
M=D
@SP
M=M-1
A=M
D=M
@B //XOR 2
M=D
// XOR IMPLEMENTATION
@NB
M=!D
@A
D=M
@NA
M=!D
D=M
@B
D=M&D
@w1
M=D
@NB
D=M
@A
D=M&D
@w2
M=D
D=M
@w1
D=D|M
@XOR  // XOR DONE
M=D 
@ONE_eq_401 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_401
0;JMP
(ONE_eq_401)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_401)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(23)
@SP
M=M-1
A=M
D=M
@whileif(23)
D;JNE
//call Keyboard.keyPressed
// PUSHED THE RETURN ADDRESS IN THE STACK
@Keyboard.keyPressed_403
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
@Keyboard.keyPressed   
0;JMP 
(Keyboard.keyPressed_403)
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//unconditiona jump to while(23)_404
@while(23)
0;JMP
//label whileif(
(whileif()
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//pop LCL 0
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
//label while(
(while()
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//equal
@SP
M=M-1
A=M
D=M
@A // XOR 1 
M=D
@SP
M=M-1
A=M
D=M
@B //XOR 2
M=D
// XOR IMPLEMENTATION
@NB
M=!D
@A
D=M
@NA
M=!D
D=M
@B
D=M&D
@w1
M=D
@NB
D=M
@A
D=M&D
@w2
M=D
D=M
@w1
D=D|M
@XOR  // XOR DONE
M=D 
@ONE_eq_405 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_405
0;JMP
(ONE_eq_405)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_405)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(24)
@SP
M=M-1
A=M
D=M
@whileif(24)
D;JNE
//call Keyboard.keyPressed
// PUSHED THE RETURN ADDRESS IN THE STACK
@Keyboard.keyPressed_407
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
@Keyboard.keyPressed   
0;JMP 
(Keyboard.keyPressed_407)
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//unconditiona jump to while(24)_408
@while(24)
0;JMP
//label whileif(
(whileif()
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Output.printChar
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.printChar_409
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
@Output.printChar   
0;JMP 
(Output.printChar_409)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//function decleration of Keyboard.readCharWithoutPrinting
//PUSHING 0 i TIMES IN THE STACK 
(Keyboard.readCharWithoutPrinting) 
@2
D=A
@temp
M=D
(LCL_COND)
@SP
A=M
M=0
@SP
M=M+1
@temp
M=M-1
D=M
@LCL_COND
D;JNE
(Jump_end_func)
//call Keyboard.keyPressed
// PUSHED THE RETURN ADDRESS IN THE STACK
@Keyboard.keyPressed_410
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
@Keyboard.keyPressed   
0;JMP 
(Keyboard.keyPressed_410)
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//label while(
(while()
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//equal
@SP
M=M-1
A=M
D=M
@A // XOR 1 
M=D
@SP
M=M-1
A=M
D=M
@B //XOR 2
M=D
// XOR IMPLEMENTATION
@NB
M=!D
@A
D=M
@NA
M=!D
D=M
@B
D=M&D
@w1
M=D
@NB
D=M
@A
D=M&D
@w2
M=D
D=M
@w1
D=D|M
@XOR  // XOR DONE
M=D 
@ONE_eq_411 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_411
0;JMP
(ONE_eq_411)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_411)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(25)
@SP
M=M-1
A=M
D=M
@whileif(25)
D;JNE
//call Keyboard.keyPressed
// PUSHED THE RETURN ADDRESS IN THE STACK
@Keyboard.keyPressed_413
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
@Keyboard.keyPressed   
0;JMP 
(Keyboard.keyPressed_413)
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//unconditiona jump to while(25)_414
@while(25)
0;JMP
//label whileif(
(whileif()
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//pop LCL 0
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
//label while(
(while()
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//equal
@SP
M=M-1
A=M
D=M
@A // XOR 1 
M=D
@SP
M=M-1
A=M
D=M
@B //XOR 2
M=D
// XOR IMPLEMENTATION
@NB
M=!D
@A
D=M
@NA
M=!D
D=M
@B
D=M&D
@w1
M=D
@NB
D=M
@A
D=M&D
@w2
M=D
D=M
@w1
D=D|M
@XOR  // XOR DONE
M=D 
@ONE_eq_415 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_415
0;JMP
(ONE_eq_415)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_415)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(26)
@SP
M=M-1
A=M
D=M
@whileif(26)
D;JNE
//call Keyboard.keyPressed
// PUSHED THE RETURN ADDRESS IN THE STACK
@Keyboard.keyPressed_417
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
@Keyboard.keyPressed   
0;JMP 
(Keyboard.keyPressed_417)
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//unconditiona jump to while(26)_418
@while(26)
0;JMP
//label whileif(
(whileif()
//push LCL 0
@LCL
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
//function decleration of Keyboard.readLine
//PUSHING 0 i TIMES IN THE STACK 
(Keyboard.readLine) 
@6
D=A
@temp
M=D
(LCL_COND)
@SP
A=M
M=0
@SP
M=M+1
@temp
M=M-1
D=M
@LCL_COND
D;JNE
(Jump_end_func)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop LCL 2
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@2 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@2 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop LCL 3
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@3 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@3 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.new
// PUSHED THE RETURN ADDRESS IN THE STACK
@String.new_419
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
@String.new   
0;JMP 
(String.new_419)
//pop LCL 4
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@4 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@4 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//label while(
(while()
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//equal
@SP
M=M-1
A=M
D=M
@A // XOR 1 
M=D
@SP
M=M-1
A=M
D=M
@B //XOR 2
M=D
// XOR IMPLEMENTATION
@NB
M=!D
@A
D=M
@NA
M=!D
D=M
@B
D=M&D
@w1
M=D
@NB
D=M
@A
D=M&D
@w2
M=D
D=M
@w1
D=D|M
@XOR  // XOR DONE
M=D 
@ONE_eq_420 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_420
0;JMP
(ONE_eq_420)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_420)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(27)
@SP
M=M-1
A=M
D=M
@whileif(27)
D;JNE
//call Keyboard.readChar
// PUSHED THE RETURN ADDRESS IN THE STACK
@Keyboard.readChar_422
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
@Keyboard.readChar   
0;JMP 
(Keyboard.readChar_422)
//pop LCL 2
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@2 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@2 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push LCL 4
@4
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@LCL
M=M-D
//push LCL 2
@2
D=A
@LCL
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
@LCL
M=M-D
//call String.appendChar
// PUSHED THE RETURN ADDRESS IN THE STACK
@String.appendChar_423
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
@String.appendChar   
0;JMP 
(String.appendChar_423)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push LCL 2
@2
D=A
@LCL
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
@LCL
M=M-D
//push constant 128
@128
D=A
@SP
A=M
M=D
@SP
M=M+1
//equal
@SP
M=M-1
A=M
D=M
@A // XOR 1 
M=D
@SP
M=M-1
A=M
D=M
@B //XOR 2
M=D
// XOR IMPLEMENTATION
@NB
M=!D
@A
D=M
@NA
M=!D
D=M
@B
D=M&D
@w1
M=D
@NB
D=M
@A
D=M&D
@w2
M=D
D=M
@w1
D=D|M
@XOR  // XOR DONE
M=D 
@ONE_eq_424 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_424
0;JMP
(ONE_eq_424)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_424)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(47)
@SP
M=M-1
A=M
D=M
@if(47)
D;JNE
//call Output.println
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.println_426
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
@Output.println   
0;JMP 
(Output.println_426)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push LCL 4
@4
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@LCL
M=M-D
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
//unconditiona jump to else(47)_427
@else(47)
0;JMP
//label if(47)
(if(47))
//label else(47)
(else(47))
//push LCL 2
@2
D=A
@LCL
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
@LCL
M=M-D
//push constant 129
@129
D=A
@SP
A=M
M=D
@SP
M=M+1
//equal
@SP
M=M-1
A=M
D=M
@A // XOR 1 
M=D
@SP
M=M-1
A=M
D=M
@B //XOR 2
M=D
// XOR IMPLEMENTATION
@NB
M=!D
@A
D=M
@NA
M=!D
D=M
@B
D=M&D
@w1
M=D
@NB
D=M
@A
D=M&D
@w2
M=D
D=M
@w1
D=D|M
@XOR  // XOR DONE
M=D 
@ONE_eq_428 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_428
0;JMP
(ONE_eq_428)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_428)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto if(48)
@SP
M=M-1
A=M
D=M
@if(48)
D;JNE
//call Output.backSpace
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.backSpace_430
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
@Output.backSpace   
0;JMP 
(Output.backSpace_430)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push LCL 4
@4
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@LCL
M=M-D
//call String.eraseLastChar
// PUSHED THE RETURN ADDRESS IN THE STACK
@String.eraseLastChar_431
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
@String.eraseLastChar   
0;JMP 
(String.eraseLastChar_431)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//unconditiona jump to else(48)_432
@else(48)
0;JMP
//label if(48)
(if(48))
//label else(48)
(else(48))
//push LCL 4
@4
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@LCL
M=M-D
//call String.length
// PUSHED THE RETURN ADDRESS IN THE STACK
@String.length_433
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
@String.length   
0;JMP 
(String.length_433)
//call String.new
// PUSHED THE RETURN ADDRESS IN THE STACK
@String.new_434
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
@String.new   
0;JMP 
(String.new_434)
//pop LCL 5
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@5 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@5 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//label while(
(while()
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
M=M-D
//push LCL 4
@4
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@LCL
M=M-D
//call String.length
// PUSHED THE RETURN ADDRESS IN THE STACK
@String.length_435
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
@String.length   
0;JMP 
(String.length_435)
//lt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=D-M// GETS ME Y-X
@NEGATIVE_lt_436 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_436
0;JMP
(NEGATIVE_lt_436)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_436)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(28)
@SP
M=M-1
A=M
D=M
@whileif(28)
D;JNE
//push LCL 5
@5
D=A
@LCL
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
@LCL
M=M-D
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
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
//push LCL 4
@4
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@LCL
M=M-D
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
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
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push THAT 0
@THAT
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push temp 0
@5
D=M
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
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
M=M-D
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
//pop LCL 3
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@3 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@3 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//unconditiona jump to while(28)_438
@while(28)
0;JMP
//label whileif(
(whileif()
//push LCL 4
@4
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@LCL
M=M-D
//call String.dispose
// PUSHED THE RETURN ADDRESS IN THE STACK
@String.dispose_439
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
@String.dispose   
0;JMP 
(String.dispose_439)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//push LCL 5
@5
D=A
@LCL
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
@LCL
M=M-D
//call String.length
// PUSHED THE RETURN ADDRESS IN THE STACK
@String.length_440
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
@String.length   
0;JMP 
(String.length_440)
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
//call String.new
// PUSHED THE RETURN ADDRESS IN THE STACK
@String.new_441
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
@String.new   
0;JMP 
(String.new_441)
//pop LCL 4
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@4 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@4 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//label while(
(while()
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
M=M-D
//push LCL 5
@5
D=A
@LCL
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
@LCL
M=M-D
//call String.length
// PUSHED THE RETURN ADDRESS IN THE STACK
@String.length_442
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
@String.length   
0;JMP 
(String.length_442)
//lt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=D-M// GETS ME Y-X
@NEGATIVE_lt_443 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_443
0;JMP
(NEGATIVE_lt_443)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_443)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(29)
@SP
M=M-1
A=M
D=M
@whileif(29)
D;JNE
//push LCL 4
@4
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@LCL
M=M-D
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
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
//push LCL 5
@5
D=A
@LCL
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
@LCL
M=M-D
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
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
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push THAT 0
@THAT
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
//push temp 0
@5
D=M
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
//push LCL 3
@3
D=A
@LCL
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=A
@LCL
M=M-D
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
//pop LCL 3
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@3 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@3 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//unconditiona jump to while(29)_445
@while(29)
0;JMP
//label whileif(
(whileif()
//push LCL 5
@5
D=A
@LCL
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
@LCL
M=M-D
//call String.dispose
// PUSHED THE RETURN ADDRESS IN THE STACK
@String.dispose_446
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
@String.dispose   
0;JMP 
(String.dispose_446)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//unconditiona jump to while(27)_447
@while(27)
0;JMP
//label whileif(
(whileif()
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
//fucntion decleration Sys.init....also 0 local segments needed
(Sys.init)
//call Memory.init
// PUSHED THE RETURN ADDRESS IN THE STACK
@Memory.init_448
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
@Memory.init   
0;JMP 
(Memory.init_448)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//call Math.init
// PUSHED THE RETURN ADDRESS IN THE STACK
@Math.init_449
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
@Math.init   
0;JMP 
(Math.init_449)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//call Output.init
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.init_450
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
@Output.init   
0;JMP 
(Output.init_450)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//call Screen.init
// PUSHED THE RETURN ADDRESS IN THE STACK
@Screen.init_451
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
@Screen.init   
0;JMP 
(Screen.init_451)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//call Keyboard.init
// PUSHED THE RETURN ADDRESS IN THE STACK
@Keyboard.init_452
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
@Keyboard.init   
0;JMP 
(Keyboard.init_452)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//call Main.main
// PUSHED THE RETURN ADDRESS IN THE STACK
@Main.main_453
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
@Main.main   
0;JMP 
(Main.main_453)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//function decleration of Sys.halt
//PUSHING 0 i TIMES IN THE STACK 
(Sys.halt) 
@1
D=A
@temp
M=D
(LCL_COND)
@SP
A=M
M=0
@SP
M=M+1
@temp
M=M-1
D=M
@LCL_COND
D;JNE
(Jump_end_func)
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
//label while(3
(while(3)
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//equal
@SP
M=M-1
A=M
D=M
@A // XOR 1 
M=D
@SP
M=M-1
A=M
D=M
@B //XOR 2
M=D
// XOR IMPLEMENTATION
@NB
M=!D
@A
D=M
@NA
M=!D
D=M
@B
D=M&D
@w1
M=D
@NB
D=M
@A
D=M&D
@w2
M=D
D=M
@w1
D=D|M
@XOR  // XOR DONE
M=D 
@ONE_eq_454 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_454
0;JMP
(ONE_eq_454)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_454)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(30)
@SP
M=M-1
A=M
D=M
@whileif(30)
D;JNE
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
//unconditiona jump to while(30)_456
@while(30)
0;JMP
//label whileif(3
(whileif(3)
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
//function decleration of Sys.wait
//PUSHING 0 i TIMES IN THE STACK 
(Sys.wait) 
@2
D=A
@temp
M=D
(LCL_COND)
@SP
A=M
M=0
@SP
M=M+1
@temp
M=M-1
D=M
@LCL_COND
D;JNE
(Jump_end_func)
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG 0
@ARG
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
//push ARG 0
@ARG
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
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//push constant 32767
@32767
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
//label while(31)
(while(31))
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
//push constant 0
@0
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
@NEGATIVE_lt_457 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_457
0;JMP
(NEGATIVE_lt_457)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_457)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(31)
@SP
M=M-1
A=M
D=M
@whileif(31)
D;JNE
//label while(3
(while(3)
//push LCL 0
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//equal
@SP
M=M-1
A=M
D=M
@A // XOR 1 
M=D
@SP
M=M-1
A=M
D=M
@B //XOR 2
M=D
// XOR IMPLEMENTATION
@NB
M=!D
@A
D=M
@NA
M=!D
D=M
@B
D=M&D
@w1
M=D
@NB
D=M
@A
D=M&D
@w2
M=D
D=M
@w1
D=D|M
@XOR  // XOR DONE
M=D 
@ONE_eq_459 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_459
0;JMP
(ONE_eq_459)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_459)
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
//if goto whileif(32)
@SP
M=M-1
A=M
D=M
@whileif(32)
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
//pop LCL 0
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
//unconditiona jump to while(32)_461
@while(32)
0;JMP
//label whileif(3
(whileif(3)
//push LCL 1
@1
D=A
@LCL
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
@LCL
M=M-D
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
//pop LCL 1
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@1 // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@LCL 
M=M+D
@VAR
D=M
@LCL 
A=M
M=D
@1 // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@LCL  
M=M-D
//unconditiona jump to while(31)_462
@while(31)
0;JMP
//label whileif(31)
(whileif(31))
//push constant 12
@12
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
//fucntion decleration Sys.error....also 0 local segments needed
(Sys.error)
//push ARG 0
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Output.printChar
// PUSHED THE RETURN ADDRESS IN THE STACK
@Output.printChar_463
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
@Output.printChar   
0;JMP 
(Output.printChar_463)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D
//call Sys.halt
// PUSHED THE RETURN ADDRESS IN THE STACK
@Sys.halt_464
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
@Sys.halt   
0;JMP 
(Sys.halt_464)
//pop temp 0
@SP
M=M-1
A=M
D=M
@5
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
//fucntion decleration Main.main....also 0 local segments needed
(Main.main)
//push constant 47
@47
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
