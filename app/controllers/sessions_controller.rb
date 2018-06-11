class SessionsController < ApplicationController
  def new
  end

  def create
    #
      # session[:name] = params[:name]
    if params[:name].nil? || params[:name] == ""
        
      redirect_to login_path
    else
      # binding.pry
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy

    session.destroy
    redirect_to login_path
  end

end
