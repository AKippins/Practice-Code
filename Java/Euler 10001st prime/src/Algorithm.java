//Euler 10001st prime
import java.util.*;
public class Algorithm {
	public static void main(String[] args){
		System.out.println("Enter a number and i'll find the prime at that number");
		int test = new Scanner(System.in).nextInt();
		int x = 0;
		int prime_factor_count = 0;
		
		while (true){
			x++;
			int factor_count = 0;
			for (int i = 1; i <= x; i++){
				boolean modulo = x % i == 0;
				if (modulo){
					factor_count = factor_count + 1;
				}
			}
			
			if (factor_count == 2){
				//System.out.println(x + " is a prime number");
				prime_factor_count = prime_factor_count + 1; 
			} else {
				//System.out.println(x + " is not a prime number");
			}
			
			if (prime_factor_count == test){
				System.out.println(x + " is the " + test + " prime number");
				break;
			}
		}
	}
}
