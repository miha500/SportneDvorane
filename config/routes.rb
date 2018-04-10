
Rails.application.routes.draw do
  get 'sessions/create'

  get 'sessions/destroy'

  get 'home/show'

  devise_for :users
  resources :halls do
  resources :fields 
  end

  root 'halls#index'
   
  #Google Stuff
  
  #SportneDvorane::Application.routes.draw do
  #get 'auth/:provider/callback', to: 'sessions#create'
  #get 'auth/failure', to: redirect('/')
  #get 'signout', to: 'sessions#destroy', as: 'signout'

  #resources :sessions, only: [:create, :destroy]
  #resource :home, only: [:show]
  
  # root "home#show"
  #  end


end
