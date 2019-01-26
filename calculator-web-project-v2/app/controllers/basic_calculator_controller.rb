require 'basic_calculator_helper.rb'

class BasicCalculatorController < ApplicationController

  def index
  end

  def process_result
    @calc = Calculator.new
    @output = @calc.calculate(params[:operator],params[:left_hand_operand],params[:right_hand_operand])
    render :index
  end

end
