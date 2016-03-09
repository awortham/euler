require 'prime'

class LargestPrimeFactor
  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def largest_prime_factor
    (1..Math.sqrt(number)).select {|num| number % num == 0 && num.prime? }.max
  end
end
