class SessionsController < ApplicationController
  def new
  	end

  	def create
  		if  params[:name].present? && params[:name] != ""
  		  session[:name] = params[:name]
  		  redirect_to root_path
  		else
        redirect_to '/sessions/new'
  		end
  	end

  	def destroy
  		if session[:name].present?
  		    session.delete :name
  		end
  		  redirect_to login_path
  	end
  end
