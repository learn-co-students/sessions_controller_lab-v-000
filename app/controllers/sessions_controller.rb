class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]

  if params[:name] == nil || params[:name] == ""
    redirect_to sessions_new_path
  else
    redirect_to '/'
  end
end




  def destroy
    session.delete :name
  end

end
