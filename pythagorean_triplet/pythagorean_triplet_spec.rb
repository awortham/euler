require "./pythagorean_triplet"

RSpec.describe PythagoreanTriplet do
  it "returns total product of triplet that equaled passed in number" do
    expect(PythagoreanTriplet.new.find_triplet_which_adds_to(12)).to eq 60
  end

  it "works for larger numbers" do
    expect(PythagoreanTriplet.new.find_triplet_which_adds_to(1000)).to eq 31875000
  end

  it "finds factors for a number" do
    expect(PythagoreanTriplet.new.find_factors(18)).to eq [[1,18], [2,9], [3,6]]
  end

  it "creates a triplet" do
    expect(PythagoreanTriplet.new.create_triplet(6)).to eq [[7, 24, 25], [8, 15, 17], [9, 12, 15]]
  end
end
