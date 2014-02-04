//Euler Sum Square Difference 
import static java.lang.Math.*;
public class Algorithm {
	public static void main(String[] args){
		double sum1 = 0;
		double sum2 = 0;
		
		for (int i = 1; i <= 100; i++){
			sum1 = sum1 + pow(i,2);
			System.out.println(sum1);
		}
		
		for (int x = 1; x <= 100; x++){
			sum2 = sum2 + x;
			System.out.println(sum2);	
		}
		
		sum2 = pow(sum2,2);
		System.out.println(sum2);
		System.out.println(sum2 - sum1);
		
	}
}
