require 'test/unit'
require_relative 'cake_thief.rb'

class CakeThiefTest < Test::Unit::TestCase 
 
  def test_when_verify_the_most_profit_it_shoult_return_3_90
    # given
    cakes = [[7,160],[3,90],[2,15]]
    expected = [3,90]
    cakes_thief = CakeThief.new

    # when
    result = cakes_thief.verify_profit cakes

    # then
    assert_equal expected, result
  end

  def test_when_given_5_capacity_it_should_return_195
    # given
    capacity = 5
    cakes = [[2,90],[1,15]]
    expected = 180 + 15
    cakes_thief = CakeThief.new

    # when
    result = cakes_thief.max_duffel_bag_value(cakes, capacity) 

    # then
    assert_equal expected, result

  end

  def test_when_given_20_capacity_it_shoult_return_555
    # given
    capacity = 20
    cakes = [[7,160],[3,90],[2,15]]
    expected = 555
    cakes_thief = CakeThief.new

    # when
    result = cakes_thief.max_duffel_bag_value(cakes, capacity) 

    # then
    assert_equal expected, result
  end

end
