Rails.application.routes.draw do
  resources :users, only: [:create]
  resources :rooms, only: [:index, :show]
  resources :apartments, only: [:index, :show]
  get 'apartments/:id/summary', to: "apartments#summary"
  get 'apartments/:id/summary/:apartment_id', to: "apartments#summary"
  get 'apartments/:id/summary/:apartment_id/:user_id', to: "apartments#summary"
  # post "/login", to: "sessions#create"
  post "/login", to: "sessions#create"
  get "/me", to: "users#show"
  delete "/logout", to: "sessions#destroy"
  resources :agents, only: [:index]
end
