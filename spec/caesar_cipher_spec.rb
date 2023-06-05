# frozen_string_literal: true

# spec/caesar_cipher_spec.rb

require_relative '../caesar_cipher'

describe 'caesar_cipher' do
  it "returns the conversion of 'abc' shifted by 5" do
    result = caesar_cipher('abc', 5)
    expect(result).to eq('fgh')
  end

  it "returns conversions that include punctuation '?!,.'" do
    result = caesar_cipher('zxc?!cb?,.', 4)
    expect(result).to eq('dbg?!gf?,.')
  end

  it "returns conversions that include spaces" do
    result = caesar_cipher('a b c', 2)
    expect(result).to eq('c d e')
  end

  it 'returns a conversion with a shift greater than 26' do
    result = caesar_cipher('abc', 27)
    expect(result).to eq('bcd')
  end

  it 'returns a conversion with a shift less than 0' do
    result = caesar_cipher('abc', -5)
    expect(result).to eq('vwx')
  end
end
