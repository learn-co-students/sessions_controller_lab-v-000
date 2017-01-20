class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  skip_before_filter :verify_authenticity_token, :only => :create

    def new
    end

    def create
      if params[:name] == nil || params[:name] == ""
        redirect_to controller: 'sessions', action: 'new'
      else
        session[:name] = params[:name]
        redirect_to controller: 'application', action: 'hello'
      end
    end

    def show
    end

    def destroy
      if session != {}
        session.delete :name
      end
      redirect_to controller: 'sessions', action: 'new'
    end
end
