Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  resources :photo_equipment_bookings

  resources :photographers
  resources :photo_equipments
  resources :studios do
    resources :rooms do
      resources :bookings, only: [:index, :new, :create]
    end
  end

  resources :bookings, only: [:show, :edit, :update, :destroy]

  # sessions management
  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create', as: 'sessions'
  post '/logout', to: 'sessions#destroy', as: 'logout'
end
