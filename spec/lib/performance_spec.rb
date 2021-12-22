require_relative '../../lib/validator.rb'
require_relative '../../lib/reader.rb'
require_relative '../../lib/data_collector.rb'
require_relative '../../lib/data_grouping.rb'
require_relative '../../lib/counter.rb'
require_relative '../../lib/total_income.rb'
require_relative '../../lib/printer.rb'
require_relative '../../lib/performance.rb'

describe Perfomance do
  describe '#perform' do
    subject { described_class.new(file, Validator, Reader, 
              DataCollector, DataGrouping, 
              Counter, TotalIncome, Printer)
              .perform
    }

    context 'when valid classes' do
      let(:file) { 'spec/fixtures/test.txt' }

      it 'return a hash of data and print results' do
        expect(subject).to eq(
          { "Mark" => [2, 10], "Nick" => [0, 0] }
        )
      end
    end
  end
end
