require 'input'

describe Input do
  subject(:input) { Input.new }

  describe 'get a number' do
    it 'get_number function outputs to stdout' do
      expect { input.get_number }.to output('Input any number: ').to_stdout
    end
  end
end
