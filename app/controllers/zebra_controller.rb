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
end
