Rails.application.routes.draw do
  get 'item/show'

  devise_for :users, controllers: { sessions: 'users/sessions' }
  root 'store#index', as: 'store'
  resources :item
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
