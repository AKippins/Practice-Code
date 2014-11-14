import time
start = time.time();
x = 1;
beover = 50;
n = 0;
summ = 0;

while n <= beover:
    summ += x;
    print "The Sum Is: " + str(summ);
    y = 1;
    n = 0;
    while True:
        if summ % y == 0:
            n += 1;
        if summ == y:
            print "The Factors For The Previous Sum Is: " + str(n);
            break;
        y += 1;
    x += 1;
            
print "The Next Triangular Number That's Over " + str(beover) + " Factors Is " + str(summ);
print "This Number Has " + str(n) + " Factors";
print time.time() - start