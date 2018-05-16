require_relative 'input.rb'

class Calculator

  def initialize(input = Input.new)
    @input = input
    @factors = []
    @ans = []
  end

  def factorise(number)
    @input = number
    1.upto(number).each do |i|
      @factors.push(i) if number % i == 0
    end
  end

  def conversion
    @ans << 'Pling' if @factors.include?(3)
    @ans << 'Plang' if @factors.include?(5)
    @ans << 'Plong' if @factors.include?(7)
  end

  def factors
    @factors
  end

  def answer
    @ans
  end

end
