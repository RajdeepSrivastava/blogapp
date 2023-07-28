Rails.application.routes.draw do
  root "users#index"
  get '/users/new', to: "users#new"
  get '/users/login', to: "users#login"
  post "/users/create", to: "users#create"
  post '/users/logincheck', to: 'users#logincheck'
  get '/users/forgot_password', to: 'users#forgot_password'
  
  # post 'users/create' to: "users#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/blogapps", to: "blogapps#index" 
  get "/blogapps/new", to: "blogapps#new"
  get "/blogapps/:id", to: "blogapps#view"
  post "/blogapps/create", to: "blogapps#create"
  get "/blogapps/delete/:id", to: "blogapps#delete"
end