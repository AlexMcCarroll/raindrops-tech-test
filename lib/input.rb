class Input

  attr_accessor :number

  def initialize
    @number = []
  end

  def get_number
    print 'Input any number: '
    input = gets.chomp
    @number.push(input.to_i)
  end

end
