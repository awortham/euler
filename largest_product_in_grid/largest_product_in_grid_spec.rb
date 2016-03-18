require './largest_product_in_grid'

RSpec.describe LargestProductInGrid do
  it "is a thing" do
    expect(LargestProductInGrid.new).to be_a LargestProductInGrid
  end

  it "returns a product" do
    expect(LargestProductInGrid.new.product(2,3,4,5)).to eq 120
  end

  it "stores a grid as an array" do
    expect(LargestProductInGrid.new.grid).to be_a Array
  end

  it "returns a right angle product from beginning" do
    expect(LargestProductInGrid.new.right_angle_product(0)).to eq 34144
  end

  it "returns 0 if index does not exist" do
    expect(LargestProductInGrid.new.right_angle_product(399)).to eq 0
  end

  it "returns a down angle product from beginning" do
    expect(LargestProductInGrid.new.down_product(0)).to eq 1651104
  end

  it "returns a right angle product" do
    expect(LargestProductInGrid.new.right_diagonal_product(0)).to eq 279496
  end

  it "returns a right angle product" do
    expect(LargestProductInGrid.new.left_diagonal_product(19)).to eq 238576
  end

  it "returns the largest product from any of the angles in the grid" do
    expect(LargestProductInGrid.new.largest_product).to eq 70600674
  end
end
