require_relative 'grains'
require 'minitest/spec'
require 'minitest/autorun'

class GrainsSpec
  describe Grains do
    describe "sqare" do
      it "calculate grains on sqare 1" do
        Grains.square(1).must_equal 1
      end
      it "calculate grains on square 3" do
        Grains.square(3).must_equal 4
      end
      it "calculate grains on square 10" do
        Grains.square(10).must_equal 512
      end
    describe "total" do
      it "calculate total amount of grains for 4" do
        Grains.total(4).must_equal 15
      end
    end
    end
  end
end
