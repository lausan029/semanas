Rails.application.routes.draw do
	get 'articles/new'
  #post 'articles/create' asi no sirve porque es rest
  post 'articles', to: 'articles#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
