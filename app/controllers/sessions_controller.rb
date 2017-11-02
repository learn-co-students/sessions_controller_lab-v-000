class SessionsController < ApplicationController
  def index
    render :hello
  end

  def hello
  end

  def new
  end

  def create
		if !params[:name].blank?
			session[:name] = params[:name]
			redirect_to '/'
		else
			redirect_to '/sessions/new'
		end
end

  def destroy
    if session[:name]
      session.delete :name
      redirect_to '/sessions/new'
    end
  end
end
