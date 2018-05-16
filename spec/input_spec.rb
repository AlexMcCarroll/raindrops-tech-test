require 'printer'

describe Printer do
  subject(:printer) { Printer.new }

  let(:dummy_input_pling_plang) { double :input, number: 15 }

  describe '#print' do
    it 'prints the answer to stout' do
      expect { printer.print_answer }.to output('PlingPlang').to_stdout
    end
  end
end
