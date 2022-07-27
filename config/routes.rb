Rails.application.routes.draw do
  root 'store#index'

  # store controller
  get '/store/:id', to: 'store#show', as: 'detail'

  # product routes
  resources :products
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
