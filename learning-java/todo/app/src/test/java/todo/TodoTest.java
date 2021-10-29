package todo;

import org.junit.Test;
import static org.junit.Assert.*;
import java.util.List;

public class TodoTest {
    @Test
    public void testStartsWithEmptyTodo() {
        Todo todo = new Todo();
        List<String> list = todo.getTasks();
        assertTrue(list.isEmpty());
    }

    @Test
    public void testAddsTaskToTodo() {
        Todo todo = new Todo();
        List<String> list = todo.getTasks();
        assertEquals(todo.addTask("Clean the house"), true);
        assertTrue(list.contains("Clean the house"));
    }
}
