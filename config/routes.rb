Rails.application.routes.draw do
  get 'application/new'

  get 'sessions/new'

  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

end
