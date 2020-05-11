import argparse
parser = argparse.ArgumentParser()
parser.add_argument("echo")

print(parser.parse_args())

#text = parser.parse_args().echo

#def recur_factorial(n):
#   if n == 1:
#       return n
#   else:
#       return n*recur_factorial(n-1)
