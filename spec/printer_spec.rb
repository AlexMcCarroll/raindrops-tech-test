require 'printer'

describe Printer do
  subject(:printer) { Printer.new }

  let(:dummy_calculator) { double :calculator, answer: ["Pling", "Plang"] }

  describe '#print' do
    it 'prints the answer to stout' do
      expect { printer.print_answer(15) }.to output('PlingPlang').to_stdout
    end
    it 'prints number if no factors equal 3, 5, or 7' do
      expect { printer.print_answer(34) }.to output("34").to_stdout
    end
  end
end
