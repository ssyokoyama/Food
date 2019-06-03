Rails.application.routes.draw do
  get 'items/new'
  get 'sessions/new'

  root 'pages#index'
  get 'pages/help'



  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :items
  resources :shops

  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  
end
