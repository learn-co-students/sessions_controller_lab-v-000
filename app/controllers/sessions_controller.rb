class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] && params[:name].present?
      session[:name] = params[:name]
      redirect_to root_url
    else
      redirect_to sessions_new_path
    end
  end

  def destroy
    session.delete :name
    render :'application/hello'
  end

end
