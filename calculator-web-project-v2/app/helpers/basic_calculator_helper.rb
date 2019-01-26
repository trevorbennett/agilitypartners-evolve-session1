module BasicCalculatorHelper
  class Calculator
    def self.sum(a, b)
      a.to_i + b.to_i
    end

    def self.difference(a, b)
      a.to_i - b.to_i
    end
  end
end
