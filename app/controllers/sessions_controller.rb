class SessionsController < ApplicationController
  before_action :login_required, only: [:destroy]

  def new
  end

  def create
    if params[:name].present?
      set_current_user params[:name]
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end

  private

    def log_out
      session.delete :name
    end

end
