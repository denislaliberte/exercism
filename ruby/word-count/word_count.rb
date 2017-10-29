# Count the occurence of each words in a sentence
class Phrase
  def initialize(sentence)
    @words =
      sentence
      .downcase
      .gsub(/[^0-9a-z ']|,| '|' |'$/, ' ')
      .split(' ')
  end

  def word_count
    @words
      .uniq
      .map { |uniq_word| [uniq_word, @words.count(uniq_word)] }
      .to_h
  end
end

module BookKeeping
  VERSION = 1
end
