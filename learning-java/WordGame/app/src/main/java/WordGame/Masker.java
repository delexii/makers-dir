package WordGame;

import java.util.ArrayList;

public class Masker{
    public ArrayList<Character> guessedLetters = new ArrayList<Character>();
    public WordChooser chooser;
    public String chosenword;

    public String getMaskedWord(WordChooser chooser, ArrayList<Character> guessedLetters) {
        this.chooser = chooser;
        this.guessedLetters = guessedLetters;
        this.chosenword = chooser.getRandomWordFromDictionary();

        StringBuilder builder = new StringBuilder();
        for (int i = 0; i < this.chosenword.length(); i++) {
            Character currentLetter = chosenword.charAt(i);
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
