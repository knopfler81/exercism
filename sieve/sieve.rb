class Sieve

  attr_reader :primes

  def initialize(given_number)
    @primes = prime_numbers(given_number)
  end

  private

  def prime_numbers(given_number)
    array = (2..given_number).to_a
    primes = []

    while array.any?

      prime = array.shift

      primes << prime

      array.reject! { |num| num % prime == 0 }
    end
      primes
  end
end

module BookKeeping
  VERSION = 1
end
