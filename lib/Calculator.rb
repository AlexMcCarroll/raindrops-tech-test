require_relative 'input.rb'

class Calculator

  def initialize(input = Input.new)
    @input = input
    @factors = []
    @answer = []
  end

  def factorise(number)
    @input = number
    1.upto(number).each do |i|
      @factors.push(i) if number % i == 0
    end
  end

  def conversion
    @answer << 'Pling' if @factors.include?(3)
    @answer << 'Plang' if @factors.include?(5)
    @answer << 'Plong' if @factors.include?(7)
  end

  def factors
    @factors
  end

  def answer
    @answer
  end

end
