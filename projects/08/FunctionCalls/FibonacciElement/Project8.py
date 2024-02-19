import re,os
from pathlib import Path
def const(i):
    return f"""//push constant {i}
@{i}
D=A
@SP
A=M
M=D
@SP
M=M+1
"""
def pop_segement(segement,i):
    if segement == "that" or segement == "this":
        segement=str(segement.upper())
    if segement == "local":
        segement="LCL"
    if segement == "argument":
        segement="ARG"
    if int(i)!=0:
        return f"""//pop {segement} {i}
@SP
M=M-1
A=M
D=M
@VAR // THE POPPED VALUE
M=D
@{i} // TO INCREMENT THE SEGEMENT BY i VALUE
D=A
@{segement} 
M=M+D
@VAR
D=M
@{segement} 
A=M
M=D
@{i} // TO DECREMENT BACK THE SEGEMENT BY I 
D=A
@{segement}  
M=M-D
"""
    else:
        return f"""//pop {segement} {i}
@SP
M=M-1
A=M
D=M
@{segement}
A=M
M=D
"""
def push_segement(segement,i):
    if segement == "that" or segement == "this":
        segement=str(segement.upper())
    if segement == "local":
        segement="LCL"
    if segement == "argument":
        segement="ARG"
    if int(i)!=0:
        return f"""//push {segement} {i}
@{i}
D=A
@{segement}
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@{i}
D=A
@{segement}
M=M-D
"""
    else:
        return f"""//push {segement} {i}
@{segement}
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
"""
def push_static(name,i):
    return f"""//push static {i}
@{name}.{i}
D=M
@SP
A=M
M=D
@SP
M=M+1
"""
def pop_static(name,i):
    return f"""//pop static {i}
@SP
M=M-1
A=M
D=M
@{name}.{i}
M=D    
"""
def push_temp(i):
    return f"""//push temp {i-5}
@{i}
D=M
@SP
A=M
M=D
@SP
M=M+1
""" 
def pop_temp(i):
    return f"""//pop temp {i-5}
@SP
M=M-1
A=M
D=M
@{i}
M=D
"""
def push_pointer(i):
    if int(i) == 0:
        return f"""//push pointer {i}
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
"""
    else:
        return f"""//push pointer {i}
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
"""
def pop_pointer(i):
    if int(i)==0:
        return f"""//pop pointer {i}
@SP
M=M-1
A=M
D=M
@THIS
M=D
"""
    else:
        return f"""//pop pointer {i}
@SP
M=M-1
A=M
D=M
@THAT
M=D
"""
def add():
    return"""//add
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
"""
def sub():
    return """//sub
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
"""
def gt(n):
    return f"""//gt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=M-D// GETS ME X-Y
@NEGATIVE_{n} // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_{n}
0;JMP
(NEGATIVE_{n})
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_{n})
"""
def lt(n):
    return f"""//lt
@SP
M=M-1
A=M
D=M // GETS ME Y
@SP
M=M-1
A=M
D=D-M// GETS ME Y-X
@NEGATIVE_lt_{n} // IF NEGATIVE JUMP TO 
D;JLE
@SP
A=M
M=-1
@SP 
M=M+1
@GETOUT_lt_{n}
0;JMP
(NEGATIVE_lt_{n})
@SP
A=M
M=0
@SP
M=M+1
(GETOUT_lt_{n})
"""
def eq(n):
    return f"""//equal
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
@ONE_eq_{n} /// IF XOR == 0 MAKE STACK -1
D;JNE
@SP
A=M
M=-1
@SP
M=M+1
@JUMP_eq_{n}
0;JMP
(ONE_eq_{n})
@SP // IF XOR!=0 MAKE STACK 0
A=M
M=0
@SP
M=M+1 
(JUMP_eq_{n})
"""
def And():
    return"""// and
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
"""
def Or():
    return """//or
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
"""
def Not():
    return """//Not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1    
"""
def jump():
    return"""(Haaland)
@Haaland
0;JMP
"""
def neg():
    return """//neg
@SP
M=M-1
A=M
M=!M
M=M+1
@SP
M=M+1    
"""
#branching
def label(name):
    name=name.strip()
    return f"""//label {name}
({name})
"""
def goto(name):
    return f"""//if goto {name}
@SP
M=M-1
A=M
D=M
@{name}
D;JNE
"""
def goto_unco(name):
    return f"""//unconditiona jump to {name}_{n}
@{name}
0;JMP
"""
#function
def fucn(name,i):
    if int(i)==0:
        return f"""//fucntion decleration {name}....also 0 local segments needed
({name})
"""
    else:
        return f"""//function decleration of {name}
//PUSHING 0 i TIMES IN THE STACK 
({name}) 
@{i}
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
"""
def ret_func():
    return """//return
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
"""
def call_func(name,i,n):
    return f"""//call {name}
// PUSHED THE RETURN ADDRESS IN THE STACK
@{name}_{n}
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
@{int(i)+5}
D=A
@SP
M=M-D
D=M
@ARG
M=D
// SETTING BACK THE SP AND SETTING THE LCL = SP
@{int(i)+5} 
D=A
@SP
M=M+D
D=M
@LCL
M=D
//ENTER THE FUNCTION IN THE VIRTUAL WORLD
@{name}   
0;JMP 
({name}_{n})
"""

n=0  
basepath = Path('')
files_in_basepath = basepath.iterdir()
list_conv=[]
for item in files_in_basepath:
    if item.is_file(): 
        if sysre:=re.search(r'^(.+)\.vm$',item.name):
           list_conv.append(item)
cwd = os.getcwd()
str1=os.getcwd()
str2=str1.split('\\')
n=len(str2)
name=str2[n-1]
with open(f"{name}.asm","a") as asm:
    asm.write ("""//initaliazing sys.init
@Sys.init
0;JMP
""")
for x in list_conv:          
    with open (f"{x}","r") as file:
        for line in file:
            line=line.strip()
            if not line:
                continue
            if comment:= re.search(r'^\/{2}.*',line):
                continue
            if constant:=re.search(r'^push constant ([0-9]+) *\/?\/?',line):
                ans=const(constant.group(1))
                with open(f"{name}.asm","a") as asm:
                    asm.write (f"{ans}")
            if segement:=re.search(r'^(push|pop) (local|argument|this|that) ([0-9]+) *\/?\/?',line):
                if segement.group(1)=="push":
                    ans= push_segement(segement.group(2),int(segement.group(3)))
                    with open(f"{name}.asm","a") as asm:
                        asm.write (f"{ans}") 
                else: 
                    ans= pop_segement(segement.group(2),segement.group(3))
                    with open(f"{name}.asm","a") as asm:
                        asm.write (f"{ans}")
            if static:=re.search(r'^(push|pop) static ([0-9]+) *\/?\/?',line):
                if static.group(1)=="push":
                    ans= push_static(name,static.group(2))
                    with open(f"{name}.asm","a") as asm:
                        asm.write (f"{ans}") 
                else:
                    ans= pop_static(name,static.group(2))
                    with open(f"{name}.asm","a") as asm:
                        asm.write (f"{ans}")
            if temp:=re.search(r'^(push|pop) temp ([0-9]+) *\/?\/?',line):
                num=int(temp.group(2))
                num+=5
                if temp.group(1)=="push":
                    ans= push_temp(num)
                    with open(f"{name}.asm","a") as asm:
                        asm.write (f"{ans}") 
                else:
                    ans= pop_temp(num)
                    with open(f"{name}.asm","a") as asm:
                        asm.write (f"{ans}")
            if pointer:=re.search(r'^(push|pop) pointer ([0-9]+) *\/?\/?',line):
                if pointer.group(1)=="push":
                    ans= push_pointer(pointer.group(2))
                    with open(f"{name}.asm","a") as asm:
                        asm.write (f"{ans}") 
                else:
                    ans= pop_pointer(pointer.group(2))
                    with open(f"{name}.asm","a") as asm:
                        asm.write (f"{ans}")
            if addition:=re.search(r'^add *\/?\/?',line):
                ans=add()
                with open(f"{name}.asm","a") as asm:
                        asm.write (f"{ans}")
            if substraction:=re.search(r'^sub *\/?\/?',line):
                ans=sub()
                with open(f"{name}.asm","a") as asm:
                        asm.write (f"{ans}")
            if greater:=re.search(r'^gt *\/?\/?',line):
                ans=gt(n)
                with open(f"{name}.asm","a") as asm:
                        asm.write (f"{ans}")
                n+=1
            if less_than:=re.search(r'^lt *\/?\/?',line):
                ans=lt(n)
                with open(f"{name}.asm","a") as asm:
                        asm.write (f"{ans}")
                n+=1
            if equal:=re.search(r'^eq *\/?\/?',line):
                ans=eq(n)
                with open(f"{name}.asm","a") as asm:
                        asm.write (f"{ans}")
                n+=1
            if negg:=re.search(r'^neg *\/?\/?',line):
                ans=neg()
                with open(f"{name}.asm","a") as asm:
                        asm.write (f"{ans}")
            if Andd:=re.search(r'^and *\/?\/?',line):
                ans=And()
                with open(f"{name}.asm","a") as asm:
                        asm.write (f"{ans}")
            if orr:=re.search(r'^or *\/?\/?',line):
                ans=Or()
                with open(f"{name}.asm","a") as asm:
                        asm.write (f"{ans}")
            if Nott:=re.search(r'^not *\/?\/?',line):
                ans=Not()
                with open(f"{name}.asm","a") as asm:
                        asm.write (f"{ans}")
            if labell:=re.search(r'^label ([^\/{0,2}]+) *\/?\/?',line):
                ans=label(labell.group(1))
                with open(f"{name}.asm","a") as asm:
                    asm.write (f"{ans}")
            if gotoo:=re.search(r'^if-goto (.+) *\/?\/?',line):
                ans=goto(gotoo.group(1))
                with open(f"{name}.asm","a") as asm:
                    asm.write (f"{ans}")
                n+=1
            if gotoo_un:=re.search(r'^goto (.+) *\/?\/?',line):
                ans=goto_unco(gotoo_un.group(1))
                with open(f"{name}.asm","a") as asm:
                    asm.write (f"{ans}")
                n+=1
            if funccc:=re.search(r'^function ([^\/{0,2}]+) ([0-9]+) *\/?\/?',line):
                ans=fucn(funccc.group(1),funccc.group(2))
                with open(f"{name}.asm","a") as asm:
                    asm.write (f"{ans}")
            if ret:=re.search(r'^return *\/?\/?',line):
                ans=ret_func()
                with open(f"{name}.asm","a") as asm:
                    asm.write (f"{ans}")
            if call_fu:=re.search(r'^call ([^\/{0,2}]+) ([0-9]+) *\/?\/?',line):
                ans=call_func(call_fu.group(1),call_fu.group(2),n)
                with open(f"{name}.asm","a") as asm:
                    asm.write(f"{ans}")
                n+=1
print("Finished compiling,succsefully created a file...Good Luck Testing!!")
