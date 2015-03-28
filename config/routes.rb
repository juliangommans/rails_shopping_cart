Rails.application.routes.draw do

  devise_for :users
  root to: "products#index"
  get '/new' => 'products#new', as: 'new'
  get '/show/:id' => 'products#show', as: 'show_product'
  post '/product/add/:id' => 'products#add', as: 'add_product_to_cart'
  get '/cart' => 'orders#index', as: 'show_cart'
  post '/purchase' => 'orders#purchase', as: 'purchase_order'


end
