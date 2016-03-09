require "./multiples_of_3_and_5"

RSpec.describe Multiples do
  it "sets range if range is an array" do
    range = (0..100).to_a
    m = Multiples.new(range)

    expect(m.range).to be_a Array
  end

  it "selects all numbers within range that are multiples of 3 or 5" do
    range = (0...1000).to_a
    m = Multiples.new(range)

    expect(m.process).to eq 233168
  end
end
