class EvenFib
  attr_accessor :range, :potential, :nums

  def initialize(range)
    @range     = range.to_a
    @potential = 0
    @nums      = [1,2]
  end

  def fib_nums
    while valid_potential?
      @potential = nums[-1] + nums[-2]
      nums << @potential if valid_potential?
    end
    nums
  end

  def total_fib_sum
    fib_nums.select(&:even?).reduce(:+)
  end

  def valid_potential?
    @potential < range.last
  end
end
