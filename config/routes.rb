Rails.application.routes.draw do
  # root 'posts#show'
  root to: 'posts#index'

  resources :posts
  resources :users

  get 'login', to: 'sessions#new'
  resource :session, only: %i[new create destroy]

  get '/user/dashboard', to: 'users#dashboard', as: 'user_dashboard'



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
