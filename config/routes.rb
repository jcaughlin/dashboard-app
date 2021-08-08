# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  root to: "main#index" 

  get "sign_in", to: "main#new"
  post "sign_in", to: "main#create"
  delete "logout", to: "main#destroy"

  get "dashboard", to: "dashboard#main"

  get "benefits", to: "benefits#index"
end
