class SessionsController < ApplicationController

  def new
  end

  def create
    if log_in.nil? || log_in == ""
      redirect_to login_path
    else
      log_in
      redirect_to root_path
    end
  end

  def destroy
    if !!log_in
      session.delete :name
    end
    redirect_to login_path
  end
end
