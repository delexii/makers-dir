# Oystercard

## What the program is

- [x] an electronic payment program
- [x] A smart card that allows users to add money and use that to pay for public transport services across London

## Key features:

- Add money
- Deduct money for payments
- View balance

## How to install the program

Compatibility:
Ruby version: 3.0

- fork this repo
- git clone path-to-your-repo
- `command_to_install_dependencies` (e.g. `bundle`)

## How to run the tests

- `test_command` (e.g. `rspec`)

## Weekly challenge process

Set up the project:

- [x] Create a Gemfile
- [x] Create RSpec conventional files
- [x] Review debugging basics

Create a basic Oyster card:

- [x] Add the balance
- [x] Enable top up functionality
- [x] Enforce maximum balance
- [x] Deduct the money

Add touch in/out functionality:

- [x] Add touch in/out support
- [x] Checking minimum balance on touch in
- [x] Charging for the journey

Record the journeys

- [x] Saving the entry station
- [x] Adding journey history
- [x] Creating the station class

Refactor to extract Journey class

- [ ] Handling a journey without a touch out

Refactoring: get the code into shape

- [ ] Extracting the journey log out of the Oystercard

Make fares depends on zones

- [ ] Calculating the fare between zones


## Pairing Challenge Personal Learnings

1. How to setup Gemfile

A Gemfile describes the gem dependencies required to execute associated Ruby code.

- run bundle init command from terminal

- install rvm and rspec gems if needed

- check ruby -v and add that in the gemfile generated

- add gem 'rspec' to the group blocks test and development

- check/add gem source

- run bundle install from terminal to generate a Gemfile.lock file

- run bundle from command line to check that all the gems have been successfully installed

2.  How to setup RSpec

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

    [Ruby Constants](http://rubylearning.com/satishtalim/ruby_constants.html)

7. Raising errors

    [Ruby Exceptions](https://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/41-exceptions/lessons/92-handling)

    [Ruby Expect Syntax](https://stackoverflow.com/questions/19960831/rspec-expect-vs-expect-with-block-whats-the-difference)