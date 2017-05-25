class Grains
  def self.square(a)
    raise ArgumentError if a < 1 || a > 64
    x = 0.5
    a.times do
      x *= 2
    end
    x.to_i
  end

  def self.total(a = 64)
    x = 0
    a.times do |y|
      x += square(y + 1)
    end
    x.to_i
  end
end

module BookKeeping
  VERSION = 1
end
