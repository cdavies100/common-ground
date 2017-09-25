Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'lookbook', to: 'pages#lookbook'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products, only: [:index, :show]
  # resources :users, only: [:show, :edit, :update, :destroy]
end
