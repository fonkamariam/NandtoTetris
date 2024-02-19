token=''
def expression(n):
    n=EXPERSSION.term(n) 
    while token[n] in EXPERSSION.op: 
        #if token[n+1] =="(":
        #    temp=dictionaries.Arthimetic[token[n]]
        #    n=EXPERSSION.expression(n+2) 
        #    #symbol
        #    n+=1
        #    with open(f"{name}.xml","a") as xml:
        #        xml.write (f"{temp}\n")    
        #    continue 
        if token[n]=='*':
            n=EXPERSSION.term(n+1) 
            with open(f"{name}.xml","a") as xml:
                xml.write (f"call Math.multiply 2\n")
            n+=1
            continue 
        if token[n]=='/':
            n=EXPERSSION.term(n+1)
            with open(f"{name}.xml","a") as xml:
                xml.write (f"call Math.divide 2\n")
            n+=1
            continue
        #lexical.SYMBOL(token[n])
        temp=dictionaries.Arthimetic[token[n]] 
        n+=1 
        n=EXPERSSION.expression(n) 
        with open(f"{name}.xml","a") as xml:
            xml.write (f"{temp}\n")    
    return n    
def term(n):
    x=lexical.TokenType(token[n])
    if x =='INT':
        with open(f"{name}.xml","a") as xml:
            xml.write (f"push {token[n]}\n")
        n+=1 
    elif x =='STR':  
        #lexical.STR_CONST(token[n])
        with open(f"{name}.xml","a") as xml:
            xml.write (f"push {len(token[n])}\ncall String.new 1\n")
        n+=1
    elif x=='KEYWORD_CONST': 
        #lexical.KEYWORD(token[n])
        if token[n]=="true":
            with open(f"{name}.xml","a") as xml:
                xml.write (f"push constant 1\npush neg\n")
        elif token[n]=="false":
            with open(f"{name}.xml","a") as xml:
                xml.write (f"push constant 0\n")
        elif token[n]=="null":
            with open(f"{name}.xml","a") as xml:
                xml.write (f"push constant 0")
        else:
            print("error: key_const is a 'This' ")
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
        with open(f"{name}.xml","a") as xml:
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
                var_name=dictionaries.Sub[token[n]]["kind"]
                var_index=dictionaries.Sub[token[n]]["index"]
            elif token[n]==dictionaries.className: # Handles if the variable not in both dic
                print(f"var: {token[n]} is a className")
            else:
                print("Problem")
            with open(f"{name}.xml","a") as xml:
                xml.write (f"push {var_name} {var_index}\n")
            n+=1 
            #lexical.SYMBOL(token[n]) 
            n+=1
            n=EXPERSSION.expression(n)
            with open(f"{name}.xml","a") as xml:
                xml.write (f"add\n")
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
                var_name=dictionaries.Sub[token[n]]["kind"]
                var_index=dictionaries.Sub[token[n]]["index"]
            elif token[n]==dictionaries.className: # Handles if the variable not in both dic
                print(f"var: {token[n]} is a className")
            else:
                print("Problem")
            with open(f"{name}.xml","a") as xml:
                xml.write (f"pop {var_name} {var_index}\n")
            n+=1
    else:
        print("problem at Tokentype(not returning anything)")
    return n