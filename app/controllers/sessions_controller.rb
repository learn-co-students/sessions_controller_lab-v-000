class SessionsController < ActionController::Base
  def new
  end

  def create
    if params[:name].nil? || params[:name] == ""
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
      session.delete :name unless session[:name].nil?
      redirect_to root_path
  end

end
