from math import factorial
finaltotal = 0
for x in xrange(3,1000000):
    total = 0
    for y in range(len(str(x))):
        total += factorial(int(str(x)[y]))
        
    if total == x:
        finaltotal += total
        
print finaltotal