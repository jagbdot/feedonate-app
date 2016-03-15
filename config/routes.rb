Rails.application.routes.draw do
  devise_for :users
  resources :users
  get 'profile', to: 'users#profile'
  get '/users/:id', to: 'users#show'
  root 'welcome#index'
end
