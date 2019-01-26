class BasicCalculatorController < ApplicationController
  include BasicCalculatorHelper

  def index
  end

#note - spent quite a while resolving issue with a collision on the name process, need to be more careful with names
  def process_result
    @output = (params[:operator]=='sum') ? Calculator.sum(params[:left_hand_operand],params[:right_hand_operand]) :
          Calculator.difference(params[:left_hand_operand],params[:right_hand_operand])
    render :index

  end

end
