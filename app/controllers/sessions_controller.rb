class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def new
    render 'login'
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end

end
