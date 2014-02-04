//Euler Smallest Multiple
public class Algorithm {
	public static void main(String[] args){
		long startTime = System.nanoTime();
		boolean numfound = false;
		int x = 0;
		while(!numfound){
			x++;
			for (int i=1; i<=20; i++){
				boolean modulo = x % i == 0;
				if (modulo){
					System.out.println("The number " + i + " returns " + modulo + " when divided by " + x);
					if (i >= 20){
						numfound = true;
					}
				} else {
					System.out.println("Error the factor " + i + " is not evenly divisible with the number " + x);
					break;
				}
			}
		}
		System.out.println("The number " + x + " is divisible evenly by the numbers 1-20");
		long endTime = System.nanoTime();
		System.out.println("Took "+(endTime - startTime) + " ns"); 
	}
}
