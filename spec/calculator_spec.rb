require 'calculator'

describe Calculator do
  subject(:calculator) { Calculator.new }

  let(:dummy_input) { double :input, number: 4 }
  let(:dummy_input_pling) { double :input, number: 6 }
  let(:dummy_input_plang) { double :input, number: 10 }
  let(:dummy_input_plong) { double :input, number: 14 }

  describe '#factorise' do
    it 'determines factors of a number' do
      calculator.factorise(dummy_input.number)
      expect(calculator.factors).to include(1, 2)
    end
  end

  describe '#Pling' do
    it 'determines factors includes 3' do
      calculator.factorise(dummy_input_pling.number)
      calculator.conversion
      expect(calculator.answer).to include('Pling')
    end
    it 'determines factors does not include 3' do
      calculator.factorise(dummy_input.number)
      calculator.conversion
      expect(calculator.answer).not_to include('Pling')
    end
  end

  describe '#Plang' do
    it 'determines factors includes 5' do
      calculator.factorise(dummy_input_plang.number)
      calculator.conversion
      expect(calculator.answer).to include('Plang')
    end
    it 'determines factors does not include 5' do
      calculator.factorise(dummy_input.number)
      calculator.conversion
      expect(calculator.answer).not_to include('Plang')
    end
  end

  describe '#Plong' do
    it 'determines factors includes 7' do
      calculator.factorise(dummy_input_plong.number)
      calculator.conversion
      expect(calculator.answer).to include('Plong')
    end
    it 'determines factors does not include 7' do
      calculator.factorise(dummy_input.number)
      calculator.conversion
      expect(calculator.answer).not_to include('Plong')
    end
  end
end
