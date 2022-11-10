# frozen_string_literal: true
Rails.application.routes.draw do
  root "transactions#index"
  resources :reward_users
  resources :transaction_users
  resources :transactions
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
