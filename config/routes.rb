Rails.application.routes.draw do
  resources :bookings
  resources :photographers
  resources :studios do
    resources :rooms
    resources :photo_equipments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
