Rails.application.routes.draw do
  
  root("lists#index")

  resources  :lists do
    resources :tasks, only: [:new, :create, :show, :destroy]
  end

end
