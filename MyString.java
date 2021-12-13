public class MyString {

  public static void main(String[] args) {

    // Slide 14
    String message = "Hello World!";
    
    // Slides 15, 17, 18, and 19
    System.out.println(message.length());
    System.out.println(message.charAt(0));
    System.out.println(message.toUpperCase());
    System.out.println(message.toLowerCase());
    
    System.out.println(); // Print blank line 
    
    // Slide 23
    String word = "Banana";
    String phrase = "nana";    
    System.out.println(word.equals(phrase));
    System.out.println(word.startsWith("Ba"));
    System.out.println(word.contains(phrase));
    
    System.out.println(); // Print blank line
  
    // Slides 24, 25, and 26
    String name = "Alexander Graham Bell";
    
    int firstIndex = name.indexOf(' ');
    System.out.println("Index of first space:" + firstIndex);
    System.out.println(name.substring(0, firstIndex));
    
    int secondIndex = name.lastIndexOf(' ');
    System.out.println("Index of last space: " + secondIndex);
    System.out.println(name.substring(secondIndex + 1));
    
    System.out.println(); // Print blank line
    
    // Slide 27
    String stringNumber = "123.45";    
    System.out.println(Double.parseDouble(stringNumber) + 1);
    
    int number = 12;
    System.out.println("" + number);
    
    System.out.println(); // Print blank line
    
    // Slide 28
    int x = 12;
    double y = 111.444;
    String z = "Hi";
    System.out.printf("My int is %d and my double is %.2f and my string is %s.", x, y, z);

  }

}