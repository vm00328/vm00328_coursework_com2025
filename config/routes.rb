Rails.application.routes.draw do
  resources :cords
  resources :racquets
  resources :clothings
  #routes for devise gem
  devise_for :users

  #maps home to Root
  root 'home#home'

  get 'home', to: 'home#home'

  #routes for mailer and contact page
  get 'contact', to: 'home#contact'
  post 'request_contact', to: 'home#request_contact'
  
  resources :racquets, only: [:index, :new, :create, :show, :edit, :destroy]
  resources :clothings, only: [:index, :new, :create, :show, :edit, :destroy]
end
