require "./even_fibonacci_numbers"

RSpec.describe EvenFib do
  it "accepts a range to pull out all fib numbers and add them" do
    range = (1..4000000)
    expect(EvenFib.new(range)).to be_a EvenFib
  end

  it "turns the range into an array" do
    range = (1..10)

    expect(EvenFib.new(range).range).to be_a Array
  end

  it "calculates fib nums" do
    range = (1..10)

    expect(EvenFib.new(range).fib_nums).to eq [1,2,3,5,8]
  end

  it "calculates fib total of even nums" do
    range = (1...4000000)

    expect(EvenFib.new(range).total_fib_sum).to eq 4613732
  end
end
