class ApplicationController < ActionController::Base

helper_method :current_user, :logged_in?
def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
end
 
def logged_in?
  !!current_user
end
 
def require_user
  if !logged_in?
    flash[:alert] = "You must be logged in to perform that action!!"
    redirect_to login_path
  end
end

helper_method :current_admin, :admlogged_in?
def current_admin
  @current_admin ||=Admin.find(session[:admin_id]) if session[:admin_id]
end
def admlogged_in?
  !!current_admin
end
def require_admin
  if !admlogged_in
    flash[:alert] = "You must be logged in to perform that action!!"
    redirect_to admin_login_path
  end
end

	
end
