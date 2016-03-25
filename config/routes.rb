Rails.application.routes.draw do
  devise_for :users
  resources :users 

  get 'profile', to: 'users#profile'
  get '/users/:id', to: 'users#show'
  root 'welcome#index'

  #LOGIN
  get '/users-form-signup' => 'users#get_form_sign_up'
  get '/users-form-signin' => 'users#get_form_sign_in'

  #DONATE
  get 'donor/donate', to: 'donations#new'
  post 'donor/donate', to: 'donations#create'

  get 'donor/donate/products', to: 'products#new'
  post 'donor/donate/products', to: 'products#create'

  #DONATION LIST
  get '/donations', to: 'donations#index'

  #FIND DONATION
  get '/donations/:id', to: 'donations#show'

  #BANKS LIST
  get '/banks', to: 'users#banks'
end
