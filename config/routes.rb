Rails.application.routes.draw do
  get 'shops/new'
  root 'pages#index'
  get 'pages/help'

  resources :users
end
