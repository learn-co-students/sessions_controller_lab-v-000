Rails.application.routes.draw do
  resources :sessions, only: [:new, :create]

  root 'static_pages#welcome'

  # post 'sessions/login' => 'sessions#create'
  delete 'sessions/logout' => 'sessions#destroy'
end
