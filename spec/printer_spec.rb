require 'printer'

describe Printer do
  subject(:printer) { Printer.new }

  let(:dummy_calculator) { double :calculator, answer: ["Pling", "Plang"] }

  describe '#print' do
    it 'prints the answer to stdout' do
      expect { printer.print_answer(15) }.to output('PlingPlang').to_stdout
    end
    it 'prints number if no factors equal 3, 5, or 7' do
      expect { printer.print_answer(34) }.to output("34").to_stdout
    end
    it 'resets and prints only one answer to stdout' do
      printer.print_answer(4)
      expect { printer.print_answer(15) }.to output('PlingPlang').to_stdout
    end
  end
end
