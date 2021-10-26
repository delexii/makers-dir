package WordGame;

import java.util.Random;

public class Game {

    private String word;
    private Integer counter = 10;
    static final String[] DICTIONARY = { "MAKERS", "CANDIES", "DEVELOPER", "LONDON" };

    public Game(String word) {
        this.word = word;
    }

    public String getWordToGuess() {
        StringBuilder builder = new StringBuilder();
        for (int i = 0; i < this.word.length(); i++) {
            Character currentLetter = word.charAt(0);
            if (i == 0) {
                builder.append(currentLetter);
            } else {
                builder.append("_");
            }
        }
        return builder.toString();
    }

    public Integer getRemainingAttempts() {
        return this.counter;
    }

    public String getRandomWordFromDictionary() {
        Random rand = new Random();
        return DICTIONARY[rand.nextInt(DICTIONARY.length)];
    }

}