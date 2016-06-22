require 'test/unit'
require_relative 'collatz_calculator.rb'
require_relative 'collatz_step_counter.rb'
require_relative 'collatz_conjecture.rb'

class CollatzConjectureTest < Test::Unit::TestCase

  def setup
    step_counter = CollatzStepCounter.new(CollatzCalculator.new)
    @collatz = CollatzConjecture.new(step_counter)
  end

  def test_it_should_return_2_2_in_a_range_of_1_to_2
    # given
    range = 1..2
    expected = [2, 2]
    # when
    result = @collatz.max_in range
    # then
    assert_equal expected, result
  end

  def test_it_should_return_3_8_in_a_range_of_1_to_3
    # given
    range = 1..4
    expected = [3, 8]
    # when
    result = @collatz.max_in range
    # then
    assert_equal expected, result
  end

  def test_it_should_return_3_8_in_a_range_of_1_to_5
    # given
    range = 1..5
    expected = [3, 8]
    # when
    result = @collatz.max_in range
    # then
    assert_equal expected, result
  end

  def test_it_should_return_6_9_in_a_range_of_1_to_6
    # given
    range = 1..6
    expected = [6, 9]
    # when
    result = @collatz.max_in range
    # then
    assert_equal expected, result
  end

  def test_it_should_return_7_17_in_a_range_of_1_to_7
    # given
    range = 1..7
    expected = [7, 17]
    # when
    result = @collatz.max_in range
    # then
    assert_equal expected, result
  end

  def test_it_should_return_7_17_in_a_range_of_1_to_8
    # given
    range = 1..8
    expected = [7, 17]
    # when
    result = @collatz.max_in range
    # then
    assert_equal expected, result
  end


  def test_it_should_return_703_171_in_a_range_of_1_to_855
    # given
    range = 1..855
    expected = [703, 171]
    # when
    result = @collatz.max_in range
    # then
    assert_equal expected, result
  end

  def test_it_should_run_less_than_one_sec_for_a_range_of_2000
    # given
    start = Time.now
    range = 1..2000

    # when
    result = @collatz.max_in range
    finish = Time.now

    p "Time total #{(finish - start)}"
    # then
    assert_true (finish - start) < 1.0
  end


  def test_it_should_run_less_than_6_sec_for_a_range_of_million
    # given
    start = Time.now
    range = 1..999_999

    # when
    result = @collatz.max_in range
    finish = Time.now

    p "Time total #{(finish - start)}"
    p "result #{result}"
    # then
    assert_true (finish - start) < 6.0
  end

end
