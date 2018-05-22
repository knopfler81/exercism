class Complement

  RNA = { "G" => "C", "C" => "G", "T" => "A", "A" => "U" }

  def self.of_dna(strand)
    return "" unless valid?(strand)
    strand.chars.map {|c| RNA[c]}.join
  end

  def self.valid?(strand)
    strand.chars.all? {|c| RNA.keys.include? c }
  end
end

module BookKeeping
  VERSION = 1
end
