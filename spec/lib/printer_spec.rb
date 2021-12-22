require_relative '../../lib/printer.rb'

describe Printer do
  describe '#print_values' do
    subject { described_class.new(hash).print_values }

    context 'when valid hash' do
      let(:hash) { { "Mark" => [2, 10], "Nick" => [0, 0] } }

      it 'return a hash of data and print values' do
        expect(subject).to eq(
          { "Mark" => [2, 10], "Nick" => [0, 0] }
        )
      end
    end
  end
end
