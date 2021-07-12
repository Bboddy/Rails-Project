Rails.application.routes.draw do
  devise_for :users
  root 'static_public#landing_page'
end
