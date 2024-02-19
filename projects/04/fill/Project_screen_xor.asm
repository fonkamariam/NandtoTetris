@temp //16
M=0
(ONE)
@keyboard //17 GETS ME KEYBOARD
M=0
@24576
D=A
@keyboard 
A=D
D=M 
@temp_keyboard //18
M=D 
// make keyboard 1 or 0 //b/c I don't need the real pressed value
@STOP_A1       
D;JEQ 
@temp_keyboard  
M=1
D=M
@JUMP1
0;JMP
(STOP_A1)
@temp_keyboard
M=0
D=M
(JUMP1) 
// end
// XOR START ///////////////////////////////////////
@A//KEYBOAD
M=D
@temp 
D=M
@B //TEMP
M=D
// Not A imp
@A
D=M
@STOP_A
D;JNE
@NOT_A //18
M=1
@JUMP
0;JMP
(STOP_A)
@STOP_A
@NOT_A
M=0
(JUMP)
//END OF NOT A IMP
@B
D=M
@STOP_B
D;JNE
@NOT_B
M=1
@JUMPB
0;JMP
(STOP_B)
@STOP_B
@NOT_B //19
M=0
(JUMPB)
// End of Not B imp
@A
D=M
@NOT_B
D=D&M
@w1 //20
M=D
@NOT_A
D=M
@B
D=D&M
@w2 //21
M=D
@w1
D=D|M
@XOR //22
M=D
// XOR END ////////////////////////
@ONE
D;JEQ // IF KEY|TEMP 0 (LOOP) ELSE CONTINUE 
@temp_keyboard 
D=M
@TWO// IF LOOPU 
D;JNE
@temp// start of white pixel SETTING TEMP = 0
M=0
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
(FOUR)
@THREE // START OF IF CONDITION
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
@FOUR
0;JMP
(THREE)
@ONE
0;JMP//end of white pixel
(TWO)
@temp // START OF BLACK PIXEL SETTING TEMP = 1
M=1
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
(SIX)
@FIVE // START OF IF CONDITION
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
@SIX
0;JMP
(FIVE)
@ONE // END
0;JMP






