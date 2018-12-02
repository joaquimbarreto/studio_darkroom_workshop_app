Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  resources :bookings
  resources :photographers
  resources :studios
  resources :rooms
  resources :photo_equipments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
