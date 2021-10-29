package todo;

import java.util.ArrayList;
import java.util.List;

public class Todo {
    ArrayList<String> list = new ArrayList<String>();

    public static void main(String[] args) {
        Todo todo = new Todo();
        todo.addTask("Clean");
        todo.addTask("Laundry");
        System.out.println(todo.getTasks());
    }

    public List<String> getTasks() {
        return list;
    }

    public String addTask(String task) {
        list.add(task);
        return task;
    }
}
