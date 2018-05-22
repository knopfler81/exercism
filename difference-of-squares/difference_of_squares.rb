class Squares

  def initialize(number)
    @number = number
  end

  def range
    (1..@number)
  end

  def sum_of_squares
    range.map {|num| num ** 2}.sum
  end

  def square_of_sum
    range.sum ** 2
  end

  def difference
    square_of_sum - sum_of_squares
  end

end

module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end
