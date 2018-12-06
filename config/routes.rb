Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  # resources :photo_equipment_bookings
  # resources :photo_equipments
  resources :photographers, only: :show
  resources :studios do
    resources :rooms, only: :show do
      resources :bookings, only: [:index, :new, :create]
    end
  end

  resources :bookings, only: [:show, :edit, :update, :destroy]
end
