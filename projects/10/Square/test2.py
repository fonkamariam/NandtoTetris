import re
subject ="""
10
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
print(removeM_line(subject))