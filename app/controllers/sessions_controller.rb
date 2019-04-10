require 'pry'
class SessionsController < ApplicationController
  def create
    if params[:name] == nil || params[:name].empty?
      redirect_to '/login'
      return
    else
  session[:name] = params[:name]
  end
  redirect_to '/'
end

  def new

  end

  def destroy
    session.delete :name
  end

end
