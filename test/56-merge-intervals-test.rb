require 'minitest/autorun'
require '../56-merge-intervals.rb'

class MarbleCountTest < Minitest::Test

  def test_1
    assert_equal [[1,3],[4,6],[8,10],[15,18]], merge([[1,3],[4,6],[8,10],[15,18]])
  end

  def test_2
    assert_equal [[1,10],[15,18]], merge([[1,3],[2,6],[5,10],[15,18]])
  end

  def test_3
    assert_equal [[1,10],[15,18]], merge([[1,5],[2,4],[5,10],[15,18]])
  end

  def test_4
    assert_equal [[1,10],[15,18]], merge([[1,5],[2,4],[5,10],[15,18],[3,5]])
  end

end
