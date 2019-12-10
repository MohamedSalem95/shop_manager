Rails.application.routes.draw do


  resources :orders
  resources :products
  devise_for :users
  root to: 'pages#home', as: 'home'

  get 'profile/:id' => 'pages#profile', as: 'profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
