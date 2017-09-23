class SessionsController < ApplicationController

  def new
    if session[:name]
      redirect_to '/hello'
    end
  end

  def create
      if params[:name] && !params[:name].empty?
        session[:name] = params[:name]
        redirect_to '/hello'
      else
        redirect_to '/'
      end
  end

  def destroy
    if session[:name] != nil
      session.delete :name
    end
    redirect_to '/login'
  end

end
