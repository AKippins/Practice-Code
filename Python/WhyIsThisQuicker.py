
import math, time

def count_factors(K):
    factors = 2 # include 1 and K
    for i in xrange(2, math.floor(math.sqrt(K) + 1)):        
        if (K % i == 0):
            if (i**2 == K): # don't count sqrt twice.
                factors += 1
            else:
                factors += 2
    return factors

def factor(K):
    factors = []
    for i in xrange(2, math.floor(math.sqrt(K) + 1)):        
        if (K % i == 0):
            factors.append(i)
            other = K / i            
            if (other != i):
                factors.append(other)
    factors.sort()
    return factors

def prime_factor(K):
    primes = []
    for k in factor(K):   
        if (len(factor(k)) == 0):
            primes.append(k)
    primes.sort()
    return primes

start_time = time.time()
# Might as well start where the example leaves off (incredibly minor optimization)
i = 7
triangular = 28
while (True):
    i += 1
    triangular += i
    factors = count_factors(triangular)
    if (factors > 500):
        print i, " ", triangular
        break

print "Elapsed Time: ", time.time() - start_time, "second(s)"  # = 10.7(s)