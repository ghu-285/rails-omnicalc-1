Rails.application.routes.draw do
  get("/", { :controller => "calc", :action => "home"})

  get("/square/new", { :controller => "calc", :action => "square"})
  get("/square/results", { :controller => "results", :action => "square_results"})

  get("/square_root/new", { :controller => "calc", :action => "square_root"})
  get("/square_root/results", { :controller => "results", :action => "square_root_results"})

  get("/payment/new", { :controller => "calc", :action => "payment"})
  get("/payment/results", { :controller => "results", :action => "payment_results"})

  get("/random/new", { :controller => "calc", :action => "random"})
  get("/random/results", { :controller => "results", :action => "random_results"})

end
