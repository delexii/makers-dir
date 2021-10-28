package WordGame;

import java.util.ArrayList;

public class Game {

    Masker masker;
    WordChooser chooser;
    String chosenWord;
    String placeholder;

    public Integer counter = 10;
    public ArrayList<Character> guessedLetters = new ArrayList<Character>();

    // attribute passed in from another class
    public Game(Masker masker, WordChooser chooser) {
        this.masker = masker;
        this.chooser = chooser;
        this.chosenWord = chooser.getRandomWordFromDictionary();
    }

    public Boolean isGameWon() {
        this.placeholder = this.getWordToGuess();
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
        return this.masker.getMaskedWord(this.chosenWord, this.guessedLetters);
    }

    public Integer getRemainingAttempts() {
        return this.counter;
    }

    public Boolean guessLetter(Character letter) {
        if (this.chosenWord.indexOf(letter) != -1) {
            this.guessedLetters.add(letter);
            return true;
        } else {
            counter--;
            return false;
        }
    }

    public ArrayList<Character> getAll() {
        return guessedLetters;
    }

}