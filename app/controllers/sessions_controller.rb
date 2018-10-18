class SessionsController < ApplicationController
  
  def new
  end

  def create
      if params[:name].nil? || params[:name].empty?
        redirect_to sessions_new_path
       else
        # put there name in a session hash
        session[:name] = params[:name]
        redirect_to root_path
      end 
  end

   def destroy
    session.delete :name
    redirect_to logout_path	
   end

end
