class CalculatorController < ApplicationController
  def homepage
    render({:template => "calculator_templates/square_new"})
  end

  def square_new
    render({:template => "calculator_templates/square_new"}) 
  end

  def square_results 
    @the_num = params.fetch("users_number").to_f
    @the_result = @the_num ** 2
    render({:template => "calculator_templates/square_results"}) 
  end

  def square_root_new
    render({:template => "calculator_templates/square_root_new"}) 
  end

  def square_root_results
    @the_num = params.fetch("users_number").to_f
    @the_result = Math.sqrt(@the_num)
    render({:template => "calculator_templates/square_root_results"}) 
  end


end
