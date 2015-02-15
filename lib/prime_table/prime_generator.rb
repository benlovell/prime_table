module PrimeTable
  class PrimeGenerator
    def self.generate(number_of_primes)
      [2].tap do |primes|
        counter = 1

        until primes.count == number_of_primes
          number = primes.last + counter

          if (2...number).any? { |i| number % i == 0 }
            counter += 1
          else
            primes << number
            counter = 1
          end
        end
      end
    end
  end
end
