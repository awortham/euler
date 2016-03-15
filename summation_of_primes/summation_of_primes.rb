require 'prime'

class SummationOfPrimes
  attr_accessor :max

  def initialize(max)
    @max = max
  end

  def summation
    Prime.each(max).reduce(:+)
  end
end
