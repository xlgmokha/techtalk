class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authenticate!
    unless current_user
      flash[:notice] = "please sign in"
      redirect_to('/auth/github')
    end
  end
end
