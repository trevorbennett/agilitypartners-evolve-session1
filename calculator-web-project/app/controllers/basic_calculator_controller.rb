class BasicCalculatorController < ApplicationController
  include BasicCalculatorHelper

  def index
  end

  def new
    # @result = Calculator.send("-","1","1")
    render :index
  end

end
