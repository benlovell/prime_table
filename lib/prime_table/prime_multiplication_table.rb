module PrimeTable
  class PrimeMultiplicationTable
    attr_reader :primes

    def initialize(number_of_primes)
      @primes = PrimeGenerator.generate(number_of_primes)
    end

    def table
      @table ||= begin
        build_grid(primes.count + 1).tap do |grid|
          grid.each_with_index do |row, row_index|
            row.each_with_index do |cell, column_index|
              next if starting_cell?(row_index, column_index)

              assign_cell(grid, row_index, column_index)
            end
          end
        end
      end
    end

    def print
      Printer.print(table)
    end

    private

    def assign_cell(grid, row, column)
      grid[row][column] = begin
        if row.zero?
          prime_at(column)
        elsif column.zero?
          prime_at(row)
        else
          prime_at(column) * prime_at(row)
        end
      end
    end

    def prime_at(index)
      primes[index - 1]
    end

    def starting_cell?(row, column)
      row.zero? && column.zero?
    end

    def build_grid(cells)
      Array.new(cells).map { Array.new(cells) }
    end
  end
end
