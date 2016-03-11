require './largest_product_in_a_series'

RSpec.describe LargestProductInSeries do
  it "is a thing" do
    expect(LargestProductInSeries.new).to be_a LargestProductInSeries
  end

  it "holds a series that is a very large number" do
    expect(LargestProductInSeries.new.series).to be_a Integer
  end

  it "returns an array of all of the characters" do
    expect(LargestProductInSeries.new.usable_series).to be_a Array
  end

  it "should have an array of integers" do
    expect(LargestProductInSeries.new.usable_series.first).to be_a Integer
  end

  it "gets product of" do
    expect(LargestProductInSeries.new.product([7,3,1,6])).to eq 126
  end

  it "returns the highest possible product of four" do
    expect(LargestProductInSeries.new.largest_product(4)).to eq 5832
  end

  it "works for larger numbers being passed in" do
    expect(LargestProductInSeries.new.largest_product(13)).to eq 23514624000
   end
end
