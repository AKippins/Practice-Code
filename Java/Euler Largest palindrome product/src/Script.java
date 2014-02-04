//Euler Largest palindrome product
import java.util.*;
public class Script {
	public static void main(String[] args){
		//String original, reverse = "";
		//Scanner in = new Scanner(System.in);
		int test = 9009;
		
		System.out.println("Please enter a string and i will check to see if it is a palindrome");
		//original = in.nextLine();
		//System.out.println(original);
		
		int length = test.length();
		//System.out.println(length);
		for (int i = length - 1; i >= 0; i--){
			reverse = reverse + original.charAt(i);
		}
		//System.out.println(reverse);
		
		/*if (original.equals(reverse)){
			System.out.println("The string that you entered is a palindrome");
		} else {
			System.out.println("The string that you entered is not a palindrome");
		}*/
	}
}
