require_relative '../../lib/prime_table'

RSpec.describe PrimeTable::Printer do
  let(:table) do
<<-table
   1   2
  10 100
table
  end

  subject { described_class.print([[1,2], [10, 100]]) }

  it 'prints a formatted grid' do
    expect { subject }.to output(table).to_stdout
  end
end
