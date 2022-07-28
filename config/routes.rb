Rails.application.routes.draw do
  devise_scope :user do
    get 'users', to: 'devise/sessions#new'
  end

  devise_for :users

  root 'store#index'

  # store controller
  get '/store/:id', to: 'store#show', as: 'detail'
  get 'under_construction', to: 'store#under_construction', as: "not_implemented"


  # product routes
  resources :products
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
