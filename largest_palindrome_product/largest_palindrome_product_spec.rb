require './largest_palindrome_product'

RSpec.describe LargestPalindromeProduct do
  it 'accepts the size of number that it should go up to' do
    expect(LargestPalindromeProduct.new(2).largest_by).to eq 9009
  end

  it 'returns the largest palindrome for 3' do
    expect(LargestPalindromeProduct.new(3).largest_by).to eq 906609
  end
end
