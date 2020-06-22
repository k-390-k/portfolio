Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  resources :users
  resources :sounds
end
