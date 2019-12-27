# https://atcoder.jp/contests/abs/tasks/abc087_b

require 'minitest/autorun'
require '../13-roman-to-integer.rb'

class MarbleCountTest < Minitest::Test

  def test_1
    assert_equal 3, roman_to_int("III")
  end

  def test_2
    assert_equal 4, roman_to_int("IV")
  end

  def test_3
    assert_equal 9, roman_to_int("IX")
  end

  def test_4
    assert_equal 58, roman_to_int("LVIII")
  end

  def test_5
    assert_equal 1994, roman_to_int("MCMXCIV")
  end

  def test_6
    assert_equal 3516, roman_to_int("MMMDXVI")
  end

  def test_7
    assert_equal 3668, roman_to_int("MMMDCLXVIII")
  end
end
