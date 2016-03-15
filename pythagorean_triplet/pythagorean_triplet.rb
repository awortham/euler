class PythagoreanTriplet
  def b(a)
    ((a**2) -1)/2
  end

  def c(a, b)
    (a**2 + b**2)
  end

  def create_triplet(num)
    st = (num**2)/2
    factors = find_factors(st)
    factors.map do |one, two|
      [one + num, two + num, num + one + two]
    end
  end

  def find_factors(num)
    new_array = []
    1.upto(num/2).map do |int|
      if (num.to_f/int.to_f) % 1 == 0
        [int, num/int]
      end
    end.compact.each do |array|
      new_array << array if !new_array.include? array.reverse
    end
    new_array
  end

  def find_triplet_which_adds_to(number)
    1.upto(number/2).map do |num|
      create_triplet(num).select do |array|
        array.reduce(:+) == number
      end
    end.flatten.reduce(:*)
  end
end
