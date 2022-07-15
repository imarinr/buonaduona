Rails.application.routes.draw do
  # store controller
  root 'store#index'
  get '/cart', to: 'store#cart'
  post '/cart', to: 'store#add_to_cart'

  # products controller
  get '/products/new', to: "products#new" # HTML formulario de creacion
  post '/products', to: "products#create" # orden de crear nuevo producto
  get '/products', to: "products#index" # HTML mostrar todos los productos
  get '/products/:id/edit', to: "products#edit" # HTML formulario de edicion
  patch '/products/', to: "products#update" # orden de actualizar un producto
  delete 'products/:id', to: 'products#delete' # orden de eliminar un producto
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
