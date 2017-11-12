Rails.application.routes.draw do

  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  get '/logout', to: 'sessions#destory'

  root 'sessions#home'
  resources :clients
  resources :messages
end
