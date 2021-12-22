require_relative '../../lib/validator.rb'

describe Validator do
  describe '#file_exists' do
    subject { described_class.new(file).file_exists }

    context 'when valid file name' do
      let(:file) { 'spec/fixtures/test.txt' }

      it 'return nil' do
        expect(subject).to eq(file)
      end
    end

    context 'when invalid file name' do
      let(:file) { 'spec/fixtures/some.txt' }

      it 'raise StandardError' do
        expect{subject}.to raise_error StandardError
      end
    end
  end
end
