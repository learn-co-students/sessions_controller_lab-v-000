class SessionsController < ApplicationController
 
  def new
  end

  def create
   if params[:name].nil? || params[:name].empty?
     redirect_to 'http://test.host/sessions/new'
   else
     session[:name] = params[:name]
     redirect_to '/'
   end
  end

  def destroy
    session.delete :name
  end
end
