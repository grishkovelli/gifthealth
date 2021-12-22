require_relative '../../lib/reader.rb'

describe Reader do
  describe '#file_read' do
    subject { described_class.new(file).file_read }

    context 'when valid file' do
      let(:file) { 'spec/fixtures/test.txt' }

      it 'return an array of data' do
        expect(subject).to match_array(
          ["Nick A created\n", 
           "Mark B filled\n", 
           "Mark B filled\n", 
           "Mark B created\n"]
        )
      end
    end
  end
end
