Rails.application.routes.draw do
  get 'sessions/new'
  post 'sessions/new' => 'sessions#create'

  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  
end
