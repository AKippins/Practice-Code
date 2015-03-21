factorial = 1
for x in xrange(1,101):
    factorial *= x
    
summ = 0
length = len(str(factorial))
tobeadded = str(factorial)

while length > 0:
    summ += int(tobeadded[length - 1])
    length -= 1
    
print factorial
print summ