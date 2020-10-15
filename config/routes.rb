Rails.application.routes.draw do
  
  
  
  resources :vacations do 
    resources :visits
  end 
  resources :users
  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'
  match '/logout', to: 'session#destroy', via: 'delete'
  root 'static#home'
  match 'auth/github/callback', to: 'session#create', via: [:get, :post]
  #sequence/sequence id /postures => vacation/vacation id / location or would it be => user / user id / location
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
