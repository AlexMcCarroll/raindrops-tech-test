require 'calculator'

describe Calculator do
  subject(:calculator) { Calculator.new }

  describe '#Pling' do
    it 'determines factors includes 3' do
      calculator.conversion(6)
      expect(calculator.answer).to include('Pling')
    end
    it 'determines factors does not include 3' do
      calculator.conversion(4)
      expect(calculator.answer).not_to include('Pling')
    end
  end

  describe '#Plang' do
    it 'determines factors includes 5' do
      calculator.conversion(10)
      expect(calculator.answer).to include('Plang')
    end
    it 'determines factors does not include 5' do
      calculator.conversion(4)
      expect(calculator.answer).not_to include('Plang')
    end
  end

  describe '#Plong' do
    it 'determines factors includes 7' do
      calculator.conversion(14)
      expect(calculator.answer).to include('Plong')
    end
    it 'determines factors does not include 7' do
      calculator.conversion(4)
      expect(calculator.answer).not_to include('Plong')
    end
  end
end
