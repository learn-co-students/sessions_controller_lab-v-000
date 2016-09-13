class SessionsController < ApplicationController
  
  def new
  end

  def create
    if current_user.nil? || current_user == ""
      redirect_to login_path
    else
      current_user
      redirect_to root_path
    end
  end

  def destroy
    if !!current_user
      session.delete :name
    end
    redirect_to login_path
  end

end
