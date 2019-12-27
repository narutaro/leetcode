# https://atcoder.jp/contests/abs/tasks/abc087_b

require 'minitest/autorun'
require '../14-longest-common-prefix.rb'

class MarbleCountTest < Minitest::Test

  def test_1
    assert_equal "fl", longest_common_prefix(["flower","flow","flight"])
  end

  def test_2
    assert_equal "flo", longest_common_prefix(["flower","flow","floight"])
  end

  def test_3
    assert_equal "", longest_common_prefix(["aca","cba"])
  end

end

