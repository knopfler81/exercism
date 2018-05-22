class Bob

  def initialize(remark)
    @remark = remark
  end

  def self.upcased_remark?(remark)
    counter = 0
    remark.each_char do |char|
      if char == char.upcase
        counter += 1
      end
    end
    remark.length == counter ? true : false
  end

  def self.hey(remark)
    if remark.strip.empty?
      'Fine. Be that way!'
    elsif (self.upcased_remark?(remark) == true) && (remark.end_with?("?"))
      'Whoa, chill out!'
    elsif self.upcased_remark?(remark) == true
      'Whoa, chill out!'
    elsif remark.end_with?("?")
      'Sure.'
    else
      "Whatever."
    end
  end
end


module BookKeeping
  VERSION = 1
end
