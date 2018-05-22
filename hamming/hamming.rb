class Hamming


  def self.compute(original, mutation)
    raise ArgumentError if original.length != mutation.length

    difference = 0
    mutate = mutation.split("")

    original.each_char.with_index do |char, index|
      difference += 1 unless mutate[index] == char
    end
    difference
  end
end


  module BookKeeping
    VERSION = 1 # Where the version number matches the one in the test.
  end
