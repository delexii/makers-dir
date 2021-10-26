package WordGame;

public class Game {

    WordChooser chooser;
    private Integer counter = 10;
    private String chosenword;

    // attribute passed in from another class
    public Game(WordChooser chooser) {
        this.chooser = chooser;
        this.chosenword = chooser.getRandomWordFromDictionary();
    }

    public String getWordToGuess() {
        StringBuilder builder = new StringBuilder();
        for (int i = 0; i < this.chosenword.length(); i++) {
            Character currentLetter = chosenword.charAt(0);
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

}