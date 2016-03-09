class SmallestMultiple
  attr_accessor :range

  def initialize(range)
    @range = range.to_a
  end

  def answer
    range.reduce(1) {|result, n| result.lcm n}
  end
end
