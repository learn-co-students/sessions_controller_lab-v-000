class SessionsController < ApplicationController

  def new
  end

  def create
    # if provided login name and name is not " "
    if params[:name] && !params[:name].nil? 
      session[:name] = params[:name]

      redirect_to '/'
    else
      # else they need to enter/reenter login name
      redirect_to '/login'
    end
  end

  def destroy
    if !session[:name].nil?
      session.delete :name

      redirect_to '/'
    else

      redirect_to '/login'
    end
  end

end
