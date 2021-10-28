package WordGame;

import org.junit.Test;
import static org.junit.Assert.*;
import static org.mockito.Mockito.*;

public class WordChooserTest {
    @Test
    public void getRandomWordFromDictionary() {
        WordChooser mocked = mock(WordChooser.class);
        when(mocked.getRandomWordFromDictionary()).thenReturn("MAKERS");
        assertEquals(mocked.getRandomWordFromDictionary(), "MAKERS");
    }

}
