class SessionsController < ApplicationController



  def new
  end

  def create
    session[:name] = params[:name]
    if !params[:name] || params[:name] == ''
      redirect_to '/sessions/new'
    else
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

end
