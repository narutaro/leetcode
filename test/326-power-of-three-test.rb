require 'minitest/autorun'
#require '../326-power-of-three-l.rb'
require '../326-power-of-three-r.rb'

class DoTest < Minitest::Test

  def test_1
    assert_equal true, is_power_of_three(27)
  end

  def test_2
    assert_equal false, is_power_of_three(0)
  end

  def test_3
    assert_equal true, is_power_of_three(9)
  end

  def test_4
    assert_equal false, is_power_of_three(45)
  end

  def test_5
    assert_equal true, is_power_of_three(1)
  end

  def test_6
    assert_equal false, is_power_of_three(19684)
  end

  def test_7
    assert_equal false, is_power_of_three(-3)
  end

  def test_8
    assert_equal false, is_power_of_three(6)
  end

end
