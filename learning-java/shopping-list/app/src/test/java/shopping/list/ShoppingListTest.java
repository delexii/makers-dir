package shopping.list;

import org.junit.Test;
import static org.junit.Assert.*;

import java.util.List;

public class ShoppingListTest {
    @Test
    public void testStartsWithEmptyArray() {
        ShoppingList shoppingList = new ShoppingList();
        List<ShoppingItem> list = shoppingList.getItems();
        assertTrue(list.isEmpty());
    }

    @Test
    public void testAddsItemtoList() {
        ShoppingList shoppingList = new ShoppingList();
        List<ShoppingItem> list = shoppingList.getItems();
        ShoppingItem item1 = new ShoppingItem("Sauce", 14.99);
        ShoppingItem item2 = new ShoppingItem("Mayo", 8.99);
        shoppingList.addItem(item1);
        shoppingList.addItem(item2);
        assertEquals(list.size(), 2);
    }
}
