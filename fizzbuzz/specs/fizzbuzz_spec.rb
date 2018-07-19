require("minitest/autorun")
require("minitest/rg")
require_relative("../fizzbuzz.rb")

class FizzBuzzTest < MiniTest::Test

  def test_fizzbuzz_returns_fizz()
    assert_equal("Fizz", fizz_buzz(3))
  end

  def test_fizzbuzz_returns_buzz()
    assert_equal("Buzz", fizz_buzz(5))
  end

  def test_fizzbuzz_returns_fizzbuzz()
    assert_equal("FizzBuzz", fizz_buzz(15))
  end

  def test_fizzbuzz_returns_number_string
    assert_equal("7", fizz_buzz(7))
  end

end
