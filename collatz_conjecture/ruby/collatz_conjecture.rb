class CollatzConjecture
  def initialize(collatz_step_counter)
    @collatz_step_counter = collatz_step_counter
  end

  def max_in(range)
    number = 0
    max = 0

    for i in range
      result = @collatz_step_counter.count_steps_for i
      number, max = i, result if result > max
    end

    return [number, max]
  end

end
