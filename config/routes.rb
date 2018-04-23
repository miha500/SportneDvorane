
Rails.application.routes.draw do
  resources :comments
  get 'sessions/create'

  get 'sessions/destroy'


devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  
 #resources :users
 
  resources :halls do
  resources :fields 
  resources :comments
  end

  root 'halls#index'
   
  #Facebook Stuff
  #devise_scope :user do
 # delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
#end
  



end
