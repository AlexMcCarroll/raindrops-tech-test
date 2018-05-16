require 'printer'

describe Printer do
  subject(:printer) { Printer.new }

  let(:dummy_calculator) { double :calculator, answer: ["Pling", "Plang"] }

  describe '#print' do
    it 'prints the answer to stout' do
      expect { printer.print_answer(15) }.to output('PlingPlang').to_stdout
    end
  end
end
