class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private
  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def store_location
    session[:return_to] = request.url if request.get?
  end


  def signed_in_user
    unless current_user
      store_location
      redirect_to root_url, notice: "Please sign in"
    end
  end

  helper_method :current_user, :signed_in_user
end
