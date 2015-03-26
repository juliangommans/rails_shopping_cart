Rails.application.routes.draw do

  devise_for :users
  root to: "products#index"
  get '/new' => 'products#new', as: 'new'

end
