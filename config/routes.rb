Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root '/', to: 'users#new'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/logout', to: 'session#destroy'

  
  resources :requests, only: [:show, :index, :create, :update, :destroy] do
  end
  
  resources :foods, only: [:show, :index, :create, :update, :destroy] do
  end

  resources :users, only: [:new, :show, :create, :update, :destroy] do
  end

end
