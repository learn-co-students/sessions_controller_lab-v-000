class SessionsController < ApplicationController
  def new
    # if session[:name] == [] || nil
    #   redirect_to '/sessions/new'
    # end
  end

  def create
    if session[:name] == [] || nil
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to "/"
    end
  end

  def destroy
    session.delete :name
  end
end
