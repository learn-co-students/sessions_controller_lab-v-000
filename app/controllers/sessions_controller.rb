class SessionsController < ApplicationController

  def new
  end

  def create

    if params[:name].blank?
      redirect_to login_path
    else
      if session[:name] == params[:name]
        redirect_to  '/' #root_path
      else
        session[:name] = params[:name]
        #render 'hello'
        redirect_to root_path
      end
    end
  end

  def destroy
    session[:name] = nil
    #render 'hello'
    redirect_to root_path
  end

end
