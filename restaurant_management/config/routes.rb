Rails.application.routes.draw do
  root "pages#show", page: "home"
  get "/pages/:page" => "pages#show"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  resources :users, only: [:show, :new, :create]
end
