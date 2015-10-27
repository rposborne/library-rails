class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    User.first
  end

  def login_required!
    unless current_user
      set_message "You must login to view this page"
      redirect_to "/login"
    end
  end

end
