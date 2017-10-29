class SessionsController < ApplicationController
  def new
    if !logged_in?
      render 'new'
    end
  end

  def create
    session[:name] = params[:name]
    # raise params.inspect
    if logged_in?
      redirect_to '/'
    else
      redirect_to '/sessions/new'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

  private

  def logged_in?
    !!session[:name] && !session[:name].blank? ? true : false
  end

end
