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

- [x] Handling a journey without a touch out

Refactoring: get the code into shape

- [x] Extracting the journey log out of the Oystercard

Make fares depends on zones

- [x] Calculating the fare between zones
