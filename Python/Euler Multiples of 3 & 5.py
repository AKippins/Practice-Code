#Euler Multiples of 3 & 5
sum1 = 0;
sum2 = 0;
sum3 = 0;
total = 0;
i = 1;
j = 1;
k = 1;

while i * 3 < 1000:
	sum1 += i * 3;
	i += 1;

while j * 5 < 1000:
	sum2 += j * 5;
	j += 1;

total = sum1 + sum2

while k * 15 < 1000:
	sum3 += k * 15;
	k += 1;

total = total - sum3
print total