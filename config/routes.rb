Rails.application.routes.draw do
  resources :flights
  resources :bookings

  get "up" => "rails/health#show", as: :rails_health_check

  root "flights#index"
end
