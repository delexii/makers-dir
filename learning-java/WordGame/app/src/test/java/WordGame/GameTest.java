package WordGame;

import org.junit.Test;
import static org.junit.Assert.*;

public class GameTest {
    @Test
    public void testGetsWordToGuess() {
        Game game = new Game("MAKERS");
        assertEquals(game.getWordToGuess(), "M_____");
    }

    @Test
    public void getRemainingAttempts() {
        Game game = new Game("MAKERS");
        assertEquals(game.getRemainingAttempts(), Integer.valueOf(10));
    }

    @Test
    public void getRandomWordFromDictionary() {
        Game game = new Game("MAKERS");
        assertEquals(game.getRandomWordFromDictionary(), "MAKERS");
    }
}
