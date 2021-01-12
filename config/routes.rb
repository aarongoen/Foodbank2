Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'sessions#login'
  post 'sessions/login', to: 'sessions#login'
  
  resources :requests, only: [:show, :index, :create, :update, :destroy] do
  end
  
  resources :foods, only: [:show, :index, :create, :update, :destroy] do
  end

  resources :users, only: [:show, :create, :update, :destroy] do
  end

end
