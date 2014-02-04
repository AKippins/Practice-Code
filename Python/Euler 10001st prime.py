#Euler 10001st prime
num = int(raw_input("Enter a number and i will find the prime number in that place \n"));
x = 0;
prime_factor_count = 0;

while True:
	x += 1;
	factor_count = 0;	
	i = 1;
	while i <= x:
		modulo = bool(x % i == 0);
		if modulo:
			factor_count += 1;
		i += 1;

	if factor_count == 2:
		prime_factor_count += 1;
		#print str(x) + " is a prime number";
	#else:
		#print str(x) + " is not a prime number";

	if prime_factor_count == num:
		print str(x) + " is the prime number in the number place that you have selected.";
		break;
