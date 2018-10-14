class SessionsController < ApplicationController
    def new
    end

    def create
      if !params[:name].present?
        redirect_to login_path
      else
        session[:name] = params[:name]
        puts "Hi, #{params[:name]}."
        redirect_to root_path
      end
    end

    def destroy
      if session[:name]
        session.delete :name
      else
        session[:name] = nil
      end
    end
end
