class ZebraController < ApplicationController
  def home
    render({ :template => "calculator_templates/square" })
  end

  def square
    render({ :template => "calculator_templates/square" })
  end

  def square_result
    @the_num = params.fetch("number")
    @the_result = @the_num.to_f ** 2
    render({ :template => "calculator_templates/square_result" })
  end

  def square_root
    render({ :template => "calculator_templates/square_root" })
  end

  def square_root_result
    @the_num = params.fetch("number")
    @the_result = @the_num.to_f ** 0.5
    render({ :template => "calculator_templates/square_root_result" })
  end

  def payment
    render({ :template => "calculator_templates/payment" })
  end

  def payment_result
    @apr = params.fetch("user_apr").to_f
    @num_of_years = params.fetch("user_years").to_i
    @principal = params.fetch("user_pv").to_f
    @payment = (@apr / 100 * @principal) / (1 - (1 + @apr / 100) ** (-12 * @num_of_years))
    render({ :template => "calculator_templates/payment_result" })
  end

  def random
    render({ :template => "calculator_templates/random" })
  end

  def random_result
    @minimum = params.fetch("Minimum").to_f
    @maximum = params.fetch("Maximum").to_f
    @chosen_number = rand(@minimum..@maximum)
    render({ :template => "calculator_templates/random_result" })
  end
end
