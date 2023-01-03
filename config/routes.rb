Rails.application.routes.draw do
  devise_for :users

  root "splash#index"
  get 'splash/index'
  get 'transaction/index/:id', to: 'transaction#index', as: 'transaction_index_path'
  post 'transaction/create'
  get 'transaction/new/:id', to: 'transaction#new', as: 'transaction_new_path'
  get 'catagory/index'
  get 'catagory/new'
  post 'catagory/create'
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")

end
