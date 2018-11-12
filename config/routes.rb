Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :planets, only: [:index, :show]
  resources :sponsors
  resources :colonists, only: [:index, :show]
  resources :trips, only: [:index, :show]
  resources :donations, only: [:index, :show]
end
