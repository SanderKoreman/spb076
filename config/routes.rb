Rails.application.routes.draw do
  resources :contacts, only: [:new, :create]
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'main#index'
end
