module ApplicationHelper

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
	

  def logged_in?
    current_user
  end

  def check_login
    redirect_to log_in_url, alert: "You need to log in to view this page." if current_user.nil?
  end

end
