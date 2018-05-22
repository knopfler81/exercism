class Phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    splitted = @phrase.downcase.scan(/\b[\w']+\b/)
    frequency = Hash.new(0)
    splitted.each {|word| frequency[word] += 1}
    frequency
  end

end

module BookKeeping
  VERSION = 1
end
