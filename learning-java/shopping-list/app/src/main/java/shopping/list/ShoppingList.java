package shopping.list;

import java.util.ArrayList;
import java.util.List;

public class ShoppingList {
    ArrayList<ShoppingItem> list = new ArrayList<ShoppingItem>();

    public List<ShoppingItem> getItems() {
        return list;
    }

    public List<ShoppingItem> addItem(ShoppingItem item) {
        list.add(new ShoppingItem(item.name, item.price));
        return list;
    }
}
