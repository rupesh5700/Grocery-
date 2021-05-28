# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'home/index'
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  resources :users
  # get 'cards/show'
  # get 'shops/index'
  # get 'shops/show'
  resources :products
  resources :shops, only: %i[index show]
  resources :order_items
  resources :cards, only: [:show]
  resources :sessions, only: %i[new create destroy]

  root 'shops#index'
  # root 'home#index'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  delete 'logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
