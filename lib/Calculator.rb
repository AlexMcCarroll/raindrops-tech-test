require_relative 'input.rb'

class Calculator
  attr_accessor :factors

  def initialize(input = Input)
    @input = input
    @factors = []
  end

  def factorise(number)
    @input = number
    1.upto(number).each do |i|
      if number % i == 0
        @factors.push(i)
      end
    end
  end

end
