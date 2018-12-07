Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  resources :photo_equipment_bookings
  resources :photo_equipments
  resources :photographers, only: :show
  resources :studios, only: :show do
    resources :rooms, only: :show do
      resources :bookings, only: [:index, :new, :create]
    end
  end

  resources :bookings, only: [:show, :edit, :update, :destroy]

  # sessions management
  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create', as: 'sessions'
  post '/logout', to: 'sessions#destroy', as: 'logout'
end
