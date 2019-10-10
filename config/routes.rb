Rails.application.routes.draw do
  get 'sessions/new' 
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  get 'sessions/create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
end
