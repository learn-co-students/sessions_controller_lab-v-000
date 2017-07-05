class SessionsController < ApplicationController
  def new #login page '/login'
  end

  def create
    if params[:name].nil? || params[:name] == ""
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/' #application root -> which is set to application/hello.html.erb
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end
end
