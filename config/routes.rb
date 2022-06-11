Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "yachts#index"

  resources :yachts, only: [:index, :show]
  resources :reservations, only: [:index]
end
