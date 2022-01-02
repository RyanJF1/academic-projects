import java.io.File;
import java.io.FileNotFoundException;
import java.util.*;

public class CodeBreaker {

	public static void main(String[] args) throws FileNotFoundException { 

		// Scanner fileScan reads commonwords.txt, Scanner input reads encrypted code
		// ArrayList stores all words in commonwords.txt
		Scanner fileScan = new Scanner(new File(System.getProperty("user.dir") + "\\commonwords.txt"));
		Scanner input = new Scanner(System.in);
		
		// ArrayList to put all the words in commonwords.txt into an array
		ArrayList<String> commonWords = new ArrayList<String>();
		
		
		// Initialize variables for encrypted/decrypted code
		// key = how many places the characters will be shifted
		String encryptedCode = "";
		String decryptedCode = "";
		int k = 0;
		
		
		// Build ArrayList with words from commonwords.txt
		while (fileScan.hasNext())
		    commonWords.add(fileScan.next());
		fileScan.close();
		
		
		// Input encrypted code
		System.out.println("Input code to decrypt: ");
		encryptedCode = input.nextLine();
		input.close();
		
		
		// Prints encrypted code
		System.out.println("Encrypted code: " + encryptedCode);
		

		/* decrypt method uses encryptedCode, commonWords, and k
		*	encryptedCode = text input from user
		*	commonWords = commonwords.txt ArrayList
		*	k = number the characters will be shifted by
		*/
		
		decryptedCode = decrypt(encryptedCode, commonWords, k);
		
		// Prints decrypted code
		System.out.println("Decrypted code: " + decryptedCode);

	}
	
	
	// Decrypt method
	public static String decrypt(String encryptedCode, ArrayList<String> commonWords, int k) {
		
		// ArrayList for encrypted code characters
		// charNum = ASCII code Ex: [97, 98, 99, 100, 101, 102]
		// charCode = Letters	Ex: [a, b, c, d, e, f]
		ArrayList<Integer> charNum = new ArrayList<>();
		ArrayList<Character> charCode = new ArrayList<>();
		
		
		// Build ArrayList of ASCII values
		for (int i = 0; i < encryptedCode.length(); i++)
			charNum.add((int)(encryptedCode.charAt(i)));
		// Ex: [97, 98, 99, 100, 101, 102]
		
		
		// Build ArrayList with ACSII number Change
		// Notice (charNum.get(i) - k)
		for (int i = 0; i < charNum.size(); i++)
			charNum.set(i, (charNum.get(i) - k));
		// Ex: [98, 99, 100, 101, 102, 103]
		
		
		// Build ArrayList converting ASCII back to characters
		for (int i = 0; i < charNum.size(); i++)
			charCode.add((char)(int)(charNum.get(i)));
		// Ex: [b, c, d, e, f, g]


		// Build String for decrypted code using StringBuilder class
		// All this does is convert the array to a string
		// [a, b, c, d, e, f] -> abcdef
		StringBuilder decryptedCode = new StringBuilder();
		for (Character c : charCode) {
			decryptedCode.append(c.toString());
		}
			
		// Print decrypted code
		return decryptedCode.toString();	
		
	}
	
}
