require_relative 'word_count'
require 'minitest/autorun'

describe Phrase do
  it { Phrase.new('').word_count.must_equal({}) }
  it { Phrase.new('patate').word_count.must_equal('patate' => 1) }
  it { Phrase.new('don\'t').word_count.must_equal('don\'t' => 1) }
  it { Phrase.new('Patate,patate').word_count.must_equal('patate' => 2) }
  it { Phrase.new('patate douce').word_count.must_equal('patate' => 1, 'douce' => 1) }
end
