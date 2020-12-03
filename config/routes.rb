Rails.application.routes.draw do
  resources :carts
  resources :racquets
  resources :clothings
  #Resource paths
  devise_for :users

  #The root is the home page
  root 'home#home'

  #The tennis racquets page
  get 'racquets', to: 'racquets#index'

  #The clothing page
  get 'clothing', to: 'clothings#index'

  #The tennis shoes page
  get 'shoes', to: 'home#index'

  #The accessories page
  get 'accessories', to: 'accessories#index'
  get 'home', to: 'home#home'

  #The contact page
  get 'contact', to: 'home#contact'
  post 'request_contact', to: 'home#request_contact'
end
