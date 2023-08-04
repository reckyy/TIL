require 'minitest/autorun'
require_relative '../lib/rgb.rb'

class RgbTest < Minitest::Test
  def test_to_hex
    assert_equal '#000000', to_hex(0, 0, 0)
    assert_equal '#043c78', to_hex(4, 60, 120)
  end
end
