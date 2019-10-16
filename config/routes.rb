Rails.application.routes.draw do

  # https://github.com/learn-co-students/sessions_controller_lab-v-000/pull/1053/files
  # new code start
  get 'sessions/new'
  
  # get '/login', to: 'sessions#new'
  # post '/login', to: 'sessions#create'
  # get 'sessions/create'
  # new code end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
end
