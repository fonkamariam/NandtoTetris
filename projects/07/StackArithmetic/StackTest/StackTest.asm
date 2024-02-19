//push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 17
@17
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
@ONE_eq_0 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_0
0;JMP
(ONE_eq_0)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_0)
//push constant 17
@17
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
@ONE_eq_1 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_1
0;JMP
(ONE_eq_1)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_1)
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 17
@17
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
@ONE_eq_2 /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_2
0;JMP
(ONE_eq_2)
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_2)
//push constant 892
@892
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 891
@891
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
@NEGATIVE_lt_3 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_3
0;JMP
(NEGATIVE_lt_3)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_3)
//push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 892
@892
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
@NEGATIVE_lt_4 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_4
0;JMP
(NEGATIVE_lt_4)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_4)
//push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 891
@891
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
//push constant 32767
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 32766
@32766
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
@NEGATIVE_6 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_6
0;JMP
(NEGATIVE_6)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_6)
//push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 32767
@32767
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
@NEGATIVE_7 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_7
0;JMP
(NEGATIVE_7)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_7)
//push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 32766
@32766
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
@NEGATIVE_8 // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_8
0;JMP
(NEGATIVE_8)
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_8)
//push constant 57
@57
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
//push constant 53
@53
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
//push constant 112
@112
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
//neg
@SP
M=M-1
A=M
M=!M
M=M+1
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
//push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1
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
(Haaland)
@Haaland
0;JMP
