module ApplicationHelper
  def logged_in?
    session.key?(:name)
  end
end
