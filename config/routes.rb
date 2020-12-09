Rails.application.routes.draw do
  # All RESTful routes for cords.
  resources :cords
  # All RESTful routes for racquets.
  resources :racquets
  # All RESTful routes for clothings.
  resources :clothings
  #routes for devise gem
  devise_for :users

  #Home is the root of the site
  root 'home#home'
  get 'home', to: 'home#home'

  get 'contact', to: 'home#contact'
  post 'request_contact', to: 'home#request_contact'

  resources :racquets, only: [:index, :new, :create, :show, :edit, :destroy]
  resources :clothings, only: [:index, :new, :create, :show, :edit, :destroy]
end
