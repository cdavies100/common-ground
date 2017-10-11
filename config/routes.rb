Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'lookbook', to: 'pages#lookbook'
  get 'leggings', to: 'products#leggings'
  get 'active_top', to: 'products#top'
  get 'sports_bra', to: 'products#bra'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products, only: [:index, :show]
  # resources :users, only: [:show, :edit, :update, :destroy]
end
