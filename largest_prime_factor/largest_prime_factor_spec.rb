require './largest_prime_factor'

RSpec.describe LargestPrimeFactor do
  it 'accepts a number to check' do
    expect(LargestPrimeFactor.new(13195)).to be_a LargestPrimeFactor
  end

  it 'returns the largest prime number' do
    primes = LargestPrimeFactor.new(13195)

    expect(primes.largest_prime_factor).to eq 29
  end

  it 'real euler question' do
    primes = LargestPrimeFactor.new(600851475143)

    expect(primes.largest_prime_factor).to eq 6857
  end
end
