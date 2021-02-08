Rails.application.routes.draw do
  
  # use RESTful routes
  resources :authors

  resources :notes do
    member do
      get :delete
    end
  end
  
  resources :stories do
    member do
      get :delete
    end
  end
  
  # get 'author/put'
  get 'authors/get'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
