class CollatzStepCounter

  def initialize(calculator)
    @calculator = calculator
    @steps_number = Hash.new
  end

  def count_steps_for(number)
    steps, next_number = count(0, number)
    @steps_number[number] = steps

    return @steps_number[number] + 1
  end

  private
  def count(steps, number)
    # return memorized steps for number more the steps until here
    return @steps_number[number] + steps , number if @steps_number[number]

    next_number = @calculator.calcule number
    return steps, number unless next_number
    count(steps + 1, next_number)
  end

end
