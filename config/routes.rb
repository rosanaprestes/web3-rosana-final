Rails.application.routes.draw do
  resources :managers
  resources :expenses
  resources :bank_accounts
  resources :garantors
  resources :providers
  get 'home/index'
  devise_for :users
  root to: "home#index"
end
