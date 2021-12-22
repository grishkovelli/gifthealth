require_relative '../../lib/data_grouping.rb'

describe DataGrouping do
  describe '#group_data' do
    subject { described_class.new(data).group_data }

    context 'when valid array' do
      let(:data) { [["Mark B", "created"], 
        ["Mark B", "filled"], 
        ["Mark B", "filled"], 
        ["Nick A", "created"]]
      }

      it 'return a hash of data' do
        expect(subject).to eq(
          { ["Mark", "B"] => ["created", "filled", "filled"], 
           ["Nick", "A"] => ["created"] }
        )
      end
    end
  end
end
