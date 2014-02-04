#Euler Largest Palindrome Product
a = 100;
b = 100;
lgstpally = "0";

while True:
	original = str(a * b);
	olength = len(original);
	reverse = "";

	while olength >= 1:
		reverse += original[olength - 1];
		olength -= 1;

	if original == reverse:
		replace = bool(int(reverse) >= int(lgstpally));
		if replace:
			print str(a) + " * " + str(b);
			lgstpally = reverse;
	#else:
		#print "The term is not a palindrome";

	b += 1;
	if b == 1000:
		b = 100;
		a += 1;

	if a == 1000:
		break;

print lgstpally;
#while olength >= 0:
	
