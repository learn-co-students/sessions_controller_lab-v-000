class SessionsController < ApplicationController

  def new
  end

  def create
    if !session[:name].nil?
      redirect_to '/'
    else
      if params[:name].nil? || params[:name] == ""
        redirect_to controller: 'sessions', action: 'new'
      else
        name = params[:name]
        session[:name] = name
        redirect_to '/'
      end
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

end
