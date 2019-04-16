class SessionsController < ApplicationController

def new
end

def create
  username = params[:name]
  if username.nil? || username.empty?
    redirect_to login_path
  else
    session[:name] = params[:name]
    redirect_to root_path
  end
end


def destroy
  if session[:name]
    session.delete :name
  end
    redirect_to root_path
end


end
