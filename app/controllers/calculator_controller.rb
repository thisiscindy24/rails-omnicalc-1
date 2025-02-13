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

  def payment_new
    render({:template => "calculator_templates/payment_new"}) 
  end

  def payment_results
    apr = params.fetch("user_apr").to_f
    years = params.fetch("user_years").to_i
    principle= params.fetch("user_pv").to_f

    r = (apr/100)/12
    n = years*12

    if r==0
      payment=principle.to_f
    else
      payment = (r*principle) / (1-(1+r)**-n)
    end

    @formatted_apr = apr.to_fs(:percentage, { :precision => 4 } )
    @formatted_years = years
    @formatted_principle = principle.to_fs(:currency, { :precision => 2 })
    @formatted_payment = payment.to_fs(:currency, { :precision => 2 })
    render({:template => "calculator_templates/payment_results"}) 
  end



end
