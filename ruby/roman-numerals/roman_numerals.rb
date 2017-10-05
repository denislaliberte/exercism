require 'minitest/autorun'
require 'minitest/spec'
require 'csv'


class Integer
  def to_roman
    temp = ''
    remaining = self
    translation.each do |number, roman|
      while remaining >= number
        temp << roman
        remaining -= number
      end
    end
    temp
  end

  private

  def translation
    CSV
    .read('roman_numerals.csv')
    .map { |number, roman| [number.to_i, roman.strip ]}
    .sort_by(&:first)
    .reverse
  end
end

describe Integer do
  it { 1.to_roman.must_equal 'I' }
  it { 2.to_roman.must_equal 'II' }
  it { 3.to_roman.must_equal 'III' }
  it { 4.to_roman.must_equal 'IV' }
  it { 5.to_roman.must_equal 'V' }
  it { 6.to_roman.must_equal 'VI' }
  it { 10.to_roman.must_equal 'X' }
  it { 20.to_roman.must_equal 'XX' }
end

module BookKeeping
  VERSION = 2
end
