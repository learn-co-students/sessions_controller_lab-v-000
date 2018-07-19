class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] == '' || params[:name].nil?
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    binding.pry
    session.delete :name
    redirect_to sessions_new_path
  end
end
