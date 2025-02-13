class CalculatorController < ApplicationController
  def homepage
    render({:template => "calculator_templates/homepage"})
  end

  def square_new
    render({:template => "calculator_templates/square/new"}) 
  end
end
