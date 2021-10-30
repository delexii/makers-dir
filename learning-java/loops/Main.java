import java.util.Scanner;

// do loop always executes the block of code once before checking condition

// for loop executes a block of code a limited amount of times

// nested loops are loops inside another loop

// WHILE LOOP
// public class Main {
//     public static void main(String[] args) {
//         Scanner scanner = new Scanner(System.in);
//         String name = "";

//         while (name.isEmpty()) {
//         System.out.print("Enter your name: ");
//         name = scanner.nextLine();
//         }
//         System.out.println("Hello " + name);

//         }
//     }


// NESTED LOOP

public class Main {
        public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int rows;
        int columns;
        String symbol = "";

        System.out.println("Enter # of rows: ");
        rows = scanner.nextInt();
        System.out.println("Enter # of columns: ");
        columns = scanner.nextInt();
        System.out.println("Enter symbol to use: ");
        symbol = scanner.next();

        for (int i = 1; i <= rows; i++) {
            System.out.println();
            for (int j = 1; j <= columns; j++) {
                System.out.print(symbol);
            }
        }

    }
}