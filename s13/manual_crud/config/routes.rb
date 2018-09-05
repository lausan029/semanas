Rails.application.routes.draw do
	get 'posts', to:'posts#index' #rutas con metodos rest
	get 'posts/new'
	post 'posts', to:'posts#create'
	get 'posts/:id', to:'posts#show', as: 'post'
  get 'posts/:id/edit', to: 'posts#edit'
  patch 'posts/:id', to: 'posts#update'
 	delete 'posts/:id', to: 'posts#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #resources :posts , only: [:index]
end
