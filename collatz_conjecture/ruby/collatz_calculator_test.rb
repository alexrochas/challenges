require 'test/unit'
require_relative 'collatz_calculator.rb'

class CollatzCalculatorTest < Test::Unit::TestCase

  def setup
    @caculator = CollatzCalculator.new
  end

  def test_it_should_return_nil_when_number_is_nil
    # given
    number = nil
    # when
    result = @caculator.calcule number
    # then
    assert_nil result
  end

  def test_it_should_return_nil_when_number_is_0
    # given
    number = 0
    # when
    result = @caculator.calcule number
    # then
    assert_nil result
  end

  def test_it_should_return_nil_when_number_is_1
    # given
    number = 1
    # when
    result = @caculator.calcule number
    # then
    assert_nil result
  end

  def test_it_should_return_one_when_number_is_2
    # given
    number = 2
    expected = 1  # n/2
    # when
    result = @caculator.calcule number
    # then
    assert_equal expected, result
  end

  def test_it_should_return_value_plus3_more1_when_number_is_3
    # given
    number = 3
    expected = 10 #(3 * n) + 1
    # when
    result = @caculator.calcule number
    # then
    assert_equal expected, result
  end

  def test_it_should_return_20_when_number_is_40
    # given
    number = 40
    expected = 20 #(3 * n) + 1
    # when
    result = @caculator.calcule number
    # then
    assert_equal expected, result
  end

  def test_it_should_return_16_when_number_is_5
    # given
    number = 5
    expected = 16 #(3 * n) + 1
    # when
    result = @caculator.calcule number
    # then
    assert_equal expected, result
  end

end
