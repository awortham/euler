require './smallest_multiple'

RSpec.describe SmallestMultiple do
  it 'is a thing and accepts a range' do
    range = (1..10)

    expect(SmallestMultiple.new(range)).to be_a SmallestMultiple
  end

  it 'returns the smalls number that can be dived by each num in range without any remainder' do
    range = (1..10)

    expect(SmallestMultiple.new(range).answer).to eq 2520
  end

  it 'returns the answer for a larger range' do
    range = (1..20)

    expect(SmallestMultiple.new(range).answer).to eq 232792560
  end
end
