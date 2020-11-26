Rails.application.routes.draw do
  #Resource paths
  devise_for :users
  resources :players

  #The root is the home page
  root 'home#home'

  #The contact page
  get 'contact', to: 'home#contact'
  post 'request_contact', to: 'home#request_contact'

  #The players page
  get 'players', to: 'home#players'
  get 'home', to: 'home#home'
  get 'add_player', to: 'home#webform'
end
