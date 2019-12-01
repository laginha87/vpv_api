Rails.application.routes.draw do
  resource :fires, only: %i[index]
  resource :campaigns, only: %i[index show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
