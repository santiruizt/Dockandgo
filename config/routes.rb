Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'site#home'

  get '/profile', to:'users#profile'
  root to: 'users#profile'

  get '/users/index', to:'users#index'
  post '/harbors', to: 'harbor#index', as: :harbors
  get '/profile/docks/new', to: 'docks#new'
  post '/profile/docks/', to: 'docks#create', as: :docks
  delete '/profile/docks/#{@dock.id}/delete', to: 'docks#destroy', as: :dock_delete

  get '/profile/boats/new', to: 'boats#new'
  post '/profile/boats/', to: 'boats#create', as: :boats
  delete '/profile/docks/#{@boat.id}/delete', to: 'boats#destroy', as: :boat_delete


end
