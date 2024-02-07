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
    @the_num=params.fetch("number")
    @the_result= @the_num.to_f ** 0.5
    render({ :template => "calculator_templates/square_root_result" })
  end
end
