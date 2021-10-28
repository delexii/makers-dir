package WordGame;

import java.util.ArrayList;

public class Game {

    WordChooser chooser;
    // public Boolean is_finished = false;
    public Integer counter = 10;
    private String chosenword;
    public ArrayList<Character> guessedLetters = new ArrayList<Character>();

    // attribute passed in from another class
    public Game(WordChooser chooser) {
        this.chooser = chooser;
        this.chosenword = chooser.getRandomWordFromDictionary();
    }

    public Boolean isGameWon() {
        String placeholder = this.getWordToGuess();
        if (placeholder.indexOf('_') == -1) {
            return true;
        } else {
            return false;
        }
    }

    public Boolean isGameLost() {
        if (counter == 0) {
            return true;
        } else {
            return false;
        }
    }

    public String getWordToGuess() {
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

    public Integer getRemainingAttempts() {
        return this.counter;
    }

    public Boolean guessLetter(Character letter) {
        if (this.chosenword.indexOf(letter) == -1) {
            counter--;
            return false;
        } else {
            guessedLetters.add(letter);
            return true;
        }
    }

    public ArrayList<Character> getAll() {
        return guessedLetters;
    }

}