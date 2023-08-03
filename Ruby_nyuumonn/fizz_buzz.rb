def fizz_buzz(number)
  if number % 3 == 0 && number% 5 == 0
    "FizzBuzz"
  elsif number % 3 == 0
    "Fizz"
  elsif number % 5 == 0
    "Buzz"
  else
    number
  end
end

require 'minitest/autorun'

class FizzBuzzTest < Minitest::Test
  def test_fizz_buzz
    assert_equal 'FizzBuzz', fizz_buzz(15)
  end
end
