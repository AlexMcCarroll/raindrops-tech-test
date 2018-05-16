class Input

  attr_accessor :number

  def initialize
    @number = number
  end

  def get_number
    print 'Input any number: '
    input = gets.chomp
    @number = input.to_i
  end

end
