Rails.application.routes.draw do
  get 'transaction/index/:id', to: 'transaction#index', as: 'transaction_index_path'
  post 'transaction/create'
  get 'transaction/new/:id', to: 'transaction#new', as: 'transaction_new_path'
  get 'catagory/index'
  get 'catagory/new'
  post 'catagory/create'
  devise_for :users
  root to: "catagory#index"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")

end
