Rails.application.routes.draw do
  resources :photographers
  resources :studios
  resources :rooms
  resources :equipment
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
