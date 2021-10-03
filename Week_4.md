# Makers Apprenticeship Week 4

## Makers Learning Objectives

- [x]  Review another person's code and learn from what they read
- [x]  Review another person's code and give them meaningful feedback
- [x]  Explain some basic OO principles and tie them to high level concerns (e.g. ease of change)
- [x]  Break one class into two classes that work together, while maintaining test coverage
- [x]  Test classes in isolation using mocking and dependency injection
- [x]  Apply some basic OOP principles in tightly focused exercises

## Applied Learnings

- Code Review: [Reviewed a peer's airport challenge and provided feedback](https://github.com/makersacademy/airport_challenge/pull/2237/files)
- Encapsulation: [Secret Diary](https://github.com/delexii/makers-dir/tree/main/object-oriented-design/secret_diary)
- Dependency injection: [Calculator](https://github.com/delexii/makers-dir/tree/main/object-oriented-design/calculator)
- Mocking: [Oystercard pair challenge](https://github.com/delexii/makers-dir/tree/main/object-oriented-design/oystercard)
- Domain Model Diagram: [Notebook Program](https://github.com/delexii/makers-dir/tree/main/object-oriented-design/notebook/lib)
- Refactoring: [Takeaway Challenge](https://github.com/delexii/takeaway-challenge)

[**Takeaway Challenge**](https://www.notion.so/Takeaway-Challenge-75400eaaf9d3494390e22c75eb4083e0)

## Personal Learning Objectives

- [x]  learn about gem files/ what they do and how we use them
- [x]  review someone else's code and provide meaningful feedback
- [x]  test-drive two classes that work together
- [x]  test-drive one class then extract that into multiple objects that work together
- [x]  encapsulate program behaviours into cohesive classes.
- [x]  write useful and easy to understand tests using TDD
- [x]  improve rspec testing coverage
- [x]  implement feature tests using rspec file kapiboro(web testing framework)
- [x]  feature test real instances of classes
- [x]  use doubles and test classes in isolation
- [x]  be able to explain what dependency injection is and how it works
- [x]  understand key points related to abstraction, polymorphism and inheritance

## Things to celebrate

- [x]  building a practical using multiple classes from scratch
- [x]  building a functional takeaway program using Twilio API
- [x]  learn how to set up and use ENV variables
- [x]  thankful for one of our colleagues taking his time to explain vs code and how to add a ode formatter for ruby on it
- [x]  begin to think about method inputs and outputs
- [x]  being able to summarise user stories into classes and methods
- [x]  being able to write easy to understand unit tests using rspec
- [x]  being able to implement test doubles
- [x]  understanding dependency injection and applying it to a simple program
- [x]  maintaining my tests DRY using let statements
- [x]  applying before/end blocks to different contexts to avoid repeating code lines
- [x]  learn useful vscode shortcuts

    Shift Command P on VSCODE

    Command + K + S = Keyboard shortcuts panel

- [x]  using coverage (simplecov) on my tests
- [x]  coming across OneTab which saves me so much time when it comes to organising my tabs and following through with my reading list
- [x]  not giving up this week and putting in the extra hours to complete my learning and understanding of various new concepts

## Emotions

There is no such thing as “perfect” code—there is only better code.

I have really enjoyed having more time to put all the learning accumulate so far into practice. I felt challenged in so many different ways and I have certainly expanded my knowledge a whole lot this week.

I am a huge fan of TDD now! I think it just makes the process a lot easier to understand and the implementation of programs a lot cleaner. 

I would like to gain a better understanding of code reviews and how they work in practice. The task we had to complete this week in terms of reading someone else's code and providing feedback seemed quite complex and a bit difficult not having the person's context explained.

I think I can certainly improve my domain model diagramming by approach each problem with a plan and setting some clear directions for my code before implementing it.

## Progress and Learnings

> General learning

- be able to plan a project from scratch (user story - deployment)
- never do more than the user story instructs
- git add/git reset
- using git from vscode to manage changes and push to remote repositories

> Code review

- no concrete starting point
- README  - what is the project about, how to run it, how to run the test files
- focus on providing constructive criticism

> Object-Oriented Design

Introduction to domain model diagrams

- diagram = visual representation of workflow/sequence of events
- domain = environment, blueprint
- shapes for the objects of interest and arrows to point the interaction between them (methods)

    instance variables = states of classes

    methods = behaviour of classes

- Unified Modelling Language when working with other devs
- black box model or sequence diagram = what goes in and out of a method

> Dependency Injection

```ruby
class Airport
  def initialize(planes, weather)
		@planes = []
		@weather = Weather.new
end
```

- instead of hard coding a dependency on another class (example with airport and weather above), we provide a new instance of that class we are dependent on as a default argument of the initialize method
- a strict dependency (declared within the class as an instance variable) can be tricky when it comes to testing as it cannot be done it isolation
- similarly, if the other class has bugs that will leak into our code
- this allows us to override the class that we are dependent on  i.e. weather if needed when we initialize our class
- avoid *tight coupling* and keep in line with the *OOP Principle of Encapsulation* low coupling high cohesion

```ruby
class Airport
  def initialize(planes = [], weather = Weather.new)
		@planes = planes
		@weather = weather
end
```

> Mocking

- test doubles are objects that mimic the behaviour of real objects in your program that you dictate and have full control over
- use test doubles to isolate my tests and check interaction between classes or objects
- double is overriding the weather
- it has nothing to do with *let statement,* although a double can also be nested in a let as seen below to avoid repetition

```ruby
before (:each) do
      @weather_double = double("weather", :generate => 1)
      @airport = Airport.new([], @weather_double)
    end
```

```ruby
if "a plane can land at an airport" do
	weather_double = double("weather", :generate => 1)
	airport = Airport.new([], weather_double)
	airport.land("cool plane")
	expect(airport.planes).to eq(["cool planes"])
end
```

> Let statement

- used to ensure code is not repeated

```ruby
let(:weather) {double :weather, :get_weather => “sunny”}
let(:airport) {Airport.new([], weather}
```

> Pairing Challenge Learnings

1. How to setup Gemfile

    A Gemfile describes the gem dependencies required to execute associated Ruby code.

    - run bundle init command from terminal
    - install rvm and rspec gems if needed
    - check ruby -v and add that in the gemfile generated
    - add gem 'rspec' to the group blocks test and development
    - check/add gem source
    - run bundle install from terminal to generate a Gemfile.lock file
    - run bundle from command line to check that all the gems have been successfully installed
2. How to setup RSpec
    - run rspec —init from terminal to install the rspec conventional files
    - the . is the current directory, while .. signifies the parent directory.
3. Implement first test (feature and unit) and watch it fail
    - use a stack trace to debug an error
    - expect { "add method" }.to change { "another method" }.to 10
4. Use TDD to write unit tests that fail and then build the simplest code to make them pass. Refactor
5. Initialize  - each instance of the Class that gets created comes automatically with a default attribute. So when you create a new Oystercard instance of the Oystercard class, that calls an initialize method automatically which takes in an argument balance with the value set to 0

    The initialize method is part of the object-creation process in Ruby & it allows you to set the initial values for an object.

    In other programming languages they call this a “constructor”.

6. Using constants

    [http://rubylearning.com/satishtalim/ruby_constants.html](http://rubylearning.com/satishtalim/ruby_constants.html)

7. Raising errors

    [https://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/41-exceptions/lessons/92-handling](https://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/41-exceptions/lessons/92-handling)

    [https://stackoverflow.com/questions/19960831/rspec-expect-vs-expect-with-block-whats-the-difference](https://stackoverflow.com/questions/19960831/rspec-expect-vs-expect-with-block-whats-the-difference)

## Useful resources

[The 4 Pillars of OOD](https://www.freecodecamp.org/news/object-oriented-programming-concepts-21bb035f7260/)

[Bundler Starter](https://bundler.io/)

[RVM Starter](https://rvm.io/integration/bundler)

[Rubygems Documentation](https://guides.rubygems.org/rubygems-basics/#viewing-documentation)

[UML Sequence Diagram](https://www.youtube.com/watch?v=pCK6prSq8aw)

[Ruby Constructor](https://www.geeksforgeeks.org/ruby-constructors/#:~:text=A%20constructor%20is%20a%20special,the%20time%20of%20object%20creation)

[Programming Course](https://online-learning.harvard.edu/course/cs50-introduction-computer-science?delta=0)

[Encapsulation, Polymorphism, and Abstraction in Ruby](https://medium.com/swlh/encapsulation-polymorphism-and-abstraction-in-ruby-90a33b44a065)

[Code Review](https://google.github.io/eng-practices/review/)

[Code Review Practices](https://google.github.io/eng-practices/review/reviewer/looking-for.html)

[Practical Object Oriented Design](https://www.poodr.com/)

[Wireframe](https://wireframe.cc/)

[Test Coverage](https://github.com/makersacademy/course/blob/main/pills/test_coverage.md)

[Test Coverage Martin Fowler](https://martinfowler.com/bliki/TestCoverage.html)