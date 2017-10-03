require 'pry'

class Integer
  def to_roman
    converter = Converter.new(self)
    translation.each do |number, roman|
      converter = converter.convert(number, roman)
    end
    converter.roman
  end

  private

  class Converter
    attr_accessor :roman
    def initialize(number, roman: '')
      @number = number
      @roman = roman
    end

    def convert(number, roman)
      if @number >= number
        return Converter
               .new(@number - number, roman: @roman + roman)
               .convert(number, roman)
      end
      self
    end
  end

  def translation
    [
      [1000, 'M'],
      [900, 'CM'],
      [500, 'D'],
      [400, 'CD'],
      [100, 'C'],
      [90, 'XC'],
      [50, 'L'],
      [40, 'XL'],
      [10, 'X'],
      [9, 'IX'],
      [5, 'V'],
      [4, 'IV'],
      [1, 'I']
    ]
  end
end

module BookKeeping
  VERSION = 2
end
