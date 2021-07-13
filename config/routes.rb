Rails.application.routes.draw do
  resources :items
  resources :orders
  resources :categories
  resources :products
  resources :carts
  devise_for :users, controllers: {omniauth_callbacks: "users/omniauth_callbacks"}

  root 'static_public#landing_page'
end
