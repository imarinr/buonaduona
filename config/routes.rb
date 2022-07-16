Rails.application.routes.draw do
  # store controller
  root 'store#index'
  get '/cart', to: 'store#cart'
  post '/cart', to: 'store#add_to_cart'

  # product routes
  get 'products/index', to: 'products#index', as: 'index_products' # HTML que muestra los productos
  get 'products/:id/edit', to: 'products#edit', as: 'edit_product' # HTML para editar un producto
  get 'products/new', to: 'products#new', as: 'new_product' # HTML para nuevo producto
  get 'products/:id', to: 'products#show', as: 'show_product' # parece necesario

  post 'products/', to: 'products#create', as: 'products'
  patch 'products', to: 'products#update', as: 'product'
  delete 'products/:id', to: 'products#destroy'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
