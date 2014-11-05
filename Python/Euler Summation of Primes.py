import time
start_time = time.time()
runtime = time.time() - start_time
x = 1;
summ = 0;

while x <= 2000000:
    y = 1;
    z = 0;
    
    while x >= y:    
        if x % y == 0:
            z += 1;
            if z > 2:
                #print str(x) + " was skipped";
                break;
        
        y += 1;
            
    if z == 2:
        #print str(x) + " is prime";
        summ += x;
    
    x += 1;
            
print summ;
print runtime;