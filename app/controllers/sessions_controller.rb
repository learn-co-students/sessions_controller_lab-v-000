class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session.delete :name
  end
end

# Prefix Verb URI Pattern             Controller#Action
# sessions_new GET  /sessions/new(.:format) sessions#new
#         root GET  /                       application#hello
#        login GET  /login(.:format)        sessions#new
#              POST /login(.:format)        sessions#create
#       logout POST /logout(.:format)       sessions#destroy