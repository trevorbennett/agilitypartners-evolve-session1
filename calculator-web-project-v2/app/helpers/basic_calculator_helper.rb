class Calculator
    def calculate(operator, left_operand, right_operand)
      if('sum' == operator)
        return sum(left_operand,right_operand)
      end
      if('difference' == operator)
        return difference(left_operand,right_operand)
      end
    end+

    def sum(a, b)
      a.to_i + b.to_i
    end

    def difference(a, b)
      a.to_i - b.to_i
    end
end
