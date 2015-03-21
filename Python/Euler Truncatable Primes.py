from math import sqrt
           
def isPrime(x):
    for y in xrange(2, int(sqrt(x)+1)):
        if(x % y) == 0:
            print "nope"
            return False
        else:
            print x
            return True
            
        
def l2r(x):
    for i in xrange(0, len(str(x))):
        if isPrime(int(str(x)[:i+1])) == True:
            return True
        else:
            return False
    
                
def r2l(x):
    for j in xrange(0, len(str(x))):
        if isPrime(int(str(x)[-j-1:])) == True:
            return True
        else:
            return False

total = 0

isPrime(5)

#print total
    