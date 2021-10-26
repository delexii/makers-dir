package WordGame;

import org.junit.Test;
import static org.junit.Assert.*;

public class GameTest {
    @Test
    public void testGetsWordToGuess() {
        Game game = new Game(new WordChooser());
        assertEquals(game.getWordToGuess(), "M_____");
    }

    @Test
    public void getRemainingAttempts() {
        Game game = new Game(new WordChooser());
        assertEquals(game.getRemainingAttempts(), Integer.valueOf(10));
    }

}
