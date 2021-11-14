# Makers Apprenticeship Week 8

## Makers Learning Objectives

- [x]  Describe a process for learning a new language
- [x]  Test-drive a simple Java program.
- [x]  Explain the main differences between Java and a language like Ruby.
- [x]  Apply a coherent process to learn a new language.

## Applied Learnings

- Build a simple app: [Office Manager App](https://github.com/delexii/office-management-app)
- Applied learnings: [Learning Java](https://github.com/delexii/makers-dir/tree/main/learning-java)
- Pair programming project: [Hangman App](https://github.com/delexii/makers-dir/tree/main/learning-java/WordGame)

## Personal Learning Objectives

- [x]  learn the fundamentals in Java
- [x]  explore data types
- [x]  explore mocking and stubbing using mockito
- [x]  learn how to use gradle
- [x]  define a class constructor
- [x]  using a loop and some of Java's built-in classes, like `StringBuilder`.
- [x]  write efficient tests
- [x]  extract functionality to new class and use dependency injection in Java
- [x]  use ArrayList and understand how they work
- [x]  read use input using the Scanner class

## Things to celebrate

- [x]  building a completely new app in Java
- [x]  starting a crash course on Java in my own time to be able to catch up on the fundamentals
- [x]  a lot of java debugging
- [x]  being able to explain the difference between a compiled vs. interpreted language
- [x]  being able to explain what method overloading is and how it is used in Java
- [x]  learning about the concept of distanced self talk

## Emotions 

This week was slightly overwhelming. It felt quite hard moving from Ruby to Java with very little information or support with the syntax.

I've enjoyed the challenge of applying the concepts learned so far to a new language. While the pairing challenge felt quite easy and I was able to follow the specifications and build the app, the individual challenge was a bit more complex. I've also spent quite some time familiarising myself with the fundamentals of Java over the weekend, which will be quite useful for the team project in weeks 9 and 10.

## Progress and Learnings

> Process for learning a new language
> 
- How do I execute code in this new lang?
- What can I do in Ruby? How do I do those things in a different language?
- How do I get feedback from the machine i.e. print output?
- How do I install dependencies? - ruby bundler and gems
- How do I TDD?
- Build simple apps (i.e. Fizzbuzz - if statements, print/return/while loop)
- Build more complex apps (i.e. Airport - classes/methods) or (i.e. RPS - web apps)

> Java Course
> 
- Introduction
    
    Source code compiled to object code (machine code) in Java using .java file extension. However, if the file was compiled on a mac, it will not be able to be read on any other operating systems. If the file gets compiled using .class file extension, the source code then gets compiled to byte code which is then translated via a JVM on any other device.
    
    Java files should match the class names.
    
    Program only runs by having a main method as a point of entry.
    
    \n = escape character creating a new line
    
    [Data types](https://www.notion.so/5ddd8964e204447580d904c57be0ae13)
    
    A wrapper class is an object that encapsulates a primitive type. Each primitive type has a corresponding wrapper:
    
    byte, short, int, long, float, double, boolean, char
    
    Byte, Short, Integer, Long, Float, Double, Boolean, Character
    
    Wrapper class provides a mechanism to convert primitive type into object and object into primitive type. It provides a way to use primitive data types as reference data types. Reference data types contain useful methods.
    
    autoboxing = the automatic conversion that the Java compiler makes between the primitive data types and their corresponding obj wrapper class
    
    ```java
    Boolean a = true;
    Character b = '@';
    String e = "Delia";
    Integer c = 123;
    
    a. = access methods of reference data types within wrapper;
    ```
    
    unboxing = automatic conversation of wrapper class to primitive data type;
    
    ```java
    if (a == true){
    	System.out.println("This is true");
    }
    ```
    
- User Input
    
    Using the Scanner import from the java utility package.
    
    ```java
    Scanner scanner = new Scanner(System.in);
    System.out.println("What is your name?");
    String name = scanner.nextLine();
    System.out.println("How old are you?");
    int age = scanner.nextInt();
    
    // to clear the scanner we can add scanner.nextLine();
    // no ned to repeat the system.in before every user input request
    ```
    
    Using JOptionPane to build a simple gui
    
    ```java
    import javax.swing.JOptionPane;
    
    public class Main {
        public static void main(String[] args) {
            String name = JOptionPane.showInputDialog("Enter your name:");
            JOptionPane.showMessageDialog(null, "Hello " + name);
            
            // convert string to specific data type
            int age = Integer.parseInt(JOptionPane.showInputDialog("Enter your age:"));
            JOptionPane.showMessageDialog(null, "You are " +age+ " years old");
        }
    }
    ```
    
- Arrays
    
    ```java
    // first delcare number of elements and then assign values
    
    String[] cars = new String[3];
    cars[0] = "Camaro"
    
    for(int i = 0; i < cars.length; i++){
    	System.out.println(cars[i]);
    }
    
    // or just set an array
    String[] cars = {"Corvette", "Tesla"};
    ```
    
    Multidimensional Arrays in Java(2D)
    
    ```java
    String[][] cars = new String[3][3];
    
    cars[0][0] = "Camaro";
    cars[0][1] = "Corvette";
    cars[0][2] = "Silverado";
    cars[1][0] = "Mustang";
    cars[1][1] = "Toyota";
    cars[1][2] = "Ranger";
    cars[2][0] = "Tesla";
    cars[2][1] = "BMW";
    cars[2][2] = "Ferrari";
    
    for (int i = 0; i < cars.length; i++){
    		System.out.println();
    	for(int j = 0; j < cars[i].length; j++){
    		System.out.print(cars[i][j]);
    	}
    }
    ```
    
- Expressions
    
    ```java
    // expression = operands & operators
    // operands = values, variables, numbers, quantity
    // operators = + - * / %
    
    // integer division resorts to integer
    so int 10 / int 3 != 3.33(double)
    
    // you can declare a variable before using it as such
    double x;
    
    System.out.println("Enter side x: ");
    x = scanner.nextDouble();
    
    // good practice to close the scanner
    scanner.close();
    
    // generate random numbers
    Random random = new Random();
    int x = random.nextInt(6)+1; //to avoid 0s
    ```
    
    Java incrementing
    
    ```java
    public static void incrementing(){
    	int counter = 0;
    	int counter2 = 0;
    	while(counter < 10){
    		System.out.printf{"with post increment: %d %n", counter++);
    		System.out.printf{"with pre increment: %d %n", ++counter2);
      }
    }
    ```
    
- Compilation
    
    Java is a compiled language. Two step process to executing Java
    
    Step 1: compilation. Java is converted (compiled) into Bytecode
    
    Step 2: execution (running the code). Bytecode runs on the JVM
    
    Write once, run anywhere that the JVM is installed
    
    CPU: understands 1s and 0s
    
    Ruby: every time you execute Ruby, the code is read and interpreted by the Ruby interpreter (the ruby program) 
    
    Java: compilation happens once which is slow, but then executing bytecode is fast
    
    Compilation errors
    
    Runtime errors
    
- Classes
    
    *main = point of entry, a class method;*
    
    *void = method not returning anything;*
    
    *public method = can be accessed outside of the class;*
    
    *static = class method;*
    
    Nothing can exist outside of classes
    
    This class name doesn't matter, but it needs to implement a main method similar to the one above.
    
    static methods = belong to the class and can be called upon using the class name and not one of its instances. A single copy of the method is created and shared.
    
    ```java
    javac Hello.java //compile
    java Hello //render
    java Hello.java
    ```
    

## Useful resources

[Bloom's Taxonomy](https://cft.vanderbilt.edu/guides-sub-pages/blooms-taxonomy/)

[Printf method](https://www.journaldev.com/28692/java-printf-method)

[README stats](https://github.com/anuraghazra/github-readme-stats/blob/master/themes/README.md)

[Mockito](https://site.mockito.org/)

[Method overloading](https://www.geeksforgeeks.org/overloading-in-java/)

[ArrayList](https://www.w3schools.com/java/java_arraylist.asp)

[String Format](https://www.javatpoint.com/java-string-format)

[Classes](https://www.w3schools.com/java/java_classes.asp)

[JUnit testing in Java](https://www.youtube.com/watch?v=60yrTfVdFwo&ab_channel=software_technology)

[Scanner](https://www.w3schools.com/java/java_user_input.asp)

[VS Code and Java](https://code.visualstudio.com/docs/java/java-tutorial)

[UML Tutorials](https://www.youtube.com/watch?v=UI6lqHOVHic&ab_channel=Lucidchart)