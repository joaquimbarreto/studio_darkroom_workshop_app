Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  resources :photo_equipment_bookings

  resources :photographers
  resources :photo_equipments
  resources :studios do
    resources :rooms do
      resources :bookings
    end
  end
end
