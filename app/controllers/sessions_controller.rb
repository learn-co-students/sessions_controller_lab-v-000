class SessionsController < ApplicationController
  def new
  end

  def create
    # if params[:name]
    #   session[:name] = params[:name]
    #   redirect_to '/'
    # elsif params[:name] == ""
    #   redirect_to '/sessions/new'
    # else
    #   redirect_to '/sessions/new'
    # end
    if params[:name].nil? || params[:name] == ""
      redirect_to "/sessions/new"
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
  end
end
