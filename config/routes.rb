Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "users#index"
  resources :posts, only: [:index, :show] do 
  end
  resources :users, only: [:index, :show] do 

  end
end
