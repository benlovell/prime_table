module PrimeTable
  class PrimeMultiplicationTable
    def initialize(number_of_primes)
      @primes = PrimeGenerator.generate(number_of_primes)
    end

    def table
      @table ||= begin
        Array.new(@primes.count + 1).map { Array.new(@primes.count + 1) }.tap do |grid|
          grid.each_with_index do |row, row_index|
            row.each_with_index do |cell, column_index|
              next if row_index == 0 && column_index == 0

              if row_index == 0
                grid[row_index][column_index] = @primes[column_index - 1]
              elsif column_index == 0
                grid[row_index][column_index] = @primes[row_index - 1]
              else
                grid[row_index][column_index] = @primes[column_index - 1] * @primes[row_index - 1]
              end
            end
          end
        end
      end
    end

    def print
      Printer.print(table)
    end
  end
end
