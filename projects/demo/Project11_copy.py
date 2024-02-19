import re,sys
name='Screen'
n=-1
file='''
class Screen {
    static int baseScreen,setColorVAR;
    /** Initializes the Screen. */
    function void init() { 
        let baseScreen= 16384;
        let setColorVAR=1;
        return;
    }


    function void OptLine(int x1, int y1, int x2, int y2) {
        var int modBit,divAdd,divAdd1,modBit1,i,diffX,baseAddress,baseAddress1,baseAddress2;
        
        let baseAddress=16384+(32*y1);
        let diffX=x2-x1;
        let i =0;
        if (diffX=0){return;}
    
        if (diffX<16){
            while(i<diffX){
                do Screen.drawPixel(x1-1+i,y1);  
                let i=i+1; 
            } 
            return; 
        }
    
        let divAdd=x1/16;
        let modBit= Math.Mod(x1,16); 
        let divAdd1=x2/16;
        let modBit1=Math.Mod(x2,16);
        if (modBit=0){
            let baseAddress1=baseAddress+divAdd; 
        }else{ 
            let i=0;
            while(i<modBit){
               
                do Screen.drawPixel(x1+i,y1); 
                let i=i+1;
            }
            
            let baseAddress1=baseAddress+divAdd+1;
        }
        // second Half
        if (modBit1=0){
            let baseAddress2=baseAddress+divAdd1;
            }else{
                let i=0;
                while(i<(modBit1+1)){
                    do Screen.drawPixel(x2-i,y1);
                    let i=i+1;
                }
                let baseAddress2=baseAddress+divAdd1;
            }
        
        while (baseAddress2 > baseAddress1){
            do Memory.poke(baseAddress1,-setColorVAR);
            let baseAddress1=baseAddress1 + 1;
        }
        return; 
    }


    /** Erases the entire screen. */
    function void clearScreen() {
        var int i;
        let i = 0;
        while (i<8191){
            do Memory.poke(i+baseScreen,0);
            let i=i+1;
        }
        return;
    }

    /** Sets the current color, to be used for all subsequent drawXXX commands.
     *  Black is represented by true, white by false. */
    function void setColor(boolean b) {
        // default is True(1);
        if (b=true){
            let setColorVAR = 1;
            return;
        }else{
            let setColorVAR = 0;
            return;
        }
    }


    /** Draws the (x,y) pixel, using the current color. */
    function void drawPixel(int x, int y) {
        var int address,value,bitt,revelation;
        let address = (32*y) + (x/16) + baseScreen;
        let value= Memory.peek(address);
        let bitt = Math.Mod(x,16);
        let revelation=Math.bit(value,bitt); // 1 - off / 0-on
        if (~(revelation = setColorVAR)){return;}
        if ((revelation & setColorVAR)=0){
            let value= value - Math.getPower(bitt);
        }else{
            let value= value + Math.getPower(bitt);
        }    
        do Memory.poke(address,value);
        return;
}

    /** Draws a line from pixel (x1,y1) to pixel (x2,y2), using the current color. */
    function void drawLine(int x1, int y1, int x2, int y2) {
            var int diff,diffY,diffX,a,b;
            let diffX = x2-x1;
            let diffY = y2-y1;
            let diff = 0;
            let a=0;
            let b=0;
        // handling Vertical line Case 1/6
            if(diffX=0){    
                if ( diffY > 0 ){
                    while ((diffY+1)>0){
                        do Screen.drawPixel(x1,y1);
                        let y1= y1+1;
                        let diffY= diffY-1;
                    }
                }else{
                    let diffY = diffY * -1; 
                    while ((diffY+1)>0){
                        do Screen.drawPixel(x1,y1);
                        let y1= y1-1;
                        let diffY= diffY-1;   
                    }
                }
                return; 
                }
        // handling Horizontal line Case 2/6    
            if (diffY=0){
                if ( diffX > 0 ){
                    while ((diffX+1)>0){
                        do Screen.drawPixel(x1,y1);
                        let x1= x1+1;
                        let diffX= diffX-1; 
                    }
                return;
                    
                }else{ 
                    let diffX = -diffX;
                    while ((diffX+1)>0){
                        do Screen.drawPixel(x1,y1);
                        let x1= x1-1;
                        let diffX= diffX-1; 
                    }
                return;
                }}
        // handling South East Case 3/6
            if ((x1<x2)&(y1<y2)){
                while (((a<diffX)|(a=diffX))&((b<diffY)|(b=diffY))){
                do Screen.drawPixel(x1+a,y1+b);
                    if (diff<0){
                        let a = a +1;
                        let diff=diff+diffY;
                    }else{
                        let b = b+1;
                        let diff=diff-diffX;
                    }   
                }return;}
        // handling South West line Case 4/6
            if ((x1>x2)&(y1<y2)){
                let diffX=x1-x2;
                while (((a<diffX)|(a=diffX))&((b<diffY)|(b=diffY))){
                do Screen.drawPixel(x1+a,y1+b);
                    if (diff<0){
                        let a = a - 1;
                        let diff=diff+diffY; 
                    }else{ 
                        let b = b + 1; 
                        let diff=diff-diffX;
                    }   
                }return;}
    
        // handling North East line Case 5/6
            if ((x1<x2)&(y1>y2)){
                let diffY=y1-y2;
                while (((a<diffX)|(a=diffX))&((b<diffY)|(b=diffY))){
                do Screen.drawPixel(x1+a,y1+b);
                    if (diff<0){
                        let a = a + 1;
                        let diff=diff+diffY; 
                    }else{ 
                        let b = b - 1; 
                        let diff=diff-diffX;
                    }   
                }return;}
    
        // handling North West line Case 6/6
            if ((x1>x2)&(y1>y2)){
                let diffY=y1-y2;
                let diffX=x1-x2;
                while (((a<diffX)|(a=diffX))&((b<diffY)|(b=diffY))){
                do Screen.drawPixel(x1-a,y1-b);
                    if (diff<0){
                        let a = a + 1;
                        let diff=diff+diffY; 
                    }else{ 
                        let b = b + 1; 
                        let diff=diff-diffX;
                    }   
                }return;}
    }
    /** Draws a filled rectangle whose top left corner is (x1, y1)
     * and bottom right corner is (x2,y2), using the current color. */
    function void drawRectangle(int x1, int y1, int x2, int y2) {
        var int diffY,diffX;
        
        let diffX = x2-x1;
        let diffY = y2-y1;
        
        while((diffY+1)>0){
            do Screen.drawLine(x1,y1,x2,y1);
            let y1=y1+1;
            let diffY=diffY-1;
        }
        return;
    }

    /** Draws a filled circle of radius r<=181 around (x,y), using the current color. */
    function void drawCircle(int x, int y, int r) {
        var int dy,loop,temp;
        let dy=-r; 
        let loop=r+r;
        while (loop>0){
            let temp= Math.sqrt((r*r)-(dy*dy));
            do Screen.drawLine((x-temp),(y+dy),(x+temp),(y+dy));
            let loop=loop-1;
            let dy=dy+1;
        } 
        return; 
    }
    function int retBaseScreen(){
        return 16384;
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
                if beka !=0 or word=='"': 
                    if word =='"':
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
                    xml.write (f"push constant {dictionaries.counter_field}\ncall Memory.alloc 1\npop pointer 0\n")
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
                    xml.write (f"push constant {var_for_string_assignment}\ncall String.new 1\npop {var_name} {var_index}\n")
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
                elif token[n-1] in dictionaries.Class:
                    var_name=dictionaries.Class[token[n-1]]["kind"]
                    var_index=dictionaries.Class[token[n-1]]["index"]
                    var_type=dictionaries.Class[token[n-1]]["type"]
                elif token[n-1]==dictionaries.className: # Handles if the variable not in both dic
                    print(f"var: {token[n]} is a className") 
                else: 
                    print("Problem")
                n+=1# method name 
                MethodName=token[n]
                #symbol (
                n+=1
                #symbol (
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
            var_for_string_assignment_do=0
            if token[n][0] == '"' or token[n][0]=="'":
                for i in range(1,len(token[n])-1):
                    var_for_string_assignment_do+=1
                with open(f"{name}.vm","a") as xml: 
                    xml.write (f"push constant {var_for_string_assignment_do + 1}\ncall Array.new 1\npop temp 7\npush temp 7\npush constant 0\nadd \npush constant 9999\ncall Memory.poke 2\npop temp 1\n")
                for i in range(1,len(token[n])-1):
                    with open(f"{name}.vm","a") as xml: 
                        xml.write (f"push temp 7\npush constant {i}\nadd \npush constant {ord(token[n][i])}\ncall Memory.poke 2\npop temp 1\n")
                #lexical.SYMBOL(token[n])  
                n+=2
                with open(f"{name}.vm","a") as xml:    
                    xml.write (f"push temp 7\ncall {func} 1\n")    
                return n
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
                    xml.write (f"push constant 1\nneg\n")
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
