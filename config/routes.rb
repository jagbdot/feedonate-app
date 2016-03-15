Rails.application.routes.draw do
  devise_for :users
  resources :users
  get 'profile', to: 'users#profile'
  get '/users/:id', to: 'users#show'
  root 'welcome#index'

  get '/users-form-signup' => 'users#get_form_sign_up'
  get '/users-form-signin' => 'users#get_form_sign_in'
end
