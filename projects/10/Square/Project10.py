import re,os
from pathlib import Path
n=-1
basepath = Path('')
files_in_basepath = basepath.iterdir()
list_conv=[]
for item in files_in_basepath:
    if item.is_file(): 
        if sysre:=re.search(r'^(.+)\.jack$',item.name):
           list_conv.append(item)
cwd = os.getcwd()
str1=os.getcwd()
str2=str1.split('\\')
numm=len(str2)
name=str2[numm-1]
file=''
for x in list_conv:
    with open (f"{x}","r") as file1:    
        for line in file1:
            file+=line
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
                            if subject[i+1] and subject[i+2] == "*":
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
                            if word=='"':
                                if check:
                                    loki.append(check)
                                    check=''
                                if beka == 0:
                                    beka=1
                                else:
                                    beka=0
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
                elif str:=re.search(r'^[A-Za-z_]([^ ])+ +(.+)',token):
                    return "STR"
                else:
                    return "zero"
            def IDENTIFIER(tok):
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"<identifier> {tok} </identifier>\n")
            def STR_CONST(tok): 
                with open(f"{name}.xml","a") as xml: 
                    xml.write (f"<stringConstant> {tok} </stringConstant>\n")
            def INT_CONST(tok):
                tok=int(tok) 
                with open(f"{name}.xml","a") as xml: 
                    xml.write (f"<integerConstant> {tok} </integerConstant>\n")
            def SYMBOL(tok):
                dic={">":"&gt;","<":"&lt;",'"':"&quot;","&":"&amp;"}
                if tok == ">" or tok== "<" or tok=='"' or tok=='&':
                    tok=dic[tok]
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"<symbol> {tok} </symbol>\n") 
            def KEYWORD(tok):
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"<keyword> {tok} </keyword>\n")  
        class Program_Structure:
            def CLASS(n):
                # <class>
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"<class>\n")
                n+=1
                lexical.KEYWORD(token[n])
                n+=1
                lexical.IDENTIFIER(token[n])
                n+=1
                lexical.SYMBOL(token[n]) 
                n+=1
                while token[n] == "static" or token[n]=="field":
                    n=Program_Structure.CLASS_VAR_DEC(n)
                while token[n] == "constructor" or token[n] =="function" or token[n] =="method":
                    n=Program_Structure.SUBROUTINE_DEC(n) 
                lexical.SYMBOL(token[n])
                n+=1 
                #</class>
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"</class>\n")
                return n
            def CLASS_VAR_DEC(n):
                # <classVarDec>
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"<classVarDec>\n")
                lexical.KEYWORD(token[n])
                n+=1
                n=Program_Structure.TYPE(n)
                lexical.IDENTIFIER(token[n]) #handled varname
                n+=1
                while token[n] == ",":
                    lexical.SYMBOL(token[n])
                    n+=1
                    lexical.IDENTIFIER(token[n]) #handled varname
                    n+=1
                lexical.SYMBOL(token[n])
                n+=1
                # </classVarDec>
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"</classVarDec>\n")
                return n
            def TYPE(n):
                if token[n] == "int" or token[n] =="char" or token[n] =="boolean":
                    lexical.KEYWORD(token[n])
                    n+=1
                else:
                    lexical.IDENTIFIER(token[n])
                    n+=1
                return n
            def SUBROUTINE_DEC(n):
                # <subroutineDec>
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"<subroutineDec>\n")
                lexical.KEYWORD(token[n])
                n+=1
                if token[n] == "void":
                    lexical.KEYWORD(token[n])
                    n+=1
                else:
                    n=Program_Structure.TYPE(n)
                lexical.IDENTIFIER(token[n])#subroutineName
                n+=1
                lexical.SYMBOL(token[n])
                n+=1
                n=Program_Structure.PARAMETER_LIST(n)
                lexical.SYMBOL(token[n])
                n+=1
                n=Program_Structure.SUBROUTINE_BODY(n)
                # </subroutineDec>
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"</subroutineDec>\n")
                return n 
            def PARAMETER_LIST(n):
                # <parameterList>
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"<parameterList>\n")
                if token[n] != ")":
                    n= Program_Structure.TYPE(n)
                    lexical.IDENTIFIER(token[n])
                    n+=1
                    while token[n] == ",":
                        lexical.SYMBOL(token[n])
                        n+=1
                        n=Program_Structure.TYPE(n) # handles the type
                        lexical.IDENTIFIER(token[n]) #handled varname
                        n+=1
                
                # </parameterList>
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"</parameterList>\n")
                return n
            def SUBROUTINE_BODY(n):
                # <subroutineBody>
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"<subroutineBody>\n")
                lexical.SYMBOL(token[n])
                n+=1
                while token[n] == "var":
                    n=Program_Structure.VAR_DEC(n)
                n=STATEMENTSCLASS.statements(n) 
                lexical.SYMBOL(token[n]) 
                n+=1
                # </subroutineBody>
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"</subroutineBody>\n")
                return n
            def VAR_DEC(n): 
                # <varDec>
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"<varDec>\n")
                lexical.KEYWORD(token[n])
                n+=1
                n=Program_Structure.TYPE(n)
                lexical.IDENTIFIER(token[n])
                n+=1
                while token[n] == ",":
                    lexical.SYMBOL(token[n])
                    n+=1
                    lexical.IDENTIFIER(token[n]) #handled varname
                    n+=1
                lexical.SYMBOL(token[n])
                n+=1
                # </varDec>
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"</varDec>\n")
                return n
        class STATEMENTSCLASS:
            def statements(n):
                # <statements>
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"<statements>\n") 
                while token[n]=='let' or token[n]=='do' or token[n]=='if' or token[n]=='return'or token[n]=='while':
                    n=STATEMENTSCLASS.statement(n)
                # </statements> 
                with open(f"{name}.xml","a") as xml: 
                    xml.write (f"</statements>\n") 
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
                # <whileStatement>
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"<whileStatement>\n")
                lexical.KEYWORD(token[n])
                n+=1
                lexical.SYMBOL(token[n])
                n+=1
                n=EXPERSSION.expression(n)
                lexical.SYMBOL(token[n])
                n+=1
                lexical.SYMBOL(token[n])
                n+=1
                n=STATEMENTSCLASS.statements(n)
                lexical.SYMBOL(token[n])
                n+=1
                # </whileStatement>
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"</whileStatement>\n")
                return n
            def DoStatement(n):
                # <doStatement>
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"<doStatement>\n")
                lexical.KEYWORD(token[n])
                n+=1
                n=EXPERSSION.SubrotineCall(n) 
                lexical.SYMBOL(token[n]) 
                n+=1
                # </doStatement>
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"</doStatement>\n")
                return n
            def ReturnStatement(n):
                # <returnStatement>
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"<returnStatement>\n")
                lexical.KEYWORD(token[n])
                n+=1
                if token[n] !=';':
                    n=EXPERSSION.expression(n)
                lexical.SYMBOL(token[n])
                n+=1
                # </returnStatement>
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"</returnStatement>\n")
                return n
            def IFstatement(n):
                # <ifStatement>
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"<ifStatement>\n")
                lexical.KEYWORD(token[n])
                n+=1
                lexical.SYMBOL(token[n])
                n+=1
                n=EXPERSSION.expression(n)
                lexical.SYMBOL(token[n])
                n+=1
                lexical.SYMBOL(token[n])
                n+=1
                n=STATEMENTSCLASS.statements(n)
                lexical.SYMBOL(token[n])
                n+=1
                if token[n] == 'else':
                    lexical.KEYWORD(token[n])
                    n+=1
                    lexical.SYMBOL(token[n])
                    n+=1
                    n=STATEMENTSCLASS.statements(n)
                    lexical.SYMBOL(token[n])
                    n+=1
                # </ifStatement>
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"</ifStatement>\n")
                return n
            def LetStatement(n):
                # <letStatement>
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"<letStatement>\n")
                lexical.KEYWORD(token[n])
                n+=1
                lexical.IDENTIFIER(token[n]) #handled varname
                n+=1
                if token[n] != "=":
                    lexical.SYMBOL(token[n])
                    n+=1
                    n=EXPERSSION.expression(n)
                    lexical.SYMBOL(token[n])
                    n+=1
                lexical.SYMBOL(token[n])
                n+=1 
                n=EXPERSSION.expression(n)
                lexical.SYMBOL(token[n])
                n+=1
                # </letStatement>
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"</letStatement>\n")
                return n
        class EXPERSSION:
            op=["+","-","*","/","&","|","<",">","="] 
            unaryOp=['-','~']
            KeywordConstant=['true','false','null','this']
            def expressionList(n):
                # <expressionList>
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"<expressionList>\n")
                if token[n] !=')':
                    n=EXPERSSION.expression(n)
                    while token[n] ==',':
                        lexical.SYMBOL(token[n])
                        n+=1
                        n=EXPERSSION.expression(n)
                # </expressionList>
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"</expressionList>\n")
                return n
            def expression(n):
                # <expression>
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"<expression>\n")
                n=EXPERSSION.term(n)
                while token[n] in EXPERSSION.op:
                    lexical.SYMBOL(token[n])
                    n+=1
                    n=EXPERSSION.term(n)    
                # </expression>
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"</expression>\n")
                return n 
            def SubrotineCall(n):
                n+=1
                if token[n]=='(':
                    n=n-1 
                    lexical.IDENTIFIER(token[n])#subroutineName
                    n+=1
                    lexical.SYMBOL(token[n])
                    n+=1
                    EXPERSSION.expressionList(n)
                    lexical.SYMBOL(token[n])
                    n+=1
                elif token[n] =='.':
                    n=n-1
                    lexical.IDENTIFIER(token[n])#subroutineName
                    n+=1
                    lexical.SYMBOL(token[n])
                    n+=1
                    lexical.IDENTIFIER(token[n])#subroutineName
                    n+=1
                    lexical.SYMBOL(token[n])
                    n+=1
                    n=EXPERSSION.expressionList(n)
                    lexical.SYMBOL(token[n])
                    n+=1
                else:
                    print("Probelm at EXPRESSION.(SubrotineCall)")
                return n
            def term(n):
                # <term>
                with open(f"{name}.xml","a") as xml:
                    xml.write (f"<term>\n")
                x=lexical.TokenType(token[n])
                if x =='INT': 
                    lexical.INT_CONST(token[n])
                    n+=1
                elif x =='STR':
                    lexical.STR_CONST(token[n])
                    n+=1
                elif x=='KEYWORD_CONST':
                    lexical.KEYWORD(token[n])
                    n+=1
                elif x=='SYMBOL_EXP':
                    lexical.SYMBOL(token[n])
                    n+=1
                    n=EXPERSSION.expression(n)
                    lexical.SYMBOL(token[n])
                    n+=1
                elif x=='SYMBOL_UN':
                    lexical.KEYWORD(token[n])
                    n+=1
                    n=EXPERSSION.term(n)
                elif x=='zero': 
                    n+=1
                    if token[n]=='[':
                        n=n-1
                        lexical.IDENTIFIER(token[n])
                        n+=1
                        lexical.SYMBOL(token[n])
                        n+=1
                        n=EXPERSSION.expression(n)
                        lexical.SYMBOL(token[n])
                        n+=1
                    elif token[n-1] =='(':
                        n=n-1
                        n=EXPERSSION.expression(n)
                        lexical.SYMBOL(token[n])
                        n+=1
                    elif token[n]=='(' or token [n]=='.':
                        n=n-1
                        n=EXPERSSION.SubrotineCall(n)
                    else:
                        n=n-1
                        lexical.IDENTIFIER(token[n])
                        n+=1
                else:
                    print("problem at Tokentype(not returning anything)")
                # </term>

                with open(f"{name}.xml","a") as xml:
                    xml.write (f"</term>\n")
                return n
        Program_Structure.CLASS(n)
        n=-1
        file=''
print("Done.....Good Luck Comparing!!!")



