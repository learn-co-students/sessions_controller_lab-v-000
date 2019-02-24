require 'pry'

class SessionsController < ApplicationController

  def new
  end

  def create
  #  binding.pry
  #  if sets_session_name
  if session[:name] = params[:name]
    @name = session[:name]

      redirect_to '/'
    else
      redirect_to '/sessions/new'
    end
  end

  def destroy
    session.delete :username
    session.delete :name
  end

end
