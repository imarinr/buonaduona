Rails.application.routes.draw do
  # store controller
  root 'store#index'
  get '/cart', to: 'store#cart'
  post '/cart', to: 'store#add_to_cart'

  # product routes
  resources :products
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
