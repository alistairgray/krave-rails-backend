Rails.application.routes.draw do
  resources :restaurants
  get '/search' => 'restaurants#search'
end
