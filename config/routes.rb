Rails.application.routes.draw do
  
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
