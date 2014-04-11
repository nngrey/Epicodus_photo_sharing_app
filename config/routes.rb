Rails.application.routes.draw do

  root to: 'photos#index'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'


  resources :users, :only => [:new, :create]
  resources :photos, :only => [:index, :new, :create]
  resources :sessions
end
