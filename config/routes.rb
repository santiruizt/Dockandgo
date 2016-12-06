Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'profile', to:'users#profile'
  root to: 'users#profile'

  get '/users/index', to:'users#index'
  root to: 'users#index'
end
