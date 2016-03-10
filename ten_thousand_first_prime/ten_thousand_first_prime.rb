require 'prime'

class NthPrime
  attr_accessor :nth

  def initialize(nth)
    @nth = nth
  end

  def process
    Prime.first(nth).last
  end
end
