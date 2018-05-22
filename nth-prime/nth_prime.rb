class Prime

attr_reader :primes

  def self.nth(num)
    raise ArgumentError if num < 1
    # I will need help here...
  end
end

module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end
