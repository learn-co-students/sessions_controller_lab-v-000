class SessionsController < ApplicationController
  def new
  end

  def create

      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if session[:name] != nil
      session.destory :name
    end
  end
end
