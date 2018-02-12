Rails.application.routes.draw do
  root "registered_users#index"
  resources :registered_users
  resources :rented_places
  resources :images
end
