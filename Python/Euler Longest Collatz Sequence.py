import time
start = time.time()
chaincount = 0
highcount = 0
nhighchain = 0
for n in range(2,1000000):
    currentn = n
    while n != 1:
        if n % 2 == 0:
            #print str(n) + " Is Even"
            n = n/2
            chaincount += 1
        elif (n + 1) % 2 == 0:
            #print str(n) + " Is Odd"
            n = n*3 + 1
            chaincount += 1
    if highcount < chaincount:
        highcount = chaincount
        nhighchain = currentn
    chaincount = 0
print "The number that produces the highest chain is " + str(nhighchain)
print "The number of terms for the chain was " + str(highcount + 1)
print time.time() - start