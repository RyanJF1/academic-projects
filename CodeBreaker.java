import java.util.*;

public class CodeBreaker {

	public static void main(String[] args) {

		// String input
		String s = "Hello, my name is Ryan!";
		String decryptCode = null;
		
		// ArrayList for ASCII values of each character
		ArrayList<Integer> charNum = new ArrayList<>();
		
		// Build ArrayList
		for (int i = 0; i < s.length(); i++)
			charNum.add((int)(s.charAt(i)));
		
		// Build new ArrayList with ACSII number Change
		for (int i = 0; i < charNum.size(); i++)
			charNum.set(i, (charNum.get(i) - 1));
		
		for (int i = 0; i < charNum.size(); i++)
			decryptCode += Character.toString(i);
		
		System.out.println(charNum);
		System.out.println(decryptCode);

	}

}
