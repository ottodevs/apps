Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'user/registrations'
  }
    get '/users/:id', to: 'users#show'

  resources :users
  resources :neighborhoods do
    resources :incidents
  end

  root to: 'users#index'


end
