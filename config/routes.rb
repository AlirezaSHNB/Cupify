Rails.application.routes.draw do
  root 'home#index'

  get 'users/new', to: 'users#new', as: :new_user
  post 'users', to: 'users## Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"create'
  get '/users/dashboard', to: 'users#dashboard'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  post '/check_username_availability', to: 'users#check_username_availability'
end
