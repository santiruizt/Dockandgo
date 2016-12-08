Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'site#home'

  get '/profile', to:'users#profile'
  root to: 'users#profile'
  get '/profile/docks/new', to: 'docks#new'
  post '/profile/docks/', to: 'docks#create', as: :docks
  delete 'profile/docks/#{@dock.id}/delete', to: 'docks#destroy', as: :dock_delete

  get '/users/index', to:'users#index'

end
