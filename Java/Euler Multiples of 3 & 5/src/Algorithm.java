//Euler Multiples of 3 & 5
public class Algorithm {
	public static void main(String[] args){
		int sum1 = 0;
		int sum2 = 0;
		int sum3 = 0;
		int total = 0;
		
		for (int i = 1; i * 3 < 1000; i++){
			sum1 += i * 3;
		}
		
		for (int j = 1; j * 5 < 1000; j++){
			sum2 += j * 5;
		}
		
		total = sum1 + sum2;
		System.out.println(total);
		
		for (int k = 1; k * 15 < 1000; k++){
			sum3 += k * 15;
		}
		
		total = total - sum3;
		System.out.println(total);
	}
}
