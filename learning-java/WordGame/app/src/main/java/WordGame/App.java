/*
 * This Java source file was generated by the Gradle 'init' task.
 */
package WordGame;

public class App {
    

    public static void main(String[] args) {
        WordChooser chooser = new WordChooser();
        Game game = new Game(chooser);
        System.out.println(game.getWordToGuess());
    }
}
