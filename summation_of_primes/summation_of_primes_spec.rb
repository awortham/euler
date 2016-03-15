require './summation_of_primes'

RSpec.describe SummationOfPrimes do
  it "sums primes below number initialized" do
    expect(SummationOfPrimes.new(10).summation).to eq 17
  end

  it "sums larger numbers" do
    expect(SummationOfPrimes.new(2000000).summation).to eq 142913828922
  end
end
