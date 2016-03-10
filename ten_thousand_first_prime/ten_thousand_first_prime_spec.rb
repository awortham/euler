require './ten_thousand_first_prime'

RSpec.describe NthPrime do
  it "will return the nth prime number" do
    expect(NthPrime.new(6).process).to eq 13
  end

  it "handles larger numbers" do
    expect(NthPrime.new(10001).process).to eq 104743
  end
end
