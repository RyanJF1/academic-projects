import java.util.Scanner;

public class Unicode {

	public static void main(String[] args) {

		String numChar;
		
		Scanner input = new Scanner(System.in);
		
		System.out.println("Please enter a character: ");
		numChar = input.nextLine();
		input.close();
		

		System.out.println("The character " + numChar + " has Unicode " +  Character.codePointAt(numChar, 0) + ".");

	
	}

}
