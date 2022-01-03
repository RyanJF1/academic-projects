import java.util.Scanner;

public class VowelOrConsonant {

	public static void main(String[] args) {

		char letter;

		Scanner input = new Scanner(System.in);

		System.out.println("Please enter a letter: ");
		letter = input.next().charAt(0);
		input.close();

		if (Character.isDigit(letter)) {

			System.out.println("Invalid entry!");

		} else {
			switch (letter) {

			case 'a':
			case 'A':
			case 'e':
			case 'E':
			case 'i':
			case 'I':
			case 'o':
			case 'O':
			case 'u':
			case 'U':

				System.out.println(letter + " is a vowel.");
				break;

			default:
				System.out.println(letter + " is a consonant.");

			}
		}
	}

}
