require_relative 'input.rb'

class Calculator

  def initialize(input = Input.new)
    @input = input
    @factors = []
    @ans = []
  end

  def factorise(num)
    @input.number = num
    1.upto(num).each do |i|
      @factors.push(i) if num % i == 0
    end
  end

  def conversion
    @ans << 'Pling' if @factors.include?(3)
    @ans << 'Plang' if @factors.include?(5)
    @ans << 'Plong' if @factors.include?(7)
    @ans << @input.number if @ans.empty?
  end

  def answer
    @ans
  end

  def factors
    @factors
  end

end
