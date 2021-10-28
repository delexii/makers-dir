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
        Game game = new Game(new Masker(), mocked);
        assertEquals(game.getWordToGuess(), "M_____");
    }

    @Test
    public void testgetRemainingAttempts() {
        Game game = new Game(new Masker(), new WordChooser());
        assertEquals(game.getRemainingAttempts(), Integer.valueOf(10));
    }

    @Test
    public void testguessLetterRight() {
        WordChooser mocked = mock(WordChooser.class);
        when(mocked.getRandomWordFromDictionary()).thenReturn("MAKERS");
        Game game = new Game(new Masker(), mocked);
        assertEquals(game.guessLetter('A'), true);
        assertEquals(game.counter, Integer.valueOf(10));
    }

    @Test
    public void testguessLetterWrong() {
        WordChooser mocked = mock(WordChooser.class);
        when(mocked.getRandomWordFromDictionary()).thenReturn("MAKERS");
        Game game = new Game(new Masker(), mocked);
        assertEquals(game.guessLetter('B'), false);
        assertEquals(game.counter, Integer.valueOf(9));
        assertTrue(game.getAll().isEmpty());
        // assertTrue(guessedLetters.isEmpty()); Can also import ArrayList util and add
        // the ArrayList
    }

    @Test
    public void testDisplaysLetterGuessed() {
        WordChooser mocked = mock(WordChooser.class);
        when(mocked.getRandomWordFromDictionary()).thenReturn("MAKERS");
        Game game = new Game(new Masker(), mocked);
        assertEquals(game.guessLetter('A'), true);
        assertEquals(game.getWordToGuess(), "MA____");
    }

    @Test
    public void testisGameLost() {
        WordChooser mocked = mock(WordChooser.class);
        when(mocked.getRandomWordFromDictionary()).thenReturn("MAKERS");
        Game game = new Game(new Masker(), mocked);
        for (int i = 0; i < 10; i++) {
            assertEquals(game.guessLetter('I'), false);
        }
        assertEquals(game.isGameLost(), true);
    }

    @Test
    public void testisGameWon() {
        WordChooser mocked = mock(WordChooser.class);
        when(mocked.getRandomWordFromDictionary()).thenReturn("MAKERS");
        Game game = new Game(new Masker(), mocked);
        assertEquals(game.chosenWord, "MAKERS");
        assertEquals(game.guessLetter('A'), true);
        assertEquals(game.guessLetter('K'), true);
        assertEquals(game.guessLetter('E'), true);
        assertEquals(game.guessLetter('R'), true);
        assertEquals(game.guessLetter('S'), true);
        assertEquals(game.isGameWon(), true);
    }

}
