Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'site#home'
  post '/harbors/', to: 'docks#index', as: :harbor_boats

  get '/profile', to:'users#profile', as: :profile
  root to: 'users#profile'

  get '/users/index', to:'users#index'

  # post '/harbors', to: 'site#show', as: :harbors
  # get '/docks', to: 'docks#index'

  get '/profile/docks/new', to: 'docks#new'
  post '/profile/docks/', to: 'docks#create', as: :docks
  get '/profile/docks/#{dock.id}/edit', to: 'docks#edit', as: :dock_edit
  patch '/profile/docks/#{dock.id}', to: 'docks#update'
  delete '/profile/docks/#{@dock.id}/delete', to: 'docks#destroy', as: :dock_delete

  get '/profile/boats/:boat_id/docks/:dock_id/rentals/new', to: 'rentals#new', as: :rentals
  post '/profile/boats/:boat_id/docks/:dock_id/rentals', to: 'rentals#create'

  get '/profile/boats/new', to: 'boats#new'
  post '/profile/boats/', to: 'boats#create', as: :boats
  get '/profile/boats/#{@boat.id}/edit', to: 'boats#edit', as: :boat_edit
  patch '/profile/boats/#{@boat.id}', to: 'boats#update', as: :boat_update
  delete '/profile/boats/#{@boat.id}/delete', to: 'boats#destroy', as: :boat_delete

end
