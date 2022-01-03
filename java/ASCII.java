import java.util.Scanner;

public class ASCII {

	public static void main(String[] args) {

		int numChar;
		
		Scanner input = new Scanner(System.in);
		
		System.out.println("Please enter a number between 0 and 127: ");
		numChar = input.nextInt();
		input.close();
		
		if (numChar >= 0 && numChar <= 127) {
			System.out.println("The character for ASCII code " + numChar + " is " + (char)numChar + ".");
		}
		else {
			System.out.println("Invalid entry!");
		}
		
	}

}
