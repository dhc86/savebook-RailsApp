Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'initial#index'
  get 'events/index'

  devise_for :users
  resources :imageprofiles
  resources :books do 
    resources :reviews
    resources :requests
    resources :lends
    resources :likes
  end 
    
  resources :users
end
