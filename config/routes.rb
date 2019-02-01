Rails.application.routes.draw do
  get 'sessions/new'

  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create', as: "login_create"
  post '/logout' => 'sessions#destroy'

  
end
