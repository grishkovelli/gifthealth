require_relative '../../lib/total_income.rb'

describe TotalIncome do
  describe '#total_income' do
    subject { described_class.new(hash).total_income }

    context 'when valid hash' do
      let(:hash) { { ["Mark", "B"] => [2, 10], ["Nick", "A"] => [0, 0] } }

      it 'return a hash of data' do
        expect(subject).to eq(
          { "Mark" => [2, 10], "Nick" => [0, 0] }
        )
      end
    end
  end
end
