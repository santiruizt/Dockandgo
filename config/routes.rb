Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'site#home'
  post '/harbors/', to: 'docks#index', as: :harbor_boats

  # resources :users, only: [:show] do
  #   resources :docks, only: [:new, :create, :edit, :update, :destroy, :show]
  #   resources :boats, only: [:new, :create, :edit, :update, :destroy]
  # end



  get '/profile', to:'users#profile', as: :profile

  get '/users/index', to:'users#index'

  post '/harbors', to: 'site#show', as: :harbors
  get '/docks', to: 'docks#index'

  get '/profile/docks/new', to: 'docks#new'
  post '/profile/docks/', to: 'docks#create', as: :docks_create
  get '/profile/docks/:id/edit', to: 'docks#edit', as: :dock_edit
  patch '/profile/docks/:id', to: 'docks#update'
  delete '/profile/docks/:id/delete', to: 'docks#destroy', as: :dock_delete
  get '/profile/docks/:id/info', to: 'docks#show', as: :dock_info

  get '/profile/boats/:boat_id/docks/:dock_id/rentals/new', to: 'rentals#new', as: :rentals
  post '/profile/boats/:boat_id/docks/:dock_id/rentals', to: 'rentals#create', as: :rentals_create
  get '/profile/boats/:boat_id/docks/:dock_id/rentals/', to: 'rentals#show', as: :rental_info
  get '/profile/boats/:boat_id/docks/:dock_id/rentals/:id/edit', to: 'rentals#edit', as: :rental_edit
  patch '/profile/boats/:boat_id/docks/:dock_id/rentals/:id', to: 'rentals#update'

  get '/profile/boats/:boat_id/docks/:dock_id/rentals/:id/availability',to: 'rentals#availability', as: :availability_rentals
  put '/profile/boats/:boat_id/docks/:dock_id/rentals/:id/availability',to: 'rentals#availability'


  get '/profile/boats/new', to: 'boats#new'
  post '/profile/boats/', to: 'boats#create', as: :boats
  get '/profile/boats/:id/edit', to: 'boats#edit', as: :boat_edit
  patch '/profile/boats/:id', to: 'boats#update', as: :boat_update
  delete '/profile/boats/:id/delete', to: 'boats#destroy', as: :boat_delete

end
