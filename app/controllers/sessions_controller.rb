class SessionsController < ApplicationController
  def new
# byebug
  end

  def create
    log_in
    if logged_in?
      redirect_to root_path
    else
      redirect_to sessions_new_path
    end
    

  end

  def destroy
    session.delete(:name)
    redirect_to root_path

  end

end
