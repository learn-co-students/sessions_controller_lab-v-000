class SessionsController < ApplicationController

   def new
   end

   def create
     session[:name] = params[:name]
     session[:name].nil? || session[:name] == ''  ? (redirect_to '/login') : (redirect_to '/')
   end

   def destroy
     session.delete :name
     redirect_to '/'
   end

 end
