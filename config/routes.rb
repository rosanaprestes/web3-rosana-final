Rails.application.routes.draw do
  resources :providers
  get 'home/index'
  devise_for :users
  root to: "home#index"
end
