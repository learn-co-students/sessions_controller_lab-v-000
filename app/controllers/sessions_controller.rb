class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name].present?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    if session[:name].present?
      session.delete :name
    end
    redirect_to login_path
  end
end

# Prefix Verb URI Pattern       Controller#Action
#   root GET  /                 application#hello
#  login GET  /login(.:format)  sessions#new
#        POST /login(.:format)  sessions#create
# logout POST /logout(.:format) sessions#destroy
