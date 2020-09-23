Rails.application.routes.draw do
  resources :floors, only: [:index, :show]
  resources :contracts
  resources :rooms
  resources :users
  root "users#index"
end
