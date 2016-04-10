class SessionsController < ActionController::Base
  include SessionsHelper
  def new
  end

  def create

    if not_logged_in?
      redirect_to login_path
    else
      session[:name] = params[:name]
    redirect_to root_path
    end
        
  end

  def destroy
    session.delete :name if session[:name]
    redirect_to root_path
  end

end
#params[:name].nil? || params[:name] == ""