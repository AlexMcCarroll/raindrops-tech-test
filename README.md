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

![alt-text](https://github.com/AlexMcCarroll/raindrops-tech-test/blob/master/raindrops.png)

## Instructions:

- Make a new directory and `git clone https://github.com/AlexMcCarroll/raindrops-tech-test.git`
- Run a Ruby REPL such as `irb` and type the following:
- `require_relative ./lib/printer.rb`
- `require_relative ./lib/input.rb`
- `require_relative ./lib/calculator.rb`
- `printer = Printer.new`
- `printer.print_answer(x)` (x being the number you want to input)


## Example output:
```
$ irb
> require_relative ./lib/printer.rb
> require_relative ./lib/input.rb
> require_relative ./lib/calculator.rb
> printer = Printer.new
 => #<Printer:0x00007ff5c09b1a00 @calculator=#<Calculator:0x00007ff5c09b19d8 @input=#<Input:0x00007ff5c09b19b0 @number=nil>, @factors=[], @ans=[]>, @input=#<Input:0x00007ff5c09b18c0 @number=nil>>
> printer.print_answer(15)
PlingPlang => []
> printer.print_answer(5)
Plang => []
> printer.print_answer(19)
19 => []
```

## Test Coverage:

![alt-text](https://github.com/AlexMcCarroll/raindrops-tech-test/blob/master/test_coverage.png)
