require_relative '../../lib/prime_table'

RSpec.describe PrimeTable::PrimeMultiplicationTable do
  describe 'a new table' do
    it 'delegates prime generation' do
      expect(PrimeTable::PrimeGenerator).to receive(:generate).with(3)

      described_class.new(3)
    end
  end

  describe '#table' do
    before do
      allow(PrimeTable::PrimeGenerator).to receive(:generate).with(3) { [2, 3, 5] }
    end

    subject { described_class.new(3).table }

    it 'returns a two dimensional array of factored primes' do
      expect(subject).to contain_exactly(
        [nil, 2, 3, 5],
        [2, 4, 6, 10],
        [3, 6, 9, 15],
        [5, 10, 15, 25]
      )
    end
  end

  describe '#print' do
    it 'delegates printing' do
      expect(PrimeTable::Printer).to receive(:print)

      described_class.new(3).print
    end
  end
end
