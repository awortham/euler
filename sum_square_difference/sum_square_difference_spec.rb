require './sum_square_difference'

RSpec.describe SumSquareDifference do
  it "is a thing" do
    expect(SumSquareDifference.new(6)).to be_a SumSquareDifference
  end

  it "returns 385 for sum of square of 10" do
    expect(SumSquareDifference.new(10).sum_square).to eq 385
  end

  it "returns 3025 for square of sum up to 10" do
    expect(SumSquareDifference.new(10).square_of_sum).to eq 3025
  end

  it "gives you the difference between the two" do
    expect(SumSquareDifference.new(10).difference).to eq 2640
  end

  it "works on bigger numbers" do
    expect(SumSquareDifference.new(100).difference).to eq 25164150
  end
end
