# Makers Apprenticeship Weeks 11 and 12


## Makers Learning Objectives

**Agile methodologies**

- [x]  Evaluate what constitutes Enough Design Up Front (EDUF) for the project.
- [x]  Compare EDUF with BDUF and NDUF and discuss how these might affect the outcome of the project.
- [x]  Link 'Incremental Development' with the concept of user stories and BDD.
- [x]  Link 'Iterative Development' with the concept of Agile planning.
- [x]  Apply Agile methodologies throughout the project.
- [x]  Identify a Minimum Viable Product (/Prototype) for your project.

**User stories**

- [x]  Express the application as a set of user stories before writing a line of code.

**Testing**

- [x]  Use user stories as the basis for writing feature tests.
- [x]  Apply outside-in testing using feature- and unit-testing frameworks.
- [x]  Achieve a high level of test coverage using a coverage framework.

**Using source code control**

- [x]  Implement a successful workflow pattern using a git branching strategy.
- [x]  Link source code control with successful team-working.

**Team working**

- [x]  Evaluate the effectiveness of pair programming in your project.
- [x]  Evaluate how pair programming supports reduction of WIP (work in progress).

## Applied Learnings

- Final engineering project: https://github.com/delexii/tiger-cubed-games
- Agile workflow: [https://trello.com/b/ILAFejyB/tiger-cubed-games](https://trello.com/b/ILAFejyB/tiger-cubed-games)

## Personal Learning Objectives

- [x]  Understand how to work with a java game engine
- [x]  Work in a new team of devs to develop a simple java game
- [x]  Define an initial prototype or minimum viable product
- [x]  Identify gaps in knowledge and refine them by taking on specific tickets
- [x]  Keep an open mind and have fun

## Things to celebrate

- [x]  building a simple game
- [x]  being creative
- [x]  having fun with the final project
- [x]  delivering a great presentation
- [x]  working well within a new team of devs
- [x]  staying organised and on track with individual objectives
- [x]  successfully completing the bootcamp
- [x]  feeling of achievement for seeing how far I have come over the last 12 weeks

## Emotions 

With this project being a new one, I was quite curious and determined to learn as much as I could. 

I feel like the final project has helped me solidify my understanding of java and the way in which agile practices can support the successful delivery of code projects. Throughout the two weeks, I felt challenged and motivated to perform at my best and to learn new things every day. The team dynamic was great and the fact that we all embraced knowledge sharing as one of our biggest team values and objectives was pretty encouraging. I felt proud of how everyone worked together and our final product demo.

Final presentation: [https://www.youtube.com/watch?v=RXSIiDJuVV8](https://www.youtube.com/watch?v=RXSIiDJuVV8)

## Progress and Learnings

> Learn libGDX
> 

libGDX is a framework for developing cross-platform games. So you can develop one code for different platforms, such as Android, iOS, Windows, Linux, macOS, and Web. It’s written in Java and provides a bunch of great functionality including drawing API’s, sound, asset handling, storage, etc.) for making game development much easier. It has sufficient

[documentation](https://libgdx.badlogicgames.com/documentation/) to get you started.

[https://classroom.udacity.com/courses/ud405/lessons/5358108551/concepts/53280791390923](https://classroom.udacity.com/courses/ud405/lessons/5358108551/concepts/53280791390923)

libgdx

- drawing APIs
- sound and asset handling
- user input mgmt
- allows game to run anywhere

> Screen logic
> 

Snake Game is a game that allows the user to manipulate an object "snake" and navigate that around the board collecting different tokens which can either increase or decrease the length of the snake when consumed. The snake must avoid collision with the edges of the screen or with itself.

LibGDX initializes a project with a class that extends from Application Adapter. It is actually better to extend it from the Game class, which inherits a lot of other setup tools from the framework.

ApplicationListener delegates the game to a screen. The screen class is used to define what a player is looking at, such as the main menu or the game screen.

```java
public interface Screen{
public void show (); //called when the screen becomes the current one
public void render (float delta);
public void resize (int width, int height);
public void pause ();
public void resume ();
public void hide ();
public void dispose ();
}
```

```java
// in order to not see all the metods every time we create a screen, 
// libGDX has a ScreenAdapter class that we can extend

public class EndGameScreen implements Screen // with all the methods
public class EndGameScreen extends ScreenAdapter // render and show
```

render method is called on every cycle and standard to 60fps. With every frame, the screen is being cleared from

> Project planning
> 
- [x]  communicate individual goals for the last project
- [x]  [brainstorm](https://docs.google.com/document/d/1AJqtVvRKy-G0bmuS2OkYHLRLc4piygYUz-p7nggh9cE/edit#) a feasible game idea
- [x]  decide the core MVP features of the project
- [x]  agree on team schedule and [ways of working](https://trello.com/b/ILAFejyB/final-project)
- [x]  plan the first sprint and identify key tickets
- [x]  research and decide the relevant java game engine to be used

> Project features
> 

Core MVP

- [x]  A user can see a game screen as a background
- [x]  A user can see an object on the screen
- [x]  A user can move the object by pressing `up`, `down`, `left` or `right`
- [x]  A user can end the game by directing the object towards the edges of the screen
- [x]  [MVP Demo](https://github.com/delexii/snake-game/blob/5f91c9a7e953d3cf1fcdc2eda962336d40780458/core/assets/MVP%20Demo.mov)

Extended MVP

- [x]  A user can see a welcome screen with two options
- [x]  A user can see a title on the welcome screen
- [x]  A user can click a `new game` button and be redirected to the main game screen
- [x]  A user can move the snake in any direction but backwards on itself
- [x]  A user can direct the snake to a good apple object and grow the snake's tail by one body segment
- [x]  A user can direct the snake to a rotten apple object and decrease the snake's tail by one body segment
- [x]  A user can lose the game if the body of the snake gets shortened to head and tail only
- [x]  A user can make the snake cross its own tail and lose segments of the body
- [x]  A user can see an endgame screen once the snake touches the edges of the screen
- [x]  A user can click `try again` to be redirected to the main game screen
- [x]  A user can click `exit` to close the game window

> Configuring a new laptop
> 
1. [Preparetocode.io](http://Preparetocode.io) - install all software needed
2. Install git using homebrew
3. Git setup from command line using makers instructions

[Setting up Git locally](https://www.notion.so/Setting-up-Git-locally-835aad4248c94725bd2df0d8cb085198)

1. Authenticate using brew install gh and gh auth login CLI

[https://docs.github.com/en/github-cli/github-cli/quickstart](https://docs.github.com/en/github-cli/github-cli/quickstart)

1. Install IntelliJ IDEA
2. Install Java for macOS Intel

## Useful resources

[https://codegym.cc/groups/posts/182-java-game-programming-for-beginners-where-to-start](https://codegym.cc/groups/posts/182-java-game-programming-for-beginners-where-to-start)

[https://www.youtube.com/watch?v=Rmvb4Hktv7U&ab_channel=TheDotEaters](https://www.youtube.com/watch?v=Rmvb4Hktv7U&ab_channel=TheDotEaters)

[https://happycoding.io/tutorials/libgdx/game-screens](https://happycoding.io/tutorials/libgdx/game-screens)

[https://www.scribd.com/document/276161829/LibGDX-Game-Development-By-Example-Sample-Chapter](https://www.scribd.com/document/276161829/LibGDX-Game-Development-By-Example-Sample-Chapter)