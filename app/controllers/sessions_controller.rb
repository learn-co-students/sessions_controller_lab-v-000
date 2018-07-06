class SessionsController < ActionController::Base
  def new
  end

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to(controller: 'sessions', action: 'new')
    end
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end
end
