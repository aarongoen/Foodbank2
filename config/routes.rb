Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'users#new'
  # get '/signin', to: 'sessions#new'
  # post '/signin', to: 'sessions#create'
  # delete '/logout', to: 'session#destroy'

  get '/signup', to: 'sessions#signup'
  resources :requests
  resources :foods
  resources :users
  resources :request_items

end
