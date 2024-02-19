import sys
def compare():
    main=[]
    compare=[]
    counter=1
    with open (f"{sys.argv[1]}","r") as xml1: 
        for line in xml1:
            line=line.strip()
            main.append(line)
    with open (f"{sys.argv[2]}","r") as xml2: 
        for line in xml2:
            line=line.strip()                
            compare.append(line)
    if len(main)!=len(compare):
        return f'Fail'
    else:
        for main_line in main:
            if main_line!=compare[counter-1]:
                print( f"Fail at line {counter}")
            counter+=1
        return 'Success'
    
print(compare())
        
