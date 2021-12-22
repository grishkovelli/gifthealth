require_relative '../../lib/data_collector.rb'

describe DataCollector do
  describe '#collect_data' do
    subject { described_class.new(data).collect_data }

    context 'when valid array' do
      let(:data) { ["Nick A created\n", 
        "Mark B filled\n", 
        "Mark B filled\n", 
        "Mark B created\n"]
      }

      it 'return an array of data' do
        expect(subject).to match_array(
          [["Mark B", "created"], 
           ["Mark B", "filled"], 
           ["Mark B", "filled"], 
           ["Nick A", "created"]]
        )
      end
    end
  end
end
