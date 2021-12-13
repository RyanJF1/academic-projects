import java.util.Scanner;

public class RockPaperScissors {

	public static void main(String[] args) {

		int userGuess, computerGuess;
		
		Scanner input = new Scanner(System.in);
		
		System.out.println("Rock (1), Paper(2), Scissors(3). What is your choice?");
		userGuess = input.nextInt();
		input.close();
		
		computerGuess = (int)(Math.random() * 3 + 1);
		
		if (userGuess == computerGuess) {
			System.out.println("Draw!");
		}
		else if ((userGuess == 1 && computerGuess == 2) || (userGuess == 2 && computerGuess == 3) || (userGuess == 3 && computerGuess == 1)){
			System.out.println("You lose!");
		}
		else if ((userGuess == 1 && computerGuess == 3) || (userGuess == 2 && computerGuess == 1) || (userGuess == 3 && computerGuess == 2)) {
			System.out.println("You win!");
		}
		
		
	}

}
