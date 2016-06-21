class CakeThief

  def max_duffel_bag_value(cakes, capacity)
    total_profit = 0
    rest_capacity = capacity
    
    while rest_capacity > 0 do
       most_profit = verify_profit cakes
       cakes.delete(most_profit)
       weight = most_profit[0]
       profit = most_profit[1]
       qt_to_carry =  (rest_capacity / weight).to_i
       total_profit += profit * qt_to_carry
       rest_capacity = rest_capacity % weight
    end
    
    total_profit
  end

  def verify_profit(array_cakes)
    most_profit  = nil
    
    for cake in array_cakes 
      cake_profit_by_kg = (cake[1] / cake[0])
      if most_profit.nil?
        most_profit = cake
      else
        most_profit_cake_by_kg =  (most_profit[1] / most_profit[0])
        
        if cake_profit_by_kg > most_profit_cake_by_kg
          most_profit = cake
        end
      end
    end
  
    most_profit
  end
end
