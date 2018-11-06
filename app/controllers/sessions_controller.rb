class SessionsController < ApplicationController
  def new
    render :new
  end
   def create
     if params[:name].nil? || params[:name].empty?
     redirect_to sessions_new_path
    else
     session[:name] = params[:name]
     redirect_to '/'
   end
  end
   def destroy
    if session[:name]
      session.delete :name
      redirect_to '/login'
    else
      session[:name] = nil
      redirect_to '/login'
    end
  end
end
