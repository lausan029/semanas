Rails.application.routes.draw do
  get 'order/create'
  #get 'products/index'
  resources :products do
  	resources :orders, only: :create
  end

  resources :orders, only: :index

  root to: 'products#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
