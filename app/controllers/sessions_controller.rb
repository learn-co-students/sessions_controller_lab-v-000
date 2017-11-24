class SessionsController < ApplicationController
  def new
  end

  def create
    if is_user?
     redirect_to '/'
   elsif params[:name] && !params[:name].empty?
     session[:name] = params[:name]
     redirect_to '/'
   else
     redirect_to login_path
   end

  end

  def destroy
   session.delete :name
 end

end
