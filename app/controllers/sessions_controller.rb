class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to '/sessions/new'
      #could also write: redirect_to controller: 'sessions', action: 'new'
    else
      session[:name]=params[:name]
      redirect_to '/'
      #could also write: redirect_to controller: 'application', action: 'hello'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
   #could also write: redirect_to controller: 'application', action: 'hello'
  end
end
