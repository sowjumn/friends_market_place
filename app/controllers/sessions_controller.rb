class SessionsController < ApplicationController
  def create
    puts "#$$$$$$$$$$$$$$$$$$$ #{env["omniauth.auth"]}"
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_url
  end

  private
    def facebook_params

    end
end