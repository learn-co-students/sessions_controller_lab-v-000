class ApplicationController < ActionController::Base


  def current_user
    params[:name]
  end

  

end