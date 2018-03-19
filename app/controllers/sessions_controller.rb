class SessionsController < ApplicationController
  def new
    
  end

  def create
    return redirect_to login_path unless params.key?(:name)
    return redirect_to login_path if params[:name].empty?
    session[:name] = params[:name]
    redirect_to root_path
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end
end