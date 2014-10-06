Rails.application.routes.draw do
  
  root("lists#index")

  resources  :lists, only: [:show, :new, :create, :destroy]

  resources :tasks, only: [:new, :create, :show]

end
