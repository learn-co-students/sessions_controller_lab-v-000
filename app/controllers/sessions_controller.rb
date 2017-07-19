class SessionsController < ApplicationController
  def create
    if(session[:name] != nil)
      redirect_to root_path
    end
    name = session_params[:name]
    if name.nil? || name.empty?
      redirect_to login_path
    else
      session[:name] = name
      redirect_to root_path
    end
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end

  def new
    redirect_to root_path
  end

  def hello
    render inline: "hello #{session[:name].nil? ? "login" : session[:name]}"
  end

  private

  def session_params
    params.permit(:name)
  end
end
