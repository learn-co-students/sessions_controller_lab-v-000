class SessionsController < ApplicationController

  def index
  end

  def new
    redirect_to '/login'
  end

  def create
    if
      params[:name].nil? || params[:name].empty?
      redirect_to sessions_new_path
      else
        session[:name] = params[:name]
        redirect_to '/'
      end
    end
    #if :name is nil or empty --> login page
    #set session if theres namen

  def destroy
    if
      session[:name] = nil
      redirect_to :root
    end
  end

end
