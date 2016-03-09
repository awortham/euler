class LargestPalindromeProduct
  attr_accessor :digit, :range

  def initialize(digit)
    @digit = digit
    @range = decide_range
  end

  def decide_range
    if digit == 2
      @range = (1..99).to_a
    else
      @range = (1..999).to_a
    end
  end

  def largest_by
    number = []
    range.each do |num1|
      range.each do |num2|
        product = num1 * num2
        number << product if product.is_palindrome?
      end
    end
    number.max
  end
end

class Fixnum
  def is_palindrome?
    self == self.reverse
  end

  def reverse
    x = self
    y = 0

    while x > 0 do
      y = y * 10
      y = y + (x % 10)
      x = x / 10
    end

    y
  end
end
