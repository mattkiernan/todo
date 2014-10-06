Rails.application.routes.draw do
  
  root("lists#index")

  resources  :lists, only: [:show, :new, :create]

end
