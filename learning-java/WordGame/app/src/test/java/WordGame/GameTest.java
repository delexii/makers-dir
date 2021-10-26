package WordGame;

import org.junit.Test;
import static org.junit.Assert.*;
import static org.mockito.Mockito.*;

public class GameTest {
    @Test
    public void testGetsWordToGuess() {
        WordChooser mocked = mock(WordChooser.class);
        when(mocked.getRandomWordFromDictionary()).thenReturn("MAKERS");
        Game game = new Game(mocked);
        assertEquals(game.getWordToGuess(), "M_____");
    }

    @Test
    public void getRemainingAttempts() {
        Game game = new Game(new WordChooser());
        assertEquals(game.getRemainingAttempts(), Integer.valueOf(10));
    }

}
