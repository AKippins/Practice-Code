finalsum = 0
for x in xrange(1000, 1000000):
    summ = 0
    for y in xrange(0,len(str(x))):
        summ += int(str(x)[y])**5
    if summ == x:
        finalsum += x
        print x
        
print finalsum