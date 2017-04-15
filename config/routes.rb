Rails.application.routes.draw do

  post '/login' => 'auth#login'
  post '/logout' => 'auth#logout'

  resources :cards
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
