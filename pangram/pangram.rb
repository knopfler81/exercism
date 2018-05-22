class Pangram


  def self.pangram?(phrase)

    false if phrase.empty?

    alphabet    = ("a".."z")
    frequencies = Hash.new(0)
    times_true  = 0
    is_pangram  = 26

    cleared = phrase.downcase.gsub(/\W+|\d+/, '').gsub("_","")
    cleared.each_char { |c| frequencies[c] += 1 }

    alphabet.each { |a|
        frequencies.each {|k,v| times_true += 1 if a == k.to_s }
      }

    times_true == is_pangram
  end

end


module BookKeeping
  VERSION = 6
end
