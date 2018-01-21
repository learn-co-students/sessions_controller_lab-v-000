class SessionsController < ApplicationController
  def new
    if session[:name]
      redirect_to '/'
    end
  end

  def create
    if session[:name]
      redirect_to '/'
    else
      if params[:name]
        if params[:name].empty?
          redirect_to login_path
        else
          session[:name] = params[:name]
          redirect_to '/'
        end
      else
        redirect_to login_path
      end
    end
  end

  def destroy
    if session[:name]
      session.delete :name
      redirect_to login_path
    else
      redirect_to login_path
    end
  end
end
