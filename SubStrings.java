import java.util.Scanner;

public class SubStrings {

	public static void main(String[] args) {

		String name = "";
		
		Scanner input = new Scanner(System.in);
		
		System.out.println("Please enter your name: ");
		name = input.nextLine();
		input.close();
		
		System.out.println("Name entered is: " + name);

	}

}
