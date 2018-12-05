Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  resources :photo_equipment_bookings
  resources :bookings
  resources :photographers
  resources :photo_equipments
  resources :studios do
  resources :rooms
  end


end
