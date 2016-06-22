require_relative 'clock.rb'

class ClockCalculator

  def sum_until(number)
    sum = 0

    for i in 0..(number) do
      res = Clock.new.get(i)
      sum += res.to_i
    end

    sum
  end

end
