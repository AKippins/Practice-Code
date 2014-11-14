import time, math
start_time = time.time()
x = 2;
summ = 5;
primes=[]
primes.append(2);
primes.append(3);
max = 2000000

while x <= max:
    for y in range(2,int(math.sqrt(x)+1)):
        if (x % y) == 0:
            break
        else:
            if x == 9:
                break;
            print str(x) + " is prime";
            primes.append(x);
            summ += x;
            print "The current sum is: " + str(summ) 
    x += 1;
            
print "The sum of the primes under " + str(max) + " is " + str(summ);
print primes;
print time.time() - start_time;