Rails.application.routes.draw do
  get 'catagory/index'
  get 'catagory/new'
  post 'catagory/create'
  devise_for :users
  root to: "catagory#index"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")

end
