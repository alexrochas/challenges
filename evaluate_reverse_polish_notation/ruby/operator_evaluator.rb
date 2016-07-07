class OperatorEvaluator
  def evaluate(character)
    !/(\+|\-|\*|\/)/.match(character).nil?
  end
end
