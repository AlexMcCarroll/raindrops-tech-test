require_relative 'calculator.rb'
require_relative 'input.rb'

class Printer

  def initialize(calculator = Calculator.new, input = Input.new)
    @calculator = calculator
    @input = input
  end

  def formatter
    @calculator.answer.each { |x| print x }
  end

  def print_answer(num)
    @input.input_number(num)
    @calculator.factorise(num)
    @calculator.conversion
    self.formatter
  end
end
