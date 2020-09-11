Rails.application.routes.draw do
  
  devise_for :users
  root 'items#index'

  resources :items
  get 'items/:id/exchanges/new'  => "exchanges#new"
  post 'items/:id/exchanges/create' => "exchanges#create"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
