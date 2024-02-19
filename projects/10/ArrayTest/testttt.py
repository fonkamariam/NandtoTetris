import re,sys
token= 'how '
if str:=re.search(r'^[A-Za-z_]([^ ])+ +(.+)',token):
    print (True)
else:
    print (False)

