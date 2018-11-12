rails new carrocompras -d postgresql
rake db:create

Instalando devise

gem 'devise', git: 'https://github.com/plataformatec/devise.git'
• bundle
• rails g devise:install
• rails g devise user
rake db:migrate


Crear el modelo del producto
rails g model product name:string photo:string price:integer
rake db:migrate
rails g controller products index

Manteniendo las rutas rest
  #get 'products/index'
  resources :products
  root to: 'products#index'

Faker y seed

gem 'faker'
bundle

Product.destroy_all
12.times do |i|
 Product.create(
 name: Faker::Commerce.product_name,
 price: Faker::Commerce.price.to_i,
 photo: "http://lorempixel.com/400/200/technics/#{i + 1}/"
 )
end

rake db:seed

Crear el modelo order
rails g model order payed:boolean user:references product:references
modificar la migracion  t.boolean :payed, default: false
rake db:migrate

Crear las relaciones 
	user 
		  has_many :orders
 			has_many :products, through: :orders

 	products
			has_many :orders
 			has_many :users, through: :orders
 
 Probando las relaciones
2.4.1 :002 > Product.first.users
=> #<ActiveRecord::Associations::CollectionProxy []>
2.4.1 :006 > User.new
=> #<User id: nil, email: "", created_at: nil, updated_at: nil>
2.4.1 :007 > User.new.orders
=> #<ActiveRecord::Associations::CollectionProxy []>
2.4.1 :008 > User.new.products
 => #<ActiveRecord::Associations::CollectionProxy []>



Anidando rutas
  resources :products do
  	resources :orders, only: :create
  end

modificamos index
<%= link_to "Comprar", product_orders_path(product), class: 'btn btn-success', method: :post 

Creamos el nuevo controlador de orders

rails g controller orders create
class OrdersController < ApplicationController
	before_action :authenticate_user!
  def create
  	@product = Product.find(params[:product_id])
  	@order = Order.new(product: @product, user: current_user)
  	if @order.save
  		redirect_to products_path, notice: "Orden creada"
  	else
  		redirect_to products_path, notice: "Orden NO creada"
  	end
  end
end


agregamos las alertas al layaout
    <% if notice.present? %>
      <div class="alert alert-success" role="alert">
        <%= notice %>
      </div>
    <% end %>

    <% if alert.present? %>
      <div class="alert alert-danger" role="alert">
        <%= alert %>
      </div>
    <% end %>

add la nueva rutas
resources :orders, only: :index