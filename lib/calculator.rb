require_relative 'printer.rb'

class Calculator

  def initialize
    @ans = []
  end

  def conversion(num)
    @ans << 'Pling' if num % 3 == 0
    @ans << 'Plang' if num % 5 == 0
    @ans << 'Plong' if num % 7 == 0
    @ans << num if @ans.empty?
  end

  def answer
    @ans
  end

end
