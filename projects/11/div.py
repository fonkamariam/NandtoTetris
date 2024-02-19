import sys
global c
c=0
def divide(x,y):
    div,rem=0,x
    while rem >= y:
        rem=rem-y
        div+=1
    return rem
def line(x1,y1,x2,y2):
    a,b=0,0
    diff=0
    diffY = y1-y2 
    diffX = x1-x2   
    while a<=diffX and b<= diffY:
        print(x1-a,y1-b)
        if diff<0:
            a=a+1
            diff=diff+diffY
        else:
            b=b+1
            diff=diff-diffX
    return
def line1(x1,y1,x2,y2):
    a,b=0,0
    diff=0
    diffY = y1-y2 
    diffX = x2-x1   
    while a<=diffX and b<= diffY:
        print(x1+a,y1+b)
        if diff<0:
            a=a+1
            diff=diff+diffY
        else:
            b=b-1
            diff=diff-diffX
    return
def sqrt(x):
    s,e=0,x//2
    if x == 32767:
        return 181
    if e >364:
        e=363
    while(s<=e):
        mid=(s+e)//2
        midS=mid*mid
        if mid ==181:
            midS2=32767
        else:
            midS2=(mid+1)*(mid+1)
        if midS<=x<midS2:
            return mid
        if (midS)>x:
            e=mid-1
            continue
        elif (midS)<x:
            s=mid+1
            continue
        else:
            return mid  
def Multiply(x,y):
    sum=0
    shiftedX=x
    for i in range(16):
        if (y&pow(2,i))!=0:
            sum=sum+shiftedX
        shiftedX=shiftedX+shiftedX
    return sum 
def mod(x):
    var1=x
    while var1>0:
        mod=var1%10
        print(mod)
        var1=int((var1-mod)/10)
    return
def printInt2(x):
    if x ==0:
        return
    var1=x
    mad=x%10
    var1=(var1-mad)/10
    printInt(var1)
    print(int(mad))
    return
def printInt(i):
    if i<0:
        global c
        c=1
        i=-i
    if i<=0:
        return
    mad=i%10
    var1=(i-mad)//10
    printInt(var1)
    if c==1:
        print(45)
        c=0 
        print(48+mad) 
        return 
    print(48+mad) 
    return
def IntValue(i):
    for x in i:
        print(int(x))
    return
def twotoIneg():
    i,w=0,-1
    while(i<16):
        print(i,w)
        w=w+w
        i=i+1
    return

#print(Multiply((int(sys.argv[1])),(int(sys.argv[2]))))       
#print(sqrt(32766)) 
#printInt(345)
#print(line(1,1,0,0))
twotoIneg()
  