class ApplicationController < ActionController::Base

def hello
  session[:name] = params[:name]
  @user = params[:name]
end

end