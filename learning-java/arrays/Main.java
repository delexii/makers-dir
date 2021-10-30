import java.util.ArrayList;

public class Main {

    public static void main(String[] args) {

        // Arrays

        // first declare number of elements and then assign values

        // String[] cars = new String[3];
        // cars[0] = "Camaro"

        // for(int i = 0; i < cars.length; i++){
        // System.out.println(cars[i]);
        // }

        // or assign values to array at start
        // String[] cars = {"Corvette", "Tesla"};

        // Multidimensional arrays 2D

        // String[][] cars = new String[3][3];

        // cars[0][0] = "Camaro";
        // cars[0][1] = "Corvette";
        // cars[0][2] = "Silverado";
        // cars[1][0] = "Mustang";
        // cars[1][1] = "Toyota";
        // cars[1][2] = "Ranger";
        // cars[2][0] = "Tesla";
        // cars[2][1] = "BMW";
        // cars[2][2] = "Ferrari";

        // for (int i = 0; i < cars.length; i++) {
        // System.out.println();
        // for (int j = 0; j < cars[i].length; j++) {
        // System.out.print(cars[i][j] + " ");
        // }
        // }
        // System.out.println();

        // Array Lists
        // = resizeable array. Elements can be added or removed after compilation.
        // = only store reference data types

        // ArrayList<String> food = new ArrayList<String>();
        // food.add("Pizza");
        // food.add("Burger");
        // food.add("Chips");

        // for (int i = 0; i < food.size(); i++) {
        // System.out.println(food.get(i));
        // }

        // food.set(0, "Sushi"); // replace elements at index
        // food.remove(2); // remove element at index
        // food.clear(); // deletes elements from list;

        // Multidimensional Array Lists

        ArrayList<ArrayList<String>> groceryList = new ArrayList<>();

        ArrayList<String> bakeryList = new ArrayList<>();
        bakeryList.add("Pasta");
        bakeryList.add("Garlic Bread");
        bakeryList.add("Doughnuts");

        ArrayList<String> produceList = new ArrayList<>();
        produceList.add("Tomatoes");
        produceList.add("Zucchini");
        produceList.add("Peppers");

        ArrayList<String> drinksList = new ArrayList<>();
        drinksList.add("Sprite");
        drinksList.add("Wine");

        groceryList.add(bakeryList);
        groceryList.add(produceList);
        groceryList.add(drinksList);

        System.out.println(groceryList);
        System.out.println(groceryList.get(0).get(0));
        System.out.println(groceryList.get(2).get(1));

    }
}
