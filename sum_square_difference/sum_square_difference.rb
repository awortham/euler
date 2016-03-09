class SumSquareDifference
  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def sum_square
    1.upto(number).reduce(0) {|acc, num| acc += (num ** 2); acc}
  end

  def square_of_sum
    1.upto(number).reduce(:+) ** 2
  end

  def difference
    square_of_sum - sum_square
  end
end
