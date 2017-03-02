require 'pry'

class SessionsController < ApplicationController

    def create
        if params[:name] && !params[:name].empty?
            session[:name] = params[:name]
            redirect_to root_path
        else
            redirect_to login_path
        end
    end

    def new
    end

    def destroy
        session[:name] = nil if session[:name]
        redirect_to login_path
    end

end