import time, math
start = time.time();
x = 1;
beover = 500;
n = 0;

while n <= beover:
    summ = x * (x + 1) / 2 ;
    print "The Sum Is: " + str(summ);
    y = 1;
    n = 0;
    while True:
        if summ % y == 0:
            if y**2 == summ:
                n += 1;
            else:
                n += 2;
        if math.sqrt(summ) <= y:
            print "The Factors For The Previous Sum Is: " + str(n);
            break;
        y += 1;
    x += 1;
            
print "The Next Triangular Number That's Over " + str(beover) + " Factors Is " + str(summ);
print "This Number Has " + str(n) + " Factors";
print time.time() - start