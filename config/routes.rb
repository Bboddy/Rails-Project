Rails.application.routes.draw do
  resources :ordered_items
  root 'static_public#landing_page'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
  resources :categories do
    resources :products
  end

  resources :order
  resources :cart
end