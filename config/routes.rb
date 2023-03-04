Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_for :users

  # Defines the root path route ("/")
  # root "articles#index"
  root 'users#index'

  get '/posts/new', to: 'posts#new', as: 'create_post'
  post '/posts/new', to: 'posts#create'
  get '/users/:user_id/posts/:id', to: 'posts#show', as: 'post'
  post '/users/:user_id/posts/:id', to: 'comments#create'
  post '/users/:user_id/posts/:id/likes', to: 'posts#create_like', as: 'like'

  resources :users, only: %i[index show] do
    resources :posts, only: %i[index show, :destroy] do
  end
end

end