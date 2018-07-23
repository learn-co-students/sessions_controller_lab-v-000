class SessionsController < ApplicationController
  def new
  end

  def create
      if params.include?(:name) && params[:name] != ''
            session[:name] = params[:name]
            redirect_to '/'
      else
            redirect_to '/sessions/new'
      end
  end

  def destroy
      if session[:name] == nil
          redirect_to '/'
      else
          session.delete :name
        redirect_to '/'

      end
  end

end
