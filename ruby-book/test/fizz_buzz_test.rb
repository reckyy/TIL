require 'minitest/autorun'

class FizzBuzzTest < Minitest::Test
  def test_fizz_buzz
    assert_equal 'FizzBuzz', fizz_buzz(15)
  end
end
