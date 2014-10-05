Rails.application.routes.draw do
  
  root("lists#index")

  resource  :list, only: [:show, :new]

end
