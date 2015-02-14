require_relative '../../lib/prime_table'

RSpec.describe PrimeTable::PrimeMultiplicationTable do
  let(:table) do
<<-table
'   2  3  5'
'2  4  6 10'
'3  6  9 15'
'5 10 15 25'
table
  end

  subject { described_class.new(3) }

  it 'prints a multiplication table of three primes' do
    pending
    expect { subject.print }.to output(table).to_stdout
  end
end
