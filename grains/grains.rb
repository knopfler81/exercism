class Grains

  def self.square(square)
    raise ArgumentError if square <= 0 || square > 64
      2 ** (square - 1)
  end

  def self.total
    2 ** 64 - 1
  end
end

module BookKeeping
  VERSION = 1
end
