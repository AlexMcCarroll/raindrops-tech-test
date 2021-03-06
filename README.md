[![Maintainability](https://api.codeclimate.com/v1/badges/1d5216502414ddd0e1f4/maintainability)](https://codeclimate.com/github/AlexMcCarroll/raindrops-tech-test/maintainability)

# Raindrops Tech Test

This is a simple command-line tool written in Ruby which takes as its input a number (x) and converts it to a string, the contents of which depend on the numbers factors:

- if the number has a factor of 3, output 'Pling'
- if the number has a factor of 5, output 'Plang'
- if the number has a factor of 7, output 'Plong'
- if the number does not have any of the above as a factor simply return the numbers digits

Examples:
- 28's factors are 1, 2, 4, 7, 14 and 28: this would be a simple 'Plong'
- 30's factors are 1, 2, 3, 5, 6, 10, 15, 30: this would be a 'PlingPlang'
- 34 has four factors: 1, 2, 17, and 34: this would be '34'

## Domain Model:

![alt-text](https://github.com/AlexMcCarroll/raindrops-tech-test/blob/master/diagram.png)

## Logic:

- The number (x) to be converted is entered into the terminal via the `print_answer` method located in the printer class. This class is responsible for what is input and output in the terminal.
- The number (x) is then handled by the calculator class which is responsible for determining whether or not the number is divisible by 3, 5, or 7. This logic is handled by the `conversion` method. Once the answer has been converted, it is passed back to the printer class and is formatted and then output to the terminal.
- Other methods include the `reset` method which is responsible for clearing the array so many numbers can be tested within the same instance of the print object.
- Overall, I think the use of 2 classes (rather than 1) follows the single responsibility principle - a class that handles what is printed to the console, and one that handles the logic.

*N.B. Following SRP, I started this project with 4 classes, however I later found that having only 2 was cleaner and required a more simple model to achieve the same goal.*

## Instructions:

- Make a new directory and `git clone https://github.com/AlexMcCarroll/raindrops-tech-test.git`
- Run `bundle install`
- Run a Ruby REPL such as `irb` and type the following:
- `require_relative './lib/printer.rb'`
- `require_relative './lib/calculator.rb'`
- `printer = Printer.new`
- `printer.print_answer(x)` (x being the number you want to input)


## Example output:
```
$ irb
> require_relative './lib/printer.rb'
> require_relative './lib/calculator.rb'
> printer = Printer.new
 => #<Printer:0x00007faae11a36f8 @calculator=#<Calculator:0x00007faae11a36d0 @ans=[]>>
> printer.print_answer(5)
 Plang => []
> printer.print_answer(19)
 19 => []
> printer.print_answer(315)
 PlingPlangPlong => []
```

## Test Suite:

RSpec:
![alt-text](https://github.com/AlexMcCarroll/raindrops-tech-test/blob/master/tests.png)
