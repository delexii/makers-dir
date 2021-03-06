/*
 * This Java source file was generated by the Gradle 'init' task.
 */
package shopping.list;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.List;

public class App {
    public String getGreeting() {
        return "Hello World!";
    }

    public static void main(String[] args) {
        System.out.println(new App().getGreeting());
        ShoppingList shoppingList = new ShoppingList();
        ShoppingItem item1 = new ShoppingItem("Sauce", 14.99);
        ShoppingItem item2 = new ShoppingItem("Mayo", 5.99);

        shoppingList.addItem(item1);
        shoppingList.addItem(item2);
        Enumeration<ShoppingItem> e = Collections.enumeration(shoppingList.list);

        // Enumerate through the ArrayList elements
        System.out.println("ArrayList elements: ");
        while (e.hasMoreElements()) {
            ShoppingItem currentItem = e.nextElement();
            String line = String.format(" * %s - %.2f", currentItem.name, currentItem.price);
            System.out.println(line);
        }
    }
}