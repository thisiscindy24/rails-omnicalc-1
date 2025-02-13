Rails.application.routes.draw do
  get"/", {:controller => "calculator", :action => "homepage"}
  get"/square/new", {:controller => "calculator", :action => "square_new" }
end
