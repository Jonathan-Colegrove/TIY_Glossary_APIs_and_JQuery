class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate!, only: [:edit, :update, :destroy]

  # Assign the current user
  def current_user=(user)
    session[:user_id] = user.id
    # @current_user ||= User.find_by(id: session[:user_id])
  end

  # Returns the current use if logged in
  def current_user
    # @current_user ||= User.find(session[:user_id]) if session[:user_id]
    @current_user ||= User.find_by(id: session[:user_id])
  end
  helper_method :current_user
 #  def current_user
 #   if session[:user_id]
 #     @current_user ||= User.find(session[:user_id]) if session[:user_id]
 #     if session[:expires_at] && session[:expires_at] < Time.now
 #       session[:expires_at] = 1.hour.from_now
 #     end
 #   end
 # end

  # Returns a boolean representing if the user is logged in
  def logged_in?
    !!current_user
  end
  helper_method :logged_in?

  # Method to use in a filter to ensure the user is logged in
  def authenticate!
    redirect_to login_path unless logged_in?
  end
end
