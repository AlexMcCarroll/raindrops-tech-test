require 'input'

describe Input do
  subject(:input) { Input.new }

  describe '#input' do
    it 'number is input by user' do
      input.input_number(10)
      expect(input.number).to be(10)
    end
  end
end
