Rails.application.routes.draw do
  resources :players
  root 'home#home'
  get 'contact', to: 'home#contact'
  post 'request_contact', to: 'home#request_contact'
  get 'players', to: 'home#players'
  get 'home', to: 'home#home'
  get 'add_player', to: 'home#webform'
end
