class SessionsController < ActionController::Base

  def new
    binding.pry
  end

  def create
    if !params[:name] || (params[:name] && params[:name].empty?)

      redirect_to :login
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if session[:name]
      session.delete :name
    end
    redirect_to '/'
  end
end
