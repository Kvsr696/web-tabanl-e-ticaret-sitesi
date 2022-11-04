Rails.application.routes.draw do
  resources :product_categories
  root 'home#index'
  resources :home
  resources :products
  devise_for :users
  resources :contacts
  resources :categories
  post "products/addToCart" => "products#addToCart"
  resources :carts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
