require_relative 'calculator.rb'

class Printer

  def initialize(calculator = Calculator.new)
    @calculator = calculator
  end

  def formatter
    @calculator.answer.each { |x| print x }
  end

  def reset
    @calculator.answer.clear
  end

  def print_answer(num)
    @calculator.conversion(num)
    self.formatter
    self.reset
  end
end
