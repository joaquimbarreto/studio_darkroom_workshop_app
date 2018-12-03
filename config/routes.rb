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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
