Rails.application.routes.draw do
  get 'cart/show'

  get 'item/show'

  devise_for :users
  root 'store#index', as: 'store'
  resources :item
  resources :carts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
