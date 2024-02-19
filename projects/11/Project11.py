import re,sys
name='Math'
n=-1
file='''
class Math {
    static Array ram,heap,SizeHeap,baseScreen,TwotoI; 
    static Array charMaps;
    static int CurX,CurY;
    
    function void intiMath(){
        var int w,i;
        let w=1;
        let i=0;
        let TwotoI=Math.new(16);
        while(i<16){
            let TwotoI[i]=w;
            let w=w+w;
            let i=i+1;
        }
        return;
    }
    function int abs(int x) {
        if (x <0 ){
            return -x;
        }else{
            return x;
        }
    }
    function int Mod(int x,int y){
        var int div,rem;
        let div=0;
        let rem=x;
        while( (rem>y)|(rem=y)){
            let rem= rem -y;
            let div = div + 1;
        }
        return rem;
    }
    function int divide(int x, int y) {
        var int div,rem;
        let div=0;
        let rem=x;
        while( (rem>y)|(rem=y)){
            let rem= rem -y;
            let div = div + 1;
        }
        return div;
    }

   function int multiply(int x, int y) {
        var int i,sum,sign,shiftedX,sorry;
        
        let i = 0;
        let sum=0;
        let shiftedX = x;
        while(i<16){
            let sorry = (y) & (TwotoI[i]);
             if(~(sorry = 0)){
                let sum=sum+shiftedX;
            }
            let shiftedX=shiftedX+shiftedX;
            let i = i+1;
        }
        return sum;
    }
    function void init() {
        let ram = 0;
        let heap=0;
        let SizeHeap=14334;
        let heap[2048]=SizeHeap;
        let heap[2049]=2050;
        let baseScreen=16384;
        let CurX=0;
        let CurY=0;
        return;  
    }
    
    function int alloc(int size) {
        var int block,check,tempsize,haaland;
        // Implemtation for handling if size is either neg or zero;
        let check=2048;
        while (heap[check]<(size+2)){
            let check = heap[check+1]; 
        } 
        let tempsize=heap[check];
        let tempsize=tempsize-size-2;
        let haaland= heap[check+1];
        let heap[check]=0; // make the size 0
        let block = check+2;
        let heap[check+1]=block+size;
        let heap[block+size]=tempsize;
        if ((block+size+1) < haaland){
            let heap[block+size+1]=haaland;
            return block;
        }else{
            let heap[block+size+1]=block+size+2;
            return block;
    }
    }

    /** Returns the RAM value at the given address. */
    function int peek(int address) {
        return ram[address]; 
    } 
    /** Sets the RAM value at the given address to the given value. */
    function void poke(int address, int value) {
        let ram[address]= value; 
        return;
    }

    function void printChar(char c) {
        var Array map;
        var int address,i,y,Modx,value;
        let map = Math.getMap(c);
        let i=0;
        let y=CurY;
        while(i<11){
            let address = (32*y) + (CurX/16) + baseScreen;
            let Modx =  Math.Mod(CurX,16);
            let value = Math.peek(address); 
            if (Modx=0){ 
                do Math.poke(address,(value*256)+map[i]);
            }else{
                do Math.poke(address,value+(map[i]*256));
            } 
            let i = i+1;   
            let y = y+1;  
        } 
 
        if ((CurX+8)<505){
            let CurX=CurX+8;
        }else{
            //go to new line (Handles error for and if currY is less than 244)
            let CurX=0;
            let CurY=CurY+11;
        }
        return;
    }
    

function Array new(int size) {
        return Math.alloc(size);
    }

function void initMap() {
        var int i;
        let charMaps = Math.new(127);
        
        do Math.create(0,63,63,63,63,63,63,63,63,63,0,0);
        do Math.create(32,0,0,0,0,0,0,0,0,0,0,0);         
        do Math.create(33,12,30,30,30,12,12,0,12,12,0,0);  // !
        do Math.create(34,54,54,20,0,0,0,0,0,0,0,0);       // "
        do Math.create(35,0,18,18,63,18,18,63,18,18,0,0);  // #
        do Math.create(36,12,30,51,3,30,48,51,30,12,12,0); // $
        do Math.create(37,0,0,35,51,24,12,6,51,49,0,0);    // %
        do Math.create(38,12,30,30,12,54,27,27,27,54,0,0); // &
        do Math.create(39,12,12,6,0,0,0,0,0,0,0,0);        // '
        do Math.create(40,24,12,6,6,6,6,6,12,24,0,0);      // (
        do Math.create(41,6,12,24,24,24,24,24,12,6,0,0);   // )
        do Math.create(42,0,0,0,51,30,63,30,51,0,0,0);     // *
        do Math.create(43,0,0,0,12,12,63,12,12,0,0,0);     // +
        do Math.create(44,0,0,0,0,0,0,0,12,12,6,0);        // ,
        do Math.create(45,0,0,0,0,0,63,0,0,0,0,0);         // -
        do Math.create(46,0,0,0,0,0,0,0,12,12,0,0);        // .    
        do Math.create(47,0,0,32,48,24,12,6,3,1,0,0);      // /
        
        do Math.create(48,12,30,51,51,51,51,51,30,12,0,0); // 0
        do Math.create(49,12,14,15,12,12,12,12,12,63,0,0); // 1
        do Math.create(50,30,51,48,24,12,6,3,51,63,0,0);   // 2
        do Math.create(51,30,51,48,48,28,48,48,51,30,0,0); // 3
        do Math.create(52,16,24,28,26,25,63,24,24,60,0,0); // 4
        do Math.create(53,63,3,3,31,48,48,48,51,30,0,0);   // 5
        do Math.create(54,28,6,3,3,31,51,51,51,30,0,0);    // 6
        do Math.create(55,63,49,48,48,24,12,12,12,12,0,0); // 7
        do Math.create(56,30,51,51,51,30,51,51,51,30,0,0); // 8
        do Math.create(57,30,51,51,51,62,48,48,24,14,0,0); // 9
        
        do Math.create(58,0,0,12,12,0,0,12,12,0,0,0);      // :
        do Math.create(59,0,0,12,12,0,0,12,12,6,0,0);      // ;
        do Math.create(60,0,0,24,12,6,3,6,12,24,0,0);      // <
        do Math.create(61,0,0,0,63,0,0,63,0,0,0,0);        // =
        do Math.create(62,0,0,3,6,12,24,12,6,3,0,0);       // >
        do Math.create(64,30,51,51,59,59,59,27,3,30,0,0);  // @
        do Math.create(63,30,51,51,24,12,12,0,12,12,0,0);  // ?

        do Math.create(65,0,0,0,0,0,0,0,0,0,0,0);          // A ** TO BE FILLED **
        do Math.create(66,31,51,51,51,31,51,51,51,31,0,0); // B
        do Math.create(67,28,54,35,3,3,3,35,54,28,0,0);    // C
        do Math.create(68,15,27,51,51,51,51,51,27,15,0,0); // D
        do Math.create(69,63,51,35,11,15,11,35,51,63,0,0); // E
        do Math.create(70,63,51,35,11,15,11,3,3,3,0,0);    // F
        do Math.create(71,28,54,35,3,59,51,51,54,44,0,0);  // G
        do Math.create(72,51,51,51,51,63,51,51,51,51,0,0); // H
        do Math.create(73,30,12,12,12,12,12,12,12,30,0,0); // I
        do Math.create(74,60,24,24,24,24,24,27,27,14,0,0); // J
        do Math.create(75,51,51,51,27,15,27,51,51,51,0,0); // K
        do Math.create(76,3,3,3,3,3,3,35,51,63,0,0);       // L
        do Math.create(77,33,51,63,63,51,51,51,51,51,0,0); // M
        do Math.create(78,51,51,55,55,63,59,59,51,51,0,0); // N
        do Math.create(79,30,51,51,51,51,51,51,51,30,0,0); // O
        do Math.create(80,31,51,51,51,31,3,3,3,3,0,0);     // P
        do Math.create(81,30,51,51,51,51,51,63,59,30,48,0);// Q
        do Math.create(82,31,51,51,51,31,27,51,51,51,0,0); // R
        do Math.create(83,30,51,51,6,28,48,51,51,30,0,0);  // S
       
        do Math.create(85,51,51,51,51,51,51,51,51,30,0,0); // U
        do Math.create(86,51,51,51,51,51,30,30,12,12,0,0); // V
        do Math.create(87,51,51,51,51,51,63,63,63,18,0,0); // W
        do Math.create(88,51,51,30,30,12,30,30,51,51,0,0); // X
        do Math.create(89,51,51,51,51,30,12,12,12,30,0,0); // Y
        do Math.create(90,63,51,49,24,12,6,35,51,63,0,0);  // Z

        do Math.create(91,30,6,6,6,6,6,6,6,30,0,0);          // [
        do Math.create(92,0,0,1,3,6,12,24,48,32,0,0);        // 
        do Math.create(93,30,24,24,24,24,24,24,24,30,0,0);   // ]
        do Math.create(94,8,28,54,0,0,0,0,0,0,0,0);          // ^
        do Math.create(95,0,0,0,0,0,0,0,0,0,63,0);           // _
        do Math.create(96,6,12,24,0,0,0,0,0,0,0,0);          // `

        do Math.create(97,0,0,0,14,24,30,27,27,54,0,0);      // a
        do Math.create(98,3,3,3,15,27,51,51,51,30,0,0);      // b
        do Math.create(99,0,0,0,30,51,3,3,51,30,0,0);        // c
        do Math.create(100,48,48,48,60,54,51,51,51,30,0,0);  // d
        do Math.create(101,0,0,0,30,51,63,3,51,30,0,0);      // e
        do Math.create(102,28,54,38,6,15,6,6,6,15,0,0);      // f
        do Math.create(103,0,0,30,51,51,51,62,48,51,30,0);   // g
        do Math.create(104,3,3,3,27,55,51,51,51,51,0,0);     // h
        do Math.create(105,12,12,0,14,12,12,12,12,30,0,0);   // i
        do Math.create(106,48,48,0,56,48,48,48,48,51,30,0);  // j
        do Math.create(107,3,3,3,51,27,15,15,27,51,0,0);     // k
        do Math.create(108,14,12,12,12,12,12,12,12,30,0,0);  // l
        do Math.create(109,0,0,0,29,63,43,43,43,43,0,0);     // m
        do Math.create(110,0,0,0,29,51,51,51,51,51,0,0);     // n
        do Math.create(111,0,0,0,30,51,51,51,51,30,0,0);     // o
        do Math.create(112,0,0,0,30,51,51,51,31,3,3,0);      // p
        do Math.create(113,0,0,0,30,51,51,51,62,48,48,0);    // q
        do Math.create(114,0,0,0,29,55,51,3,3,7,0,0);        // r
        do Math.create(115,0,0,0,30,51,6,24,51,30,0,0);      // s
        do Math.create(116,4,6,6,15,6,6,6,54,28,0,0);        // t
        do Math.create(117,0,0,0,27,27,27,27,27,54,0,0);     // u
        do Math.create(118,0,0,0,51,51,51,51,30,12,0,0);     // v
        do Math.create(119,0,0,0,51,51,51,63,63,18,0,0);     // w
        do Math.create(120,0,0,0,51,30,12,12,30,51,0,0);     // x
        do Math.create(121,0,0,0,51,51,51,62,48,24,15,0);    // y
        do Math.create(122,0,0,0,63,27,12,6,51,63,0,0);      // z
        
        do Math.create(123,56,12,12,12,7,12,12,12,56,0,0);   // {
        do Math.create(124,12,12,12,12,12,12,12,12,12,0,0);  // |
        do Math.create(125,7,12,12,12,56,12,12,12,7,0,0);    // }
        do Math.create(126,38,45,25,0,0,0,0,0,0,0,0);        // ~

	return;
    }

    // Creates the character map array of the given character index, using the given values.
    function void create(int index, int a, int b, int c, int d, int e,
                         int f, int g, int h, int i, int j, int k) {
	var Array map;

	let map = Math.new(11);
        let charMaps[index] = map;

        let map[0] = a;
        let map[1] = b;
        let map[2] = c;
        let map[3] = d;
        let map[4] = e;
        let map[5] = f;
        let map[6] = g; 
        let map[7] = h;
        let map[8] = i;
        let map[9] = j;
        let map[10] = k; 

        return;
    }

    function Array getMap(char c) {
        if ((c < 32) | (c > 126)) {
            let c = 0;
        }
        return charMaps[c];
    }
    
}
'''
class Parser:
    def Parser(file):
        loki=[]
        symbol=["{","}",".","[","]","(",")",",",";","+","-","*","/","&","|","<",">","=","~"," ",'"']
        # Opens whatever jack file the user opened, and stores it in a VARIABLE called file
        """
        with open (f"debug","r") as file1:    
            for line in file1:
                file+=line
        """
        def removeM_line(subject):
            ans=''''''
            j=1
            for i in range (0,len(subject)):
                if j!=1:
                    j=j-1
                    continue
                if subject[i]=="/": 
                    if subject[i+1]=="*" and subject[i+2] == "*":
                        j=i+3
                        while True:
                            if subject[j]=="*" and subject[j+1] =="/":
                                j+=2
                                j=j-i
                                break
                            else:
                                j+=1
                                continue
                    else:
                        ans+=(subject[i])
                else:
                    ans+=(subject[i])
                    j=1
            return ans
        #Function to remove all comments starting and ending with /** (.+) */
        file=removeM_line(file)
        # Removes all comments starting with //
        pattern=re.compile(r'\/\/ *(.+)')
        file=pattern.sub("",file)
        # gives back a list of all lexical elements
        beka=0
        for line in file.splitlines():
            check=''
            line=line.strip()   
            if not line: 
                continue 
            if comment:= re.search(r'^\/{2}.*',line): 
                continue  
            for word in line:
                if beka !=0 or word=='"' or word == "'": 
                    if word =='"' or word=="'":
                        if check:
                            check+=word
                            loki.append(check) 
                            check=''
                        check+=word
                        if beka == 0:
                            beka=1
                        else:
                            beka=0
                            check=''
                        continue
                    else:
                        check+=word
                        continue
                if word not in symbol:
                    check+=word  
                else: 
                    if check:  
                        loki.append(check) 
                    if word!=' ':
                        loki.append(word)  
                    check=''  
            if check: 
                loki.append(check)
        return loki
token=Parser.Parser(file)
class lexical: 
    def TokenType(token):
        keyword=["class","constructor","function","method","field","static","var","int","char","boolean","void","true","false","null","this","let","do","if","else","while","return"]
        symbol=["{","}","(",")","[","]",".",",",";","+","-","*","/","&","|","<",">","=","~",]
        token=token.strip()
        if token in EXPERSSION.KeywordConstant: 
            return "KEYWORD_CONST" 
        elif token in EXPERSSION.unaryOp:
            return "SYMBOL_UN"
        elif token =='(':
            return 'SYMBOL_EXP' 
        elif num:=re.search(r'^([0-9]+)$',token):
            return "INT"
        elif str:=re.search(r'^[\']|[\"] *(.+)[\']|[\"]$',token):
            return "STR"
        else:
            return "zero"
class dictionaries:
    Class={}
    Sub={}
    counter_local=0
    counter_field=0
    counter_static=0
    counter_sub=0
    className=''
    classMethod=''
    if_label_handle=1
    else_label_handle=1
    while_if_label_handle=1
    while_else_label_handle=1
    Arthimetic={
        "+":"add",
        "-":"sub",
        "|":"or",
        "&":"and",
        ">":"gt",
        "<":"lt",
        "=":"eq"
    }
class Program_Structure:
    def CLASS(n):
        n+=1
        #lexical.KEYWORD(token[n])
        n+=1
        #lexical.IDENTIFIER(token[n])
        dictionaries.className+=token[n]
        n+=1
        #lexical.SYMBOL(token[n])
        n+=1 
        while token[n] == "static" or token[n]=="field":  
            n=Program_Structure.CLASS_VAR_DEC(n) 
        while token[n] == "constructor" or token[n] =="function" or token[n] =="method":
            if token[n] =="constructor":
                arg_counter=0
                #n=Program_Structure.SUBROUTINE_DEC(n)
                #lexical.KEYWORD(token[n]) 
                n+=1  
                n+=1
                #lexical.IDENTIFIER(token[n]) #subroutineName
                name_consturctor=token[n] 
                n+=1 
                #lexical.SYMBOL(token[n])
                n+=1
                #n=Program_Structure.PARAMETER_LIST_constructor(n)
                if token[n] != ")": 
                    arg_counter+=1
                    type=token[n]
                    n+=1  
                    dictionaries.Sub.update({token[n]:{"type":type,'kind':"argument",'index':dictionaries.counter_sub}})
                    dictionaries.counter_sub+=1
                    #lexical.IDENTIFIER(token[n]) 
                    n+=1
                    while token[n] == ",":
                        arg_counter+=1
                        #lexical.SYMBOL(token[n])
                        n+=1
                        type=token[n] 
                        n+=1 
                        dictionaries.Sub.update({token[n]:{"type":type,'kind':"argument",'index':dictionaries.counter_sub}})
                        dictionaries.counter_sub+=1
                        #lexical.IDENTIFIER(token[n]) #handled varname
                        n+=1
                #lexical.SYMBOL(token[n])
                l,m=0,n
                while token[m+2]=="var":
                    return_local,m=Program_Structure.check_local_inAdvance_Var(m+2)
                    l+=return_local  
                    m-=2
                with open(f"{name}.vm","a") as xml:
                    xml.write (f"function {dictionaries.className}.{name_consturctor} {l}\n")
                with open(f"{name}.vm","a") as xml:
                    xml.write (f"push constant {dictionaries.counter_field-1}\ncall Memory.alloc 1\npop pointer 0\n")
                #lexical.SYMBOL(token[n])
                n+=1
                dictionaries.counter_sub=0
                n=Program_Structure.SUBROUTINE_BODY(n) 
                dictionaries.Sub.clear()
                dictionaries.counter_sub=0
            elif token[n] =='method':
                checkifvoid=0
                arg_counter=0 
                #n=Program_Structure.SUBROUTINE_DEC(n)
                #lexical.KEYWORD(token[n]) 
                n+=1  
                if token[n]=='void':
                    checkifvoid=1
                n+=1 
                #lexical.IDENTIFIER(token[n]) #subroutineName 
                name_method=token[n] 
                n+=1 
                #lexical.SYMBOL(token[n])
                n+=1
                #n=Program_Structure.PARAMETER_LIST_method(n)
                # update the first method in the table
                dictionaries.Sub.update({'this':{"type":dictionaries.className,'kind':"argument",'index':0}})
                dictionaries.counter_sub+=1
                if token[n] != ")": 
                    arg_counter+=1 
                    type=token[n]  
                    n+=1  
                    dictionaries.Sub.update({token[n]:{"type":type,'kind':"argument",'index':dictionaries.counter_sub}})
                    dictionaries.counter_sub+=1  
                    #lexical.IDENTIFIER(token[n])   
                    n+=1  
                    while token[n] == ",": 
                        arg_counter+=1
                        #lexical.SYMBOL(token[n])
                        n+=1
                        type=token[n] 
                        n+=1 
                        dictionaries.Sub.update({token[n]:{"type":type,'kind':"argument",'index':dictionaries.counter_sub}})
                        dictionaries.counter_sub+=1
                        #lexical.IDENTIFIER(token[n]) #handled varname
                        n+=1
                    l,m=0,n
                    while token[m+2]=="var":
                        return_local,m=Program_Structure.check_local_inAdvance_Var(m+2)
                        l+=return_local 
                        m-=2     
                    with open(f"{name}.vm","a") as xml:
                        xml.write (f"function {dictionaries.className}.{name_method} {l}\n")
                    with open(f"{name}.vm","a") as xml:
                        xml.write (f"push argument 0\npop pointer 0\n")
                else:
                    dictionaries.Sub.update({"this":{"type":dictionaries.className,'kind':"argument",'index':dictionaries.counter_sub}})
                    dictionaries.counter_sub+=1
                    checkifvoid=1
                    l,m=0,n
                    while token[m+2]=="var":
                        return_local,m=Program_Structure.check_local_inAdvance_Var(m+2)
                        l+=return_local 
                        m-=2   
                    with open(f"{name}.vm","a") as xml:
                        xml.write (f"function {dictionaries.className}.{name_method} {l}\n")
                    with open(f"{name}.vm","a") as xml:
                        xml.write (f"push argument 0\npop pointer 0\n")
                #lexical.SYMBOL(token[n])
                n+=1
                dictionaries.counter_sub=0
                n=Program_Structure.SUBROUTINE_BODY(n)
                dictionaries.Sub.clear()
                dictionaries.counter_sub=0
                if checkifvoid ==1: 
                    with open(f"{name}.vm","a") as xml: 
                        xml.write (f"pop temp 0\n") 
            elif token[n] =='function':
                arg_counter=0
                #lexical.KEYWORD(token[n]) 
                n+=1
                #type_func=token[n]  
                n+=1
                #lexical.IDENTIFIER(token[n]) #subroutineName 
                name_fun=token[n]
                n+=1 
                #lexical.SYMBOL(token[n])
                n+=1
                if token[n] != ")": 
                    arg_counter+=1
                    type=token[n]
                    n+=1  
                    dictionaries.Sub.update({token[n]:{"type":type,'kind':"argument",'index':dictionaries.counter_sub}})
                    dictionaries.counter_sub+=1
                    #lexical.IDENTIFIER(token[n]) 
                    n+=1
                    while token[n] == ",":
                        arg_counter+=1
                        #lexical.SYMBOL(token[n])
                        n+=1
                        type=token[n] 
                        n+=1 
                        dictionaries.Sub.update({token[n]:{"type":type,'kind':"argument",'index':dictionaries.counter_sub}})
                        dictionaries.counter_sub+=1
                        #lexical.IDENTIFIER(token[n]) #handled varname
                        n+=1
                l,m=0,n
                while token[m+2]=="var":
                    return_local,m=Program_Structure.check_local_inAdvance_Var(m+2)
                    l+=return_local 
                    m-=2
                with open(f"{name}.vm","a") as xml:
                    xml.write (f"function {dictionaries.className}.{name_fun} {l}\n")
                n+=1
                dictionaries.counter_sub=0
                n=Program_Structure.SUBROUTINE_BODY(n)  
                dictionaries.Sub.clear()  
                dictionaries.counter_sub=0              
            else:
                print("Not a method,function or constructor!")     
        #lexical.SYMBOL(token[n])
        n+=1 
        dictionaries.Class.clear() 
        dictionaries.counter_field=0
        dictionaries.counter_static=0 
        dictionaries.counter_sub=0
        dictionaries.className=''
        try: 
            while token[n] == "class":  
                n=Program_Structure.CLASS(n-1)
        except IndexError: 
            return n 
        return n
    def CLASS_VAR_DEC(n):
        kind=token[n]
        #lexical.KEYWORD(token[n]) 
        n+=1
        #n=Program_Structure.TYPE(n)
        type=token[n]
        n+=1
        if kind =="static":
            #lexical.IDENTIFIER(token[n]) #handled varname
            dictionaries.Class.update({token[n]:{"type":type,'kind':kind,'index':dictionaries.counter_static}})
            dictionaries.counter_static+=1
            n+=1
            while token[n] == ",":
                #lexical.SYMBOL(token[n])
                n+=1
                #lexical.IDENTIFIER(token[n]) #handled varname
                dictionaries.Class.update({token[n]:{"type":type,'kind':kind,'index':dictionaries.counter_static}})
                dictionaries.counter_static+=1
                n+=1 
            #lexical.SYMBOL(token[n]) 
            n+=1
            #dictionaries.counter_field,dictionaries.counter_static=0,0
            return n
        elif kind =='field':
            #lexical.IDENTIFIER(token[n]) #handled varname
            dictionaries.Class.update({token[n]:{"type":type,'kind':'this','index':dictionaries.counter_field}})
            dictionaries.counter_field+=1
            n+=1
            while token[n] == ",":
                #lexical.SYMBOL(token[n])
                n+=1
                #lexical.IDENTIFIER(token[n]) #handled varname
                dictionaries.Class.update({token[n]:{"type":type,'kind':'this','index':dictionaries.counter_field}})
                dictionaries.counter_field+=1
                n+=1 
            #lexical.SYMBOL(token[n]) 
            n+=1
            #dictionaries.counter_field,dictionaries.counter_static=0,0
            return n
        else:
            print("Neither a field or static var!")
    def SUBROUTINE_BODY(n):
        #lexical.SYMBOL(token[n])
        n+=1
        while token[n] == "var": 
            n=Program_Structure.VAR_DEC(n) 
        n=STATEMENTSCLASS.statements(n)  
        #lexical.SYMBOL(token[n]) 
        n+=1 
        return n
    def VAR_DEC(n): 
        #lexical.KEYWORD(token[n])
        n+=1
        type=token[n]
        n+=1 
        dictionaries.Sub.update({token[n]:{"type":type,'kind':"local",'index':dictionaries.counter_sub}})
        dictionaries.counter_sub+=1
        #lexical.IDENTIFIER(token[n])
        n+=1
        while token[n] == ",":
            #lexical.SYMBOL(token[n])
            n+=1
            #type=token[n]
            #n+=1 
            dictionaries.Sub.update({token[n]:{"type":type,'kind':"local",'index':dictionaries.counter_sub}})
            dictionaries.counter_sub+=1
            #lexical.IDENTIFIER(token[n]) #handled varname
            n+=1 
        #lexical.SYMBOL(token[n]) 
        n+=1 
        return n       
    def check_local_inAdvance_Var(n):
        locals=0
        #lexical.KEYWORD(token[n])
        n+=1
        #type=token[n]
        n+=1 
        #dictionaries.Sub.update({token[n]:{"type":type,'kind':"local",'index':dictionaries.counter_sub}})
        locals+=1
        #lexical.IDENTIFIER(token[n])
        n+=1
        while token[n] == ",":
            #lexical.SYMBOL(token[n])
            n+=1
            #type=token[n]
            #n+=1 
            #dictionaries.Sub.update({token[n]:{"type":type,'kind':"local",'index':dictionaries.counter_sub}})
            locals+=1
            #lexical.IDENTIFIER(token[n]) #handled varname
            n+=1 
        #lexical.SYMBOL(token[n]) 
        n+=1 
        return locals,n       
class STATEMENTSCLASS:
    def statements(n):
        while token[n]=='let' or token[n]=='do' or token[n]=='if' or token[n]=='return'or token[n]=='while':
            n=STATEMENTSCLASS.statement(n)
        return n 
    def statement(n):
        if token[n] == "while":
            n=STATEMENTSCLASS.whileStatement(n)
        elif token[n]=='let':
            n=STATEMENTSCLASS.LetStatement(n)
        elif token[n]== 'do':
            n=STATEMENTSCLASS.DoStatement(n)
        elif token[n]=='return':
            n=STATEMENTSCLASS.ReturnStatement(n)
        elif token[n]=='if':
            n=STATEMENTSCLASS.IFstatement(n)
        else:
            print('problem in statment....token not if,while,do or return')
        return n
    def whileStatement(n):
        with open(f"{name}.vm","a") as xml:
            xml.write (f"label while({dictionaries.while_if_label_handle})\n")
        dictionaries.while_if_label_handle+=1
        #lexical.KEYWORD(token[n])
        n+=1
        #lexical.SYMBOL(token[n])
        n+=1
        n=EXPERSSION.expression(n)
        #lexical.SYMBOL(token[n])
        n+=1
        with open(f"{name}.vm","a") as xml:
            xml.write (f"not\nif-goto whileif({dictionaries.while_else_label_handle})\n")
        dictionaries.while_else_label_handle+=1
        #lexical.SYMBOL(token[n])
        n+=1
        ifwhile,elsewhile= dictionaries.while_if_label_handle,dictionaries.while_else_label_handle
        n=STATEMENTSCLASS.statements(n)
        #lexical.SYMBOL(token[n])
        n+=1
        with open(f"{name}.vm","a") as xml:
            xml.write (f"goto while({ifwhile-1})\n")
        with open(f"{name}.vm","a") as xml:
            xml.write (f"label whileif({elsewhile-1})\n")
        return n
    def DoStatement(n):
        #lexical.KEYWORD(token[n])
        n+=1
        n=EXPERSSION.SubrotineCall(n) 
        #lexical.SYMBOL(token[n]) 
        n+=1
        with open(f"{name}.vm","a") as xml:
            xml.write (f"pop temp 0\n")
        return n
    def ReturnStatement(n):
        #lexical.KEYWORD(token[n])
        n+=1
        if token[n] !=';': 
            n=EXPERSSION.expression(n)
            with open(f"{name}.vm","a") as xml:
                xml.write (f"return\n\n") 
            #lexical.SYMBOL(token[n]) 
            n+=1 
            return n 
        #lexical.SYMBOL(token[n]) 
        n+=1
        with open(f"{name}.vm","a") as xml:
            xml.write (f"push constant 0\nreturn\n\n")
        return n
    def IFstatement(n): 
        #lexical.KEYWORD(token[n])
        n+=1
        #lexical.SYMBOL(token[n])
        n+=1 
        n=EXPERSSION.expression(n)
        #lexical.SYMBOL(token[n]) 
        n+=1
        with open(f"{name}.vm","a") as xml: 
            xml.write (f"not\nif-goto if({dictionaries.if_label_handle})\n") #l1
        dictionaries.if_label_handle+=1 # if 1 
        #lexical.SYMBOL(token[n])
        n+=1 
        iff=dictionaries.if_label_handle
        n=STATEMENTSCLASS.statements(n)  
        #lexical.SYMBOL(token[n]) 
        n+=1 
        with open(f"{name}.vm","a") as xml:   
            xml.write (f"goto else({dictionaries.else_label_handle})\n") #l2  
        dictionaries.else_label_handle+=1 # goto else 2 
        elsee=dictionaries.else_label_handle
        with open(f"{name}.vm","a") as xml:  
            xml.write (f"label if({iff-1})\n") #l1 
        if token[n] == 'else':  
            #lexical.KEYWORD(token[n]) 
            n+=1  
            #lexical.SYMBOL(token[n])  
            n+=1  
            n=STATEMENTSCLASS.statements(n) 
            #lexical.SYMBOL(token[n]) 
            n+=1
            with open(f"{name}.vm","a") as xml:
                xml.write (f"label else({elsee-1})\n")     #l2 
            return n   
        with open(f"{name}.vm","a") as xml:
            xml.write (f"label else({elsee-1})\n") #l2
        return n
    def LetStatement(n):
        #lexical.KEYWORD(token[n])
        n+=1
        #lexical.IDENTIFIER(token[n]) #handled varname
        if token[n] in dictionaries.Sub:
            var_name=dictionaries.Sub[token[n]]["kind"]
            var_index=dictionaries.Sub[token[n]]["index"]
        elif token[n] in dictionaries.Class:
            var_name=dictionaries.Class[token[n]]["kind"]
            var_index=dictionaries.Class[token[n]]["index"]
        else:
            print("problem")
        n+=1 
        if token[n] != "=":
            #lexical.SYMBOL(token[n])
            n+=1
            with open(f"{name}.vm","a") as xml:
                xml.write (f"push {var_name} {var_index}\n")
            n=EXPERSSION.expression(n)
            #lexical.SYMBOL(token[n]) ']'
            n+=1
            #lexical.SYMBOL(token[n]) '='
            n+=1 
            with open(f"{name}.vm","a") as xml:
                xml.write (f"add\n")
            n=EXPERSSION.expression(n)
            #lexical.SYMBOL(token[n])  ;
            n+=1
            with open(f"{name}.vm","a") as xml:
                xml.write (f"pop temp 0\npop pointer 1\npush temp 0\npop that 0\n")
            return n
        #lexical.SYMBOL(token[n]) '='
        n+=1
        n=EXPERSSION.expression(n) 
        var_for_string_assignment=0
        if token[n-1][0]=='"' or token[n-1][0] == "'":
            for i in range(1,len(token[n-1])-1):
                var_for_string_assignment+=1
            with open(f"{name}.vm","a") as xml: 
                    xml.write (f"push constant {var_for_string_assignment}\ncall Array.new 1\npop {var_name} {var_index}\n")
            for i in range(1,len(token[n-1])-1):
                with open(f"{name}.vm","a") as xml: 
                    xml.write (f"push {var_name} {var_index}\npush constant {ord(token[n-1][i])}\ncall String.appendChar 2\npop {var_name} {var_index}\n")
            #lexical.SYMBOL(token[n]); 
            n+=1 
            return n 
        #lexical.SYMBOL(token[n]);  
        n+=1 
        with open(f"{name}.vm","a") as xml: 
            xml.write (f"pop {var_name} {var_index}\n")  
        return n
class EXPERSSION:
    op=["+","-","*","/","&","|","<",">","="] 
    unaryOp=['-','~']
    KeywordConstant=['true','false','null','this']
    def expressionList(n):
        x=0 
        if token[n] !=')':
            n=EXPERSSION.expression(n)
            x+=1
            while token[n] ==',':
                #lexical.SYMBOL(token[n]) 
                n+=1
                n=EXPERSSION.expression(n)
                x+=1
        return n,x
    def expression(n):
        n=EXPERSSION.term(n) 
        while token[n] in EXPERSSION.op: 
            #if token[n+1] =="(":
            #    temp=dictionaries.Arthimetic[token[n]]
            #    n=EXPERSSION.expression(n+2) 
            #    #symbol
            #    n+=1
            #    with open(f"{name}.vm","a") as xml:
            #        xml.write (f"{temp}\n")    
            #    continue 
            if token[n]=='*':
                n=EXPERSSION.term(n+1) 
                with open(f"{name}.vm","a") as xml:
                    xml.write (f"call Math.multiply 2\n")
                continue 
            if token[n]=='/':
                n=EXPERSSION.term(n+1)
                with open(f"{name}.vm","a") as xml:
                    xml.write (f"call Math.divide 2\n")
                continue
            #lexical.SYMBOL(token[n])
            temp=dictionaries.Arthimetic[token[n]] 
            n+=1 
            n=EXPERSSION.term(n) 
            with open(f"{name}.vm","a") as xml:
                xml.write (f"{temp}\n")    
        return n    
    def SubrotineCall(n):    
        n+=1
        if token[n]=='(':
            func=''
            n=n-1 
            #lexical.IDENTIFIER(token[n])#subroutineName
            func+=token[n]
            n+=1
            #lexical.SYMBOL(token[n])
            n+=1
            ans=EXPERSSION.expressionList(n)
            n=ans[0]
            #lexical.SYMBOL(token[n])
            n+=1
            with open(f"{name}.vm","a") as xml:
                xml.write(f"call {func} {ans[1]}\n")  
        elif token[n] =='.':
            if token[n-1] in dictionaries.Sub or token[n-1] in dictionaries.Class:
                if token[n-1] in dictionaries.Sub:
                    var_name=dictionaries.Sub[token[n-1]]["kind"]
                    var_index=dictionaries.Sub[token[n-1]]["index"]
                    var_type=dictionaries.Sub[token[n-1]]["type"]
                elif token[n] in dictionaries.Class:
                    var_name=dictionaries.Class[token[n-1]]["kind"]
                    var_index=dictionaries.Class[token[n-1]]["index"]
                    var_type=dictionaries.Class[token[n-1]]["type"]
                elif token[n-1]==dictionaries.className: # Handles if the variable not in both dic
                    print(f"var: {token[n]} is a className") 
                else: 
                    print("Problem")
                n+=1# method name 
                MethodName=token[n]
                #symbol
                n+=1
                #symbol
                n+=1
                with open(f"{name}.vm","a") as xml:
                    xml.write(f"push {var_name} {var_index}\n")
                ans=EXPERSSION.expressionList(n)   
                n=ans[0] 
                #lexical.SYMBOL(token[n])  
                n+=1   
                with open(f"{name}.vm","a") as xml:    
                    xml.write(f"call {var_type}.{MethodName} {ans[1]+1}\n")  
                return n
            func=''
            n=n-1
            #lexical.IDENTIFIER(token[n])#subroutineName
            func+=token[n] 
            n+=1
            #lexical.SYMBOL(token[n])
            func+=token[n]
            n+=1
            #lexical.IDENTIFIER(token[n])#subroutineName
            func+=token[n]
            n+=1 
            #lexical.SYMBOL(token[n])  
            n+=1
            ans=EXPERSSION.expressionList(n)   
            n=ans[0]  
            #lexical.SYMBOL(token[n])  
            n+=1   
            with open(f"{name}.vm","a") as xml:    
                xml.write (f"call {func} {ans[1]}\n")  
        else:
            print("Probelm at EXPRESSION.(SubrotineCall)")
        return n
    def term(n):
        x=lexical.TokenType(token[n])
        if x =='INT':
            with open(f"{name}.vm","a") as xml:
                xml.write (f"push constant {token[n]}\n")
            n+=1 
        elif x =='STR':
            n+=1
        elif x=='KEYWORD_CONST': 
            #lexical.KEYWORD(token[n])
            if token[n]=="true":
                with open(f"{name}.vm","a") as xml:
                    xml.write (f"push constant 1\npush neg\n")
            elif token[n]=="false":
                with open(f"{name}.vm","a") as xml:
                    xml.write (f"push constant 0\n")
            elif token[n]=="null":
                with open(f"{name}.vm","a") as xml:
                    xml.write (f"push constant 0\n")
            elif token[n]=='this':
                with open(f"{name}.vm","a") as xml:
                    xml.write (f"push pointer 0\n")
            else:
                print("not a this,null,true or false!")
            n+=1
        elif x=='SYMBOL_EXP':   
            #lexical.SYMBOL(token[n])   
            n+=1  
            n=EXPERSSION.expression(n) 
            #lexical.SYMBOL(token[n])  
            n+=1
        elif x=='SYMBOL_UN':
            #lexical.KEYWORD(token[n])
            if token[n]=="-":
                temp="neg"
            elif token[n]=="~":
                temp="not"
            else:
                print("problem")
            n+=1
            n=EXPERSSION.term(n)
            with open(f"{name}.vm","a") as xml:
                xml.write (f"{temp}\n")  
        elif x=='zero': 
            n+=1
            if token[n]=='[': # for array
                n=n-1 
                #lexical.IDENTIFIER(token[n]) 
                if token[n] in dictionaries.Sub:
                    var_name=dictionaries.Sub[token[n]]["kind"]
                    var_index=dictionaries.Sub[token[n]]["index"] 
                elif token[n] in dictionaries.Class:  
                    var_name=dictionaries.Class[token[n]]["kind"] 
                    var_index=dictionaries.Class[token[n]]["index"]  
                elif token[n]==dictionaries.className: # Handles if the variable not in both dic
                    print(f"var: {token[n]} is a className") 
                else: 
                    print("Problem") 
                with open(f"{name}.vm","a") as xml:  
                    xml.write (f"push {var_name} {var_index}\n")   
                n+=1    
                #lexical.SYMBOL(token[n])   
                n+=1  
                n=EXPERSSION.expression(n) 
                with open(f"{name}.vm","a") as xml:
                    xml.write (f"add\npop pointer 1\npush that 0\n")  
                #lexical.SYMBOL(token[n])  
                n+=1 
            elif token[n-1] =='(': # for expression
                n=n-1
                n=EXPERSSION.expression(n)
                #lexical.SYMBOL(token[n])
                n+=1
            elif token[n]=='(' or token [n]=='.': # for subrotine call
                n=n-1 
                n=EXPERSSION.SubrotineCall(n) 
            else:
                n=n-1
                #lexical.IDENTIFIER(token[n]) # Variable name
                if token[n] in dictionaries.Sub:
                    var_name=dictionaries.Sub[token[n]]["kind"]
                    var_index=dictionaries.Sub[token[n]]["index"]
                elif token[n] in dictionaries.Class:
                    var_name=dictionaries.Class[token[n]]["kind"]
                    var_index=dictionaries.Class[token[n]]["index"]
                elif token[n]==dictionaries.className: # Handles if the variable not in both dic
                    print(f"var: {token[n]} is a className") 
                else: 
                    print("Problem")
                with open(f"{name}.vm","a") as xml:
                    xml.write (f"push {var_name} {var_index}\n")
                n+=1
        else:
            print("problem at Tokentype(not returning anything)")
        return n
Program_Structure.CLASS(n)
print("Done.....Good Luck Comparing!!!")
