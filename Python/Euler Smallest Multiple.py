#Euler Smallest Multiple
numfound = False;
x = 0;
while not numfound:
	x += 1;
	for i in range (1,21):
		modulo = bool(x % i == 0);
		if modulo:
			print ("The number " + str(i) + " returns " + str(modulo) + " when divided by " + str(x));
			if i>=20:
				numfound = True;		
		else:
			print ("Error the factor " + str(i) + " is not evenly divisible with the number " + str(x));
			break;

print ("The number " + str(x) + " is divisible evenly by the numbers 1-20");