Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get '/signin', to: 'sessions#new'
  # post '/signin', to: 'sessions#create'
  # delete '/logout', to: 'session#destroy'
 
  # Routes for Sessions
  
  root 'sessions#welcome'
  get '/signup', to: 'sessions#signup'
  post '/create', to: 'sessions#create'
  
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#login'

  post '/logout', to: 'sessions#logout'
  
  resources :requests
  resources :foods
  resources :users
  resources :request_items

end
