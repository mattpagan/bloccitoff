Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:update, :show]

  resources :items, only: [:create, :destroy]
  
  get 'about' => 'welcome#about'

  root to: 'users#show'


end
