module PrimeTable
  class Printer
    def self.print(table)
      padding = widest_cell_length(table)

      output  = table.map do |row|
        row.map { |cell| "%#{padding}s" % cell }.join
      end.join("\n")

      puts output
    end

    private

    def self.widest_cell_length(table)
      table.max_by { |c| c.map(&:to_i) }.max.to_s.length + 1
    end
  end
end
