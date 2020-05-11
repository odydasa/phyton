import argparse
parser = argparse.ArgumentParser()
parser.add_argument("echo")
text = parser.parse_args().echo

n=1
for x in range (1,len(text)+1):
  for y in range (0,len(text)):
    n = n+1
print(n)

#for x in range (0,len(text)):
#  out = []
#  out.append(x)
#  for y in range (0,len(text)):  
#    if x==y:
#      continue
#    out.append(y)
#    print(out)
