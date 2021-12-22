require_relative '../../lib/counter.rb'

describe Counter do
  describe '#count_values' do
    subject { described_class.new(hash).count_values }

    context 'when valid hash' do
      let(:hash) { { ["Mark", "B"]=>["created", "filled", "filled"], 
        ["Nick", "A"]=>["created"] }
      }

      it 'return a hash of data' do
        expect(subject).to eq(
          { ["Mark", "B"]=>[2, 10], ["Nick", "A"]=>[0, 0] }
        )
      end
    end
  end
end
