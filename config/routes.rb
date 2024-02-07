Rails.application.routes.draw do
  get("/",{:controller => "zebra", :action => "home"})
  get("/square/new",{:controller => "zebra", :action => "home"})
end
