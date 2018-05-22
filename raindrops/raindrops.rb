class Raindrops

  def self.convert(num)
    sound = ''
    sound << "Pling" if num % 3 == 0
    sound << "Plang" if num % 5 == 0
    sound << "Plong" if num % 7 == 0
    sound = num.to_s if sound.empty?
    sound
  end
end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
