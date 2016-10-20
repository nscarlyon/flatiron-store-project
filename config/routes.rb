Rails.application.routes.draw do
  get 'reviews/index'

  get 'reviews/show'

  devise_for :users, :path=> '', controllers: { sessions: 'users/sessions', :registrations=>'users/registrations'}
  root 'store#index', as: 'store'
  resources :carts
  resources :line_items
  resources :orders
  post 'carts/:id', to: 'carts#checkout', as: 'checkout'

  resources :items do
    resources :reviews
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
