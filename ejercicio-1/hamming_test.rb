require 'minitest/autorun'
require_relative './hamming.rb'

class TestHamming < MiniTest::Unit::TestCase
  def test_distance
    assert_equal 0, Hamming.distance('', '')
    assert_equal 1, Hamming.distance('s', 't')
    assert_equal 2, Hamming.distance('1011101', '1001001')
    assert_equal 3, Hamming.distance('2143896', '2233796')
    assert_equal 3, Hamming.distance('tener', 'reses')
    assert_equal 7, Hamming.distance('GAGCCTACTAACGGGAT', 'CATCGTAATGACGGCCT')
  end

  def test_invalid_params
    assert_raises ArgumentError do
      Hamming.distance('abc', 'abcdefg')
    end
  end
end
