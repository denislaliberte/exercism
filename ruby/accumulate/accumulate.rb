require 'pry'
class Array
  def accumulate &block
    [].tap do |result|
      self.each do |element|
        result << yield(element)
      end
    end
  end

end

module BookKeeping
  VERSION = 1
end
