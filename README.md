# Bank Tech Test

This is a Tech test for week 10 of Makers Academy.

## Tech

This project is being written in Vanilla Ruby.

Testing is being run by RSpec, project is written with TDD as a focus - 8 examples, 0 failures.

Coverage is performed by SimpleCov - 73 / 73 LOC (100.0%) covered.

Linting is performed by Rubocop - 8 files inspected, no offenses detected.

## User Criteria

The following User Criteria was used to construct the feature test that dictated the flow of the rest of the app:

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
The feature test and the user stories were built with that final output in mind.

## User Stories

These will be marked completed as the project develops.

**COMPLETED**
```
As a User,
So that I can store money on a specific date,
I would like to be able to deposit money (1000).
```
**COMPLETED**
```
As a User,
So that I can store more money on a different date,
I would like to be able to deposit more money (2000).
```
**COMPLETED**
```
As a User,
So that I can take money out of my account on a specific date,
I would like to withdraw money (500).
```
**COMPLETED**
```
As a User,
So that I can see my transaction history,
I would like to print out a Bank Statement.
```

## How to run the code

To run this app, simple fork or clone this repo, run bundle install and access it in the command line.
