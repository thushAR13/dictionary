Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/words' => 'words#index'
  get '/words/:search' => 'words#search'
  root 'words#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
