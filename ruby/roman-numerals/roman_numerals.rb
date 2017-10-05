require 'minitest/autorun'
require 'minitest/spec'
require 'csv'

# add to_roman to Integer class
class Integer
  def to_roman
    remaining = self
    temp = ''
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
      .map { |a, b| [a.to_i, b.strip] }
      .sort_by(&:first)
      .reverse
  end
end

describe Integer do
  describe '#to_roman' do
    it { 1.to_roman.must_equal 'I' }
    it { 2.to_roman.must_equal 'II' }
    it { 3.to_roman.must_equal 'III' }
    it { 5.to_roman.must_equal 'V' }
    it { 10.to_roman.must_equal 'X' }
    it { 20.to_roman.must_equal 'XX' }
  end
end

module BookKeeping
  VERSION = 2
end
