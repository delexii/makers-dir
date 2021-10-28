package WordGame;

import java.util.ArrayList;

public class Masker {

    public String random;
    public ArrayList<Character> guessedLetters = new ArrayList<Character>();

    public String getMaskedWord(String random, ArrayList<Character> guessedLetters) {

        this.guessedLetters = guessedLetters;

        StringBuilder builder = new StringBuilder();
        for (int i = 0; i < random.length(); i++) {
            Character currentLetter = random.charAt(i);
            if (i == 0) {
                builder.append(currentLetter);
            } else if (guessedLetters.indexOf(currentLetter) > -1) {
                builder.append(currentLetter);
            } else {
                builder.append("_");
            }
        }
        return builder.toString();
    }
}
