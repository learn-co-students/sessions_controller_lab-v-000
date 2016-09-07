class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] && name_legit? 
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to :controller => 'sessions', :action => :new
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end
end
