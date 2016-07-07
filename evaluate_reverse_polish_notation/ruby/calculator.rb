class Calculator
  def calculate(first, operator, second)
    p "calculate #{first}, #{operator}, #{second}"
   
    return nil unless OperatorEvaluator.new.evaluate operator
    return nil if first.nil? || second.nil?
    
    case operator
    when "+"
      first.to_i + second.to_i
    when "-"
      first.to_i - second.to_i
    when "*"
      first.to_i * second.to_i
    when "/"
      first.to_i / second.to_i
    end
  end
end
