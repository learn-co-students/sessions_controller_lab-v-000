class ApplicationController < ActionController::Base

  def hello
    redirect_to :controller => 'sessions', :action => :new unless session[:name] 
  end

  def name_legit?
    !params[:name].empty? && !params[:name].nil? 
  end

end