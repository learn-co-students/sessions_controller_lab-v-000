class StaticController < ApplicationController
  def index
    redirect_to login_path unless session[:name]
  end
end
