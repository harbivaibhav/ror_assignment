Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root 'home#index'
  resources :user
  resources :employer, only: [:index, :destroy]
  resources :candidate, only: [:index]
end
