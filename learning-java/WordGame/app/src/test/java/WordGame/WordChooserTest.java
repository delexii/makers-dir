package WordGame;

import org.junit.Test;
import static org.junit.Assert.*;

public class WordChooserTest {
    @Test
    public void getRandomWordFromDictionary() {
        WordChooser chooser = new WordChooser();
        assertEquals(chooser.getRandomWordFromDictionary(), "MAKERS");
    }

}