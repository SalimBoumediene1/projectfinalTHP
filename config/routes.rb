Rails.application.routes.draw do
  get 'items/index'
  root 'items#index' 
  resources :items
  resources :carts
  resources :cart_items
  resources :places
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
