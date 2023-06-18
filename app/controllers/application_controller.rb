class ApplicationController < ActionController::Base
  before_action :require_login

  private

  def require_login
    redirect_to login_path, flash: { error: 'You must be logged in to access this page.' } unless logged_in?
  end

  def logged_in?
    session[:user_id].present?
  end
end