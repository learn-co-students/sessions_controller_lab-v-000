module ApplicationHelper
  
  def logged_in
    session.include?(:name)
  end

end
