class SessionsController < ApplicationController
  def new
    if !session[:name].blank?
      redirect_to root_path, alert: "You must be logged out to see that page."
    end
  end

  def create
    #raise params.inspect
    if !params[:name] || params[:name].blank?
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session.delete(:name)
    redirect_to root_path
  end
end
