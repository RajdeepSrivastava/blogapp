Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "blogapps#index"
  get "/blogapps/new", to: "blogapps#new"
  get "blogapps/:id", to: "blogapps#view"
end