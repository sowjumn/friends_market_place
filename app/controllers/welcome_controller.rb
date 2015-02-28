class WelcomeController < ApplicationController
  def index
    @listings = Listing.includes(:user).all
  end

  def howitworks
  end
end