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
<<<<<<< HEAD


=======
>>>>>>> 0702f6a35fe012b338f04c65840a1791bdbecf66
end
