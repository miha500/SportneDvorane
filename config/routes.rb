
Rails.application.routes.draw do
  resources :comments
  get 'sessions/create'

  get 'sessions/destroy'



  devise_for :users
  resources :halls do
  resources :fields 
  resources :comments
  end

  root 'halls#index'
   
  #Facebook Stuff



end
