require_relative 'calculator.rb'

class Printer

  def initialize(calculator = Calculator.new)
    @calculator = calculator
  end

  def print_answer
    print @calculator.answer
  end

end
