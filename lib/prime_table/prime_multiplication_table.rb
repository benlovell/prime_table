module PrimeTable
  class PrimeMultiplicationTable
    def initialize(number_of_primes)
      @primes = PrimeGenerator.generate(number_of_primes)
    end

    def print
    end
  end
end
