Rails.application.routes.draw do
  
  
  
  resources :vacations do 
    resources :visits
  end 
  resources :users
  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  get '/logout', to: 'session#destroy'
  root 'static#home'
  get '/visits/has_been', to: 'visits#have_been'
  get 'visits/has_not_been', to: 'visits#have_not_been'
  match 'auth/github/callback', to: 'session#create', via: [:get, :post]
  #sequence/sequence id /postures => vacation/vacation id / location or would it be => user / user id / location
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
