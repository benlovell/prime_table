module PrimeTable
  class Printer
    def self.print(table)
      padding = table.max_by { |c| c.map(&:to_i) }.max.to_s.length + 1

      output  = table.map do |row|
        row.map { |cell| "%#{padding}s" % cell }.join
      end.join("\n")

      puts output
    end
  end
end
