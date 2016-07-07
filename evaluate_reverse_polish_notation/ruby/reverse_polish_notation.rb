require_relative 'operator_evaluator.rb'
require_relative 'calculator.rb'

class ReversePolishNotation

  def initialize
    @calculator = Calculator.new
  end

  def calculate(notation)
    i = 0
    while notation.size > 1 do
      f = notation[i]
      s = notation[i+1]
      o = notation[i+2]

      if f.nil? && s.nil? && o.nil? 
        raise "Illegal Notation format"
      end

      calculation = @calculator.calculate f, o, s

      if !calculation.nil?
        notation.delete_at i #delete first
        notation.delete_at i #delete second
        notation[i] = calculation # override operator
        i = 0
      else
        i = i + 1
      end
    end
    notation[0]
  end
end
