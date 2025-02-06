class CalcController< ApplicationController
  
  def home
    render "calc_templates/square"
  end

  def square
    render "calc_templates/square"
  end

  def square_root
    render "calc_templates/square_root"
  end

  def payment
    render "calc_templates/payment"
  end

  def random
    render "calc_templates/random"
  end
end
