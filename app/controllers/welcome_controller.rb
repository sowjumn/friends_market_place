class WelcomeController < ApplicationController
  def index
    @listings = Listing.includes(:user).all
  end
end