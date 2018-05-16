require 'raindrops'

describe Raindrops do
  subject(:raindrops) { Raindrops.new }

  let(:dummy_calculator_one) { double :calculator, factors: [1, 3] }
  let(:dummy_calculator_two) { double :calculator, factors: [1, 5] }
  let(:dummy_calculator_three) { double :calculator, factors: [1, 7] }
  let(:dummy_calculator_four) { double :calculator, factors: [1, 11] }


  describe 'determines whether a number has factors 3' do
    it 'determines factors includes 3' do
      raindrops.conversion(dummy_calculator_one)
      expect(calculator.answer).to be(true)
    end
    it 'determines factors does not include 3' do
      raindrops.conversion(dummy_calculator_four)
      expect(calculator.answer).to be(false)
    end
  end

  describe 'determines whether a number has factors 5' do
    it 'determines factors includes 5' do
      raindrops.conversion(dummy_calculator_two)
      expect(calculator.answer).to be(true)
    end
    it 'determines factors does not include 5' do
      raindrops.conversion(dummy_calculator_four)
      expect(calculator.answer).to be(false)
    end
  end

  describe 'determines whether a number has factors 7' do
    it 'determines factors includes 7' do
      raindrops.conversion(dummy_calculator_three)
      expect(calculator.answer).to be(true)
    end
    it 'determines factors does not include 7' do
      raindrops.conversion(dummy_calculator_four)
      expect(calculator.answer).to be(false)
    end
  end
end
