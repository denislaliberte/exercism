class Integer
  def to_roman
    translations
      .inject(Translator.new(number: self)) do |candidate, translation|
        candidate.translate(translation)
      end.roman
  end

  private

  def translations
    translation = Struct.new(:number, :roman)
    [
      translation.new(1000, 'M'),
      translation.new(900, 'CM'),
      translation.new(500, 'D'),
      translation.new(400, 'CD'),
      translation.new(100, 'C'),
      translation.new(90, 'XC'),
      translation.new(50, 'L'),
      translation.new(40, 'XL'),
      translation.new(10, 'X'),
      translation.new(9, 'IX'),
      translation.new(5, 'V'),
      translation.new(4, 'IV'),
      translation.new(1, 'I')
    ]
  end

  class Translator
    attr_accessor :number, :roman
    def initialize(number: 0, roman: '')
      @number = number
      @roman = roman
    end

    def translate(translation)
      return self if number < translation.number
      Translator
        .new(
          number: number - translation.number,
          roman: roman + translation.roman
        ).translate(translation)
    end
  end
end

module BookKeeping
  VERSION = 2
end
