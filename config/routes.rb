Rails.application.routes.draw do
  get("/",{:controller => "zebra", :action => "home"})
  get("/square/new",{:controller => "zebra", :action => "square"})
  get("/square/results",{:controller => "zebra", :action => "square_result"})
  get("/square_root/new",{:controller => "zebra", :action => "square_root"})
  get("/square_root/results",{:controller => "zebra", :action => "square_root_result"})
end
