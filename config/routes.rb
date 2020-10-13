Rails.application.routes.draw do
  resources :locations
  resources :vacations
  resources :users
  resources :session 
  root 'static#home'
  #sequence/sequence id /postures => vacation/vacation id / location or would it be => user / user id / location
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
