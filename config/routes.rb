Tryit::Application.routes.draw do

  get '/garages/:id/accessors', to: 'accessors#belongs_to_garage', defaults: {format: :json}

  resources :accessors, :defaults => {format: :json}

  resources :friends, :defaults => {format: :json}

  resources :garages, :defaults => {format: :json}

  root to: 'application#index'
end
