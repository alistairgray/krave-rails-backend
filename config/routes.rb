Rails.application.routes.draw do

  get 'users/new'
  get 'users/create'
  post 'user_token' => 'user_token#create'
  resources :restaurants
  get '/search' => 'restaurants#search'

  resources :menus
end
