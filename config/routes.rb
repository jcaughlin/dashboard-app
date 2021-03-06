# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  root to: "main#index" 

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  get "/add/:id", to: "dashboard#add", as: :add_app
  get "delete/:id", to: "dashboard#delete", as: :delete_app 
  get "/dashboard/:id", to: "dashboard#index", as: :dashboard
  patch "/dashboard/:id/sort", to: "dashboard#sort"

  get "benefits", to: "benefits#index"
end
