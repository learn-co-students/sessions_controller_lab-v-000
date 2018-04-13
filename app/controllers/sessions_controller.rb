class SessionsController < ApplicationController
  helper_method :logged_in?, :current_user

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    render 'application/hello'
  end

end
