class ZebraController < ApplicationController
  def home
   render({ :template => "calculator_templates/sqrt" })
  end
  def square
    render({ :template => "calculator_templates/sqrt" })
  end
end
