Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  resources :fires, only: %i[index]
  resources :campaigns, only: %i[index show]
  resources :supplies, only: %i[index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
end
