module SessionsHelper

  def not_logged_in?
    params[:name].nil? || params[:name] == ""
  end
end
