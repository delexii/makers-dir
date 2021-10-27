package WordGame;

import org.junit.Test;
import static org.junit.Assert.*;
import static org.mockito.Mockito.*;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

public class GameTest {
    @Test
    public void testGetsWordToGuess() {
        WordChooser mocked = mock(WordChooser.class);
        when(mocked.getRandomWordFromDictionary()).thenReturn("MAKERS");
        Game game = new Game(mocked);
        assertEquals(game.getWordToGuess(), "M_____");
    }

    @Test
    public void testgetRemainingAttempts() {
        Game game = new Game(new WordChooser());
        assertEquals(game.getRemainingAttempts(), Integer.valueOf(10));
    }

    @Test
    public void testguessLetterRight() {
        WordChooser mocked = mock(WordChooser.class);
        when(mocked.getRandomWordFromDictionary()).thenReturn("MAKERS");
        Game game = new Game(mocked);
        assertEquals(game.guessLetter('A'), true);
        assertEquals(game.counter, Integer.valueOf(10));
    }

    @Test
    public void testguessLetterWrong() {
        WordChooser mocked = mock(WordChooser.class);
        when(mocked.getRandomWordFromDictionary()).thenReturn("MAKERS");
        Game game = new Game(mocked);
        assertEquals(game.guessLetter('B'), false);
        assertEquals(game.counter, Integer.valueOf(9));
        assertTrue(game.getAll().isEmpty());
        // assertTrue(guessedLetters.isEmpty()); Can also import ArrayList util and add
        // the ArrayList
    }
}
