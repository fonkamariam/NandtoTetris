global count
count=-1
global f_c
f_c=0
def f1(f_c,count):
    f_c+=1
    count+=1
    print(f"static_{f_c-count}")
    count-=1
print(f"static_{f_c-count}")
def f2(f_c,count):
    f_c+=1
    count+=1
    print(f"static_{f_c-count}")
    count-=1
print(f"static_{f_c-count}")

f1(f_c,count)
f2(f_c,count)
