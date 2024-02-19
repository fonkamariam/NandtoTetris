import re,math,sys,math
def DectoBin(n):
    def helper(n,ans):
        if n==1:
            ans[15]=1
            return ans
        if n == 0:
            return ans
        x=math.log(n,2) 
        x=int(x)
        n=n-pow(2,x)
        ans[15-x]= 1
        return helper(n,ans)
    ans=[0]*16 
    ans=helper(n,ans)
    ans=''.join(map(str, ans))
    return ans

dic_symbol={
    "SCREEN":16384,
    "KBD":24576,
    "SP":0,
    "LCL":1,
    "ARG":2,
    "THIS":3,
    "THAT":4
}
dest={
    "null":"000",
    "M":"001",
    "D":"010",
    "MD":"011",
    "A":"100",
    "AM":"101",
    "AD":"110",
    "AMD":"111"
}
jump={
    "null":"000",
    "JGT":"001",
    "JEQ":"010",
    "JGE":"011",
    "JLT":"100",
    "JNE":"101",
    "JLE":"110",
    "JMP":"111"
}
comp_a0={
    "0":"101010",
    "1":"111111",
    "-1":"111010",
    "D":"001100",
    "A":"110000",
    "!D":"001101",
    "!A":"110001",
    "-D":"001111",
    "-A":"110011",
    "D+1":"011111",
    "A+1":"110111",
    "D-1":"001110",
    "A-1":"110010",
    "D+A":"000010",
    "D-A":"010011",
    "A-D":"000111",
    "D&A":"000000",
    "D|A":"010101"
}
comp_a1={
    "M":comp_a0["A"],
    "!M":comp_a0["!A"],
    "-M":comp_a0["-A"],
    "M+1":comp_a0["A+1"],
    "M-1":comp_a0["A-1"],
    "D+M":comp_a0["D+A"],
    "D-M":comp_a0["D-A"],
    "M-D":comp_a0["A-D"],
    "D&M":comp_a0["D&A"],
    "D|M":comp_a0["D|A"]
}
var=16
pc=-1
if sysre:=re.search(r'^(.+)\.asm$',sys.argv[1]):
    name=sysre.group(1)

with open (f"{sys.argv[1]}","r") as file:
    for line in file:
        line=line.strip()
        if not line:
            continue
        if comment:= re.search(r'^\/{2}.*',line):
            continue
        # Assuming there is no double loop
        if Loop:= re.search(r'^\((.+)\)$',line):
            pc+=1
            sym=Loop.group(1)        
            dic_symbol.update({sym:(pc)}) # Don't print or inc the pc counter
            pc=pc-1
        else:
            pc+=1
    pc=0 
print("First pass for any labels")
with open (f"{sys.argv[1]}","r") as file:
    for line in file:
        line=line.strip()
        if not line:
            continue
        if comment:= re.search(r'^\/{2}.*',line):
            continue
        if A_ins_num:= re.search(r'^\s*\@[R]?([0-9]+) *\/?\/?',line):
            #it is an address
            with open(f"{name}.hack","a") as hack:
                hack.write (f"{ DectoBin(int(A_ins_num.group(1)))}\n")            
            pc+=1
        elif A_ins_sym:= re.search(r'^\@([A-Za-z0-9_\.\$]+)',line):
            # either a symbol or loop
            sym=A_ins_sym.group(1)
            sym=sym.strip()
            if sym in dic_symbol:
                # it is a symbol
                with open(f"{name}.hack","a") as hack:
                    hack.write (f"{DectoBin(int(dic_symbol[sym]))}\n")  
                #print(dic_symbol[sym])
            else:
                dic_symbol.update({sym:var})
                with open(f"{name}.hack","a") as hack:
                    hack.write (f"{DectoBin(int(var))}\n")  
                var+=1
                #print out
            pc+=1
    # for C instruction   
        elif C_ins_equal:= re.search(r'^(D|M|MD|A|AM|AD|AMD)(\=)(!?-?[A-Z0-9])(\-|\+|\&|\|)?(M|D|A|1)? *\/?\/?',line):
            sym=C_ins_equal
            A="" 
            ans="111"
            A+=sym.group(3) # comp M
            if sym.group(4):
                A+=sym.group(4) #comp  + - \ &
            if sym.group(5): # comp A   
                A+=sym.group(5)
            A=A.strip()
            if A in comp_a0:
                ans+="0"
                ans+=comp_a0[A] 
            elif A in comp_a1:  
                ans+="1"
                ans+=comp_a1[A]
            else:
                continue
            ans+=dest[sym.group(1)]
            ans+="000"
            with open(f"{name}.hack","a") as hack:
                hack.write (f"{ans}\n")
            pc+=1 
        elif C_ins_jump:= re.search(r'(.+)(?:\;)(JGT|JEQ|JGE|JLT|JNE|JLE|JMP)',line):
            ans="111"
            sym=C_ins_jump
            if sym.group(1) in comp_a0:
                ans+="0"
                ans+=comp_a0[sym.group(1)]
                ans+="000"
            elif sym.group(1) in comp_a1:
                ans+="1"
                ans+=comp_a1[sym.group(1)]
                ans+="000"
            else: 
                continue
            ans+=jump[sym.group(2)]
            with open(f"{name}.hack","a") as hack: 
                hack.write (f"{ans}\n")
            pc+=1
        else:
            continue
                
print("Finished Converting!....Good Luck Testing")
