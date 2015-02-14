require_relative '../../lib/prime_table'

RSpec.describe PrimeTable::PrimeMultiplicationTable do
  describe 'a new table' do
    it 'delegates prime generation' do
      expect(PrimeTable::PrimeGenerator).to receive(:generate).with(3)

      described_class.new(3)
    end
  end
end
