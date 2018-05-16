require 'calculator'

describe Calculator do
  subject(:calculator) { Calculator.new }

  let(:dummy_input) { double :input, number: 10 }

  describe 'gathers the factors of a number and puts them in an array' do
    it 'determines factors of a number' do
      calculator.factorise(dummy_input.number)
      expect(calculator.factors).to include(1, 2, 5)
    end
  end
end
