require 'printer'

describe Printer do
  subject(:printer) { Printer.new }

  let(:dummy_calculator_pling_plang) { double :calculator, answer: 'PlingPlang' }

  describe '#print' do
    it 'prints the answer to stout' do
      dummy_calculator_pling_plang.answer
      expect { printer.print_answer }.to output('PlingPlang').to_stdout
    end
  end
end
