module ApplicationHelper
  def hi?
    if !session[:name].nil? && !session[:name].empty?
       "Hi, #{session[:name]}."
    else
      redirect_to '/login'
    end
  end
end
