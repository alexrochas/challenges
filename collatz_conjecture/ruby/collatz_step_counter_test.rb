require 'test/unit'
require_relative 'collatz_calculator.rb'
require_relative 'collatz_step_counter.rb'

class CollatzStepCounterTest < Test::Unit::TestCase

  def setup
    @step_counter = CollatzStepCounter.new(CollatzCalculator.new)
  end

  def test_it_should_return_0_when_number_is_nil
    # given
    number = nil
    expected = 1
    # when
    result = @step_counter.count_steps_for number
    # then
    assert_equal expected, result
  end

  def test_it_should_return_0_when_number_is_0
    # given
    number = 0
    expected = 1
    # when
    result = @step_counter.count_steps_for number
    # then
    assert_equal expected, result
  end

  def test_it_should_return_0_when_number_is_1
    # given
    number = 1
    expected = 1
    # when
    result = @step_counter.count_steps_for number
    # then
    assert_equal expected, result
  end

  def test_it_should_return_2_when_number_is_2
    # given
    number = 2
    expected = 2
    # when
    result = @step_counter.count_steps_for number
    # then
    assert_equal expected, result
  end

  def test_it_should_return_8_when_number_is_3
    # given
    number = 3
    expected = 8
    # when
    result = @step_counter.count_steps_for number
    # then
    assert_equal expected, result
  end

  def test_it_should_return_3_when_number_is_4
    # given
    number = 4
    expected = 3
    # when
    result = @step_counter.count_steps_for number
    # then
    assert_equal expected, result
  end

  def test_it_should_return_6_when_number_is_5
    # given
    number = 5
    expected = 6
    # when
    result = @step_counter.count_steps_for number
    # then
    assert_equal expected, result
  end

  def test_it_should_return_10_when_number_is_13
    # given
    number = 13
    expected = 10
    # when
    result = @step_counter.count_steps_for number
    # then
    assert_equal expected, result
  end

  def test_it_should_return_10_when_number_is_13_
    # given
    number = 13
    expected = 10
    # when
    result = @step_counter.count_steps_for number

    number = 13
    # when
    result = @step_counter.count_steps_for number
    # then
    assert_equal expected, result
  end

end
