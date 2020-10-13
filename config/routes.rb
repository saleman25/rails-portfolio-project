Rails.application.routes.draw do
  resources :locations
  resources :vacations
  resources :users
  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/session/', to: 'session#destroy'
  root 'static#home'
  #sequence/sequence id /postures => vacation/vacation id / location or would it be => user / user id / location
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
