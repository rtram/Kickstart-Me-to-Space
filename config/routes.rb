Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :planets, only: [:index, :show]
  resources :donations, only: [:index, :new, :create]
  resources :sponsors
  resources :colonists

  get "/colonists_status/:id", to: "colonists#status"
  get "/colonists_thanks", to: "colonists#thanks"
  get "/sponsors_thanks", to: "sponsors#thanks"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  get "*path", to: "application#unspecified_path"
end
