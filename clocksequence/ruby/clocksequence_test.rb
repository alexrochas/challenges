require 'test/unit'
require_relative 'clock_sequence.rb'
require_relative 'clock_calculator.rb'
require_relative 'clock.rb'

class TestClockSequence <  Test::Unit::TestCase

  def test_given_0_it_should_return_1
    #given
    number = 0
    expected = 1

    #when
    result = ClockSequence.new.get(number)

    #then
    assert_equal expected, result
  end

  def test_given_1_it_should_return_2
    #given
    number = 1
    expected = 2

    #when
    result = ClockSequence.new.get(number)
    #then
    assert_equal expected, result
  end
  
  def test_given_3_it_should_return_4
    #given
    number = 3
    expected = 4

    #when
    result = ClockSequence.new.get(number)
    #then
    assert_equal expected, result
  end

  def test_given_4_it_should_return_3
    #given
    number = 4
    expected = 3

    #when
    result = ClockSequence.new.get(number)
    #then
    assert_equal expected, result
  end

  def test_given_5_it_should_return_2
    #given
    number = 5
    expected = 2
    
    #when
    result = ClockSequence.new.get(number)
    
    #then
    assert_equal expected, result
  end
  
  def test_given_6_it_should_return_1
    #given
    number = 6
    expected = 1

    #when
    result = ClockSequence.new.get(number)
    #then
    assert_equal expected, result
  end

  def test_given_7_it_should_return_2
    #given
    number = 7
    expected = 2

    #when
    result = ClockSequence.new.get(number)
    #then
    assert_equal expected, result
  end

  def test_given_8_it_should_return_3
    #given
    number = 8
    expected = 3

    #when
    result = ClockSequence.new.get(number)
    #then
    assert_equal expected, result
  end
  
  def test_given_9_it_should_return_4
    #given
    number = 9
    expected = 4

    #when
    result = ClockSequence.new.get(number)
    #then
    assert_equal expected, result
  end
  
  def test_given_10_it_should_return_3
    #given
    number = 10
    expected = 3

    #when
    result = ClockSequence.new.get(number)
    #then
    assert_equal expected, result
  end

  def test_given_interating_until_1_it_should_return_1
    #given
    clock_seq = ClockSequence.new
    iterate = 1
    expected = 1

    #when
    result = 0
    iterate.times do |i|
      result = clock_seq.get_current
      clock_seq.next
    end
    
    #then
    assert_equal expected, result
  end

  def test_given_interating_until_10_it_should_return_3
    #given
    clock_seq = ClockSequence.new
    iterate = 10
    expected = 4

    #when
    result = 0
    iterate.times do |i|
      result = clock_seq.get_current
      clock_seq.next
    end
    
    #then
    assert_equal expected, result
  end
 
  def test_clock_given_1_it_should_return_1
    #given
    number = 1
    expected = "1"

    #when
    result = Clock.new.get(number)

    #then
    assert_equal expected, result
  end

  def test_clock_given_2_it_should_return_2
    #given
    number = 2
    expected = "2"

    #when
    result = Clock.new.get(number)

    #then
    assert_equal expected, result
  end
  
  def test_clock_given_3_it_should_return_3
    #given
    number = 3
    expected = "3"

    #when
    result = Clock.new.get(number)

    #then
    assert_equal expected, result
  end

  def test_clock_given_5_it_should_return_32
    #given
    number = 5
    expected = "32"

    #when
    result = Clock.new.get(number)

    #then
    assert_equal expected, result
  end

  def test_clock_given_6_it_should_return_123
    #given
    number = 6
    expected = "123"

    #when
    result = Clock.new.get(number)

    #then
    assert_equal expected, result
  end

  def test_clock_given_11_it_should_return_32123
    #given
    number = 11
    expected = "32123"

    #when
    result = Clock.new.get(number)

    #then
    assert_equal expected, result
  end
  
  def test_sum_clock_until_1_it_should_return_1
    #given
    number = 1
    expected = 1

    #when
    result = ClockCalculator.new.sum_until(number)

    #then
    assert_equal expected, result
  end

  def test_sum_clock_until_2_it_should_return_3
    #given
    number = 2
    expected = 3

    #when
    result = ClockCalculator.new.sum_until(number)

    #then
    assert_equal expected, result
  end
  
  def test_sum_clock_until_11_it_should_return_36120
    #given
    number = 11
    expected = 36120

    #when
    result = ClockCalculator.new.sum_until(number)

    #then
    assert_equal expected, result
  end

end
