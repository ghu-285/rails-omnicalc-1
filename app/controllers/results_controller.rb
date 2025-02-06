class ResultsController< ApplicationController

  def square_results
    @n = params[:number]
    @sq = @n.to_f ** 2

    render "result_templates/square_results"
  end

  def square_root_results
    @n = params[:number]
    @sqrt = @n.to_f ** 0.5
    render "result_templates/square_root_results"
  end

  def payment_results
    @apr = params[:user_apr].to_f / 100 / 12
    @years = params[:user_years].to_i * 12
    @principal = params[:user_pv].to_f
    @payment = @apr * @principal / (1 - (1 + @apr) ** (-1 * @years))

    render "result_templates/payment_results"
  end

  def random_results
    @min = params[:user_min].to_f
    @max = params[:user_max].to_f
    @random = rand(@min..@max)

    render "result_templates/random_results"
  end
end
