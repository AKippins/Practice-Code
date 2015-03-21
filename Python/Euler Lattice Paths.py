import time
 
def route_num(cube_size):
    L = [1] * cube_size
    print L
    for i in range(cube_size):
        print "\n"
        print "L" + str(L)
        print "\n"
        print "i: " + str(i)
        for j in range(i):
            L[j] = L[j]+L[j-1]
            print "L" + str(L)
            print "L[j]" + str(L[j])
        L[i] = 2 * L[i - 1]
        print "L" + str(L)
        print "L[i]" + str(L[i])
    return L[cube_size - 1]
 
start = time.time()
n = route_num(20)
elapsed = (time.time() - start)
print "%s found in %s seconds" % (n,elapsed)
