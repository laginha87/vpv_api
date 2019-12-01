Rails.application.routes.draw do
  resources :fires, only: %i[index]
  resources :campaigns, only: %i[index show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
