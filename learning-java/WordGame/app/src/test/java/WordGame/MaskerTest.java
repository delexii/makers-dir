package WordGame;

import org.junit.Test;
import static org.junit.Assert.*;
import static org.junit.Assert.assertEquals;
import java.util.ArrayList;

// import static org.junit.Assert.assertTrue;

public class MaskerTest {
    @Test
    public void testGetsWordToGuess() {
        Masker masker = new Masker();
        ArrayList<Character> guessedLetters = new ArrayList<Character>();
        guessedLetters.add('E');
        guessedLetters.add('V');
        assertEquals(masker.getMaskedWord("DEVELOPER", guessedLetters), "DEVE___E_");
    }
}
