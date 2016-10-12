Rails.application.routes.draw do
  devise_for :users
  root 'store#index', as: 'store'
  resources :items
  resources :carts
  resources :line_items
  resources :orders
  post 'carts/:id', to: 'carts#checkout', as: 'checkout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
