require 'test/unit'
require_relative 'operator_evaluator.rb'
require_relative 'calculator.rb'
require_relative 'reverse_polish_notation.rb'

class ReversePolishNotationTest < Test::Unit::TestCase

  def test_when_have_sum_char_it_should_evaluate_true
    # given
    operator = "+"
    
    # when
    result = OperatorEvaluator.new.evaluate operator

    # then
    assert_true result
  end

  def test_when_have_minus_char_it_should_evaluate_true
    # given
    operator = "-"
    
    # when
    result = OperatorEvaluator.new.evaluate operator

    # then
    assert_true result
  end
  
  def test_when_have_plus_char_it_should_evaluate_true
    # given
    operator = "*"
    
    # when
    result = OperatorEvaluator.new.evaluate operator

    # then
    assert_true result
  end
  
  def test_when_have_divide_char_it_should_evaluate_true
    # given
    operator = "/"
    
    # when
    result = OperatorEvaluator.new.evaluate operator

    # then
    assert_true result
  end
  
  def test_when_have_a_char_it_should_evaluate_false
    # given
    operator = "a"
    
    # when
    result = OperatorEvaluator.new.evaluate operator

    # then
    assert_false result
  end
  
  def test_when_have_number_char_it_should_evaluate_false
    # given
    operator = "0"
    
    # when
    result = OperatorEvaluator.new.evaluate operator

    # then
    assert_false result
  end

  def test_when_sum_it_should_sum_given_numbers
    # given
    number_one = 20
    number_two = 10
    operator = "+"
    expected = 30
    
    # when
    result = Calculator.new.calculate number_one, operator, number_two

    # then
    assert_equal expected, result
  end
 
  def test_when_minus_it_should_minus_given_numbers
    # given
    number_one = 20
    number_two = 10
    operator = "-"
    expected = 10
    
    # when
    result = Calculator.new.calculate number_one, operator, number_two

    # then
    assert_equal expected, result
  end

  def test_when_divide_it_should_divide_given_numbers
    # given
    number_one = 20
    number_two = 10
    operator = "/"
    expected = 2
    
    # when
    result = Calculator.new.calculate number_one, operator, number_two

    # then
    assert_equal expected, result
  end
  
  def test_when_plus_it_should_plus_given_numbers
    # given
    number_one = 20
    number_two = 10
    operator = "*"
    expected = 20 * 10
    
    # when
    result = Calculator.new.calculate number_one, operator, number_two

    # then
    assert_equal expected, result
  end

  def test_when_notation_2_1_sum_it_should_result_3
    # given
    notation = ["1","2","+"]
    expected = 3 
    
    # when
    result = ReversePolishNotation.new.calculate notation 

    # then
    assert_equal expected, result
  end

  def test_when_notation_2_1_sum_3_plus_it_should_result_9
    # given
    notation = ["1","2","+","3","*"]
    expected = 9 
    
    # when
    result = ReversePolishNotation.new.calculate notation 

    # then
    assert_equal expected, result
  end
 
  def test_when_notation_4_13_5_divide_plus_it_should_result_6
    # given
    notation = ["4", "13", "5", "/", "+"]
    expected = 6 
    
    # when
    result = ReversePolishNotation.new.calculate notation 

    # then
    assert_equal expected, result
  end
end

