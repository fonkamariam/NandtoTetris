import sys,re
def Parser():
    loki=[]
    symbol=["{","}",".","[","]","(",")",",",";","+","-","*","/","&","|","<",">","=","~"," ",'"']
    file=''
    # Opens whatever jack file the user opened, and stores it in a VARIABLE called file
    with open (f"{sys.argv[1]}","r") as file1:    
        for line in file1:
            file+=line
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

print(Parser())