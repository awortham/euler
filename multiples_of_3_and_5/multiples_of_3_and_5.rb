class Multiples
  attr_accessor :range

  def initialize(range)
    @range = range
  end

  def multiple_of_3?(num)
    num % 3 == 0
  end

  def multiple_of_5?(num)
    num % 5 == 0
  end

  def process
    range.reduce(0) {|sum, num| sum += num if (multiple_of_3?(num) || multiple_of_5?(num)); sum}
  end
end
