Rails.application.routes.draw do
  mount API::Base, at: "/"
  resources :cards
  resources :decks
  resources :games
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
