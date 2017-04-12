class SessionsController < ApplicationController
  def new
    redirect_to root_path if current_user
  end

  def create
    if params[:name].blank?
      redirect_to sessions_new_path if params[:name].blank?
    else
      session[:name] = params[:name] if params.include? :name
      @name = current_user
      redirect_to root_path
    end
  end

  def destroy
    logout
    redirect_to sessions_new_path
  end

private

  def logout
    if session.include? :name
      session.delete(:name) if !current_user.nil?
    end
  end
end
