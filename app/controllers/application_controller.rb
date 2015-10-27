class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :login_required
  helper_method :current_user

  def current_user
    User.find_by(id: session[:user_id])
  end

  def login_required
    unless current_user
      # set_message "You must login to view this page"
      redirect_to root_path
    end
  end

end
