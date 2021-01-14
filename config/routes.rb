Rails.application.routes.draw do
  #
  get '/control' => 'users#control_panel'
  get '/restaurants/location-search' => 'restaurants#location_search'
  get 'users/new'
  get 'users/create'
  post 'user_token' => 'user_token#create'
  resources :restaurants
  resources :users
  get '/search' => 'restaurants#search'

  resources :menus
end
