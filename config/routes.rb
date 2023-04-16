Rails.application.routes.draw do
  root 'posts#show'

  resources :posts
  resources :users

  get 'login', to: 'sessions#create', as: :login
  resource :session, only: %i[new create destroy]


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
